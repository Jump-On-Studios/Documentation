// Publishes the raw Markdown source of every page next to its HTML version,
// so `https://docs.jumpon-studios.com/RedM/stable.md` returns plain Markdown.
// Useful for RAG pipelines and LLMs. Also generates `/llms.txt` (index) and
// `/llms-full.txt` (every page concatenated).

import fs from "node:fs";
import path from "node:path";
import { renderComponents } from "./markdownComponents.mjs";

const includesRE = /<!--\s*@include:\s*(.*?)(?:\s+options=(\{.*?\}))?\s*-->/g;
const regionRE = /(#[^\s{]+)/;
const rangeRE = /\{(\d*),(\d*)\}$/;
const regionMarkerRE = /^\s*<!--\s*#(?:end)?region\b.*?-->\s*$/gm;
const frontmatterRE = /^---\r?\n([\s\S]*?)\r?\n---\r?\n?/;

function findRegion(lines, name) {
  const start = lines.findIndex((l) =>
    new RegExp(`^\\s*<!--\\s*#region\\s+${name}\\s*-->`).test(l),
  );
  if (start === -1) return null;
  const end = lines.findIndex(
    (l, i) =>
      i > start &&
      new RegExp(`^\\s*<!--\\s*#endregion\\b\\s*(${name})?\\s*-->`).test(l),
  );
  return end === -1 ? null : { start: start + 1, end };
}

// Same resolution rules as VitePress `<!--@include: ...-->`
function resolveIncludes(src, file, srcDir, depth = 0) {
  if (depth > 10) return src;
  return src.replace(includesRE, (match, target) => {
    if (!target) return match;
    const range = target.match(rangeRE);
    const region = target.match(regionRE);
    if (region || range) {
      target = target.slice(
        0,
        -((region?.[0].length || 0) + (range?.[0].length || 0)),
      );
    }
    const includePath =
      target[0] === "@"
        ? path.join(srcDir, target.slice(target[1] === "/" ? 2 : 1))
        : path.join(path.dirname(file), target);
    let content;
    try {
      content = fs.readFileSync(includePath, "utf-8");
    } catch {
      return ""; // VitePress silently drops missing includes too
    }
    let lines = content.split(/\r?\n/);
    if (region) {
      const found = findRegion(lines, region[0].slice(1));
      lines = found ? lines.slice(found.start, found.end) : [];
    } else if (range) {
      const [, start, end] = range;
      lines = lines.slice(
        start ? Math.max(parseInt(start) - 1, 0) : 0,
        end ? parseInt(end) : undefined,
      );
    }
    content = lines.join("\n").replace(frontmatterRE, "");
    return resolveIncludes(content, includePath, srcDir, depth + 1);
  });
}

function pageTitle(frontmatter, body, fallback) {
  const fm = frontmatter.match(/^title:\s*["']?(.+?)["']?\s*$/m);
  if (fm) return fm[1];
  const h1 = body.match(/^#\s+(.+)$/m);
  if (h1) return h1[1].replace(/<[^>]+>/g, "").trim();
  return fallback;
}

// Route of the HTML page for a given source file (cleanUrls)
function pageUrl(page) {
  return "/" + page.replace(/(^|\/)index\.md$/, "$1").replace(/\.md$/, "");
}

export async function exportMarkdown(siteConfig) {
  const { srcDir, outDir, pages, site } = siteConfig;
  const hostname = (siteConfig.userConfig.sitemap?.hostname || "").replace(
    /\/$/,
    "",
  );
  const publicDir = path.join(srcDir, "public");

  const exportPage = async (page) => {
    const file = path.join(srcDir, page);
    const raw = fs.readFileSync(file, "utf-8");
    const frontmatter = raw.match(frontmatterRE)?.[1] || "";
    const url = pageUrl(page);
    const resolved = resolveIncludes(
      raw.replace(frontmatterRE, ""),
      file,
      srcDir,
    ).replace(regionMarkerRE, "");
    const body = (
      await renderComponents(resolved, {
        srcDir,
        publicDir,
        url: hostname + url,
      })
    )
      .replace(/\n{3,}/g, "\n\n")
      .trim();
    const title = pageTitle(frontmatter, body, url);
    const content = `${body}\n`;

    const targets = [page];
    // `/jo_libs/` -> also available as `/jo_libs.md`
    if (page.endsWith("/index.md")) {
      const alias = page.replace(/\/index\.md$/, ".md");
      if (!pages.includes(alias)) targets.push(alias);
    }
    for (const target of targets) {
      const out = path.join(outDir, target);
      fs.mkdirSync(path.dirname(out), { recursive: true });
      fs.writeFileSync(out, content);
    }

    return { url, mdUrl: "/" + targets[targets.length - 1], title, content };
  };

  const entries = await Promise.all([...pages].sort().map(exportPage));

  const header = `# ${site.title}\n\n> ${site.description}\n\n`;
  const index =
    header +
    "Every page of this documentation is available as Markdown by adding `.md` to its URL.\n\n## Pages\n\n" +
    entries.map((e) => `- [${e.title}](${hostname}${e.mdUrl})`).join("\n") +
    "\n";
  fs.writeFileSync(path.join(outDir, "llms.txt"), index);

  const full =
    header +
    entries
      .map((e) => `<!-- Source: ${hostname}${e.url} -->\n\n${e.content}`)
      .join("\n---\n\n");
  fs.writeFileSync(path.join(outDir, "llms-full.txt"), full);

  console.log(`✓ exported ${entries.length} pages as Markdown + llms.txt`);
}

// Adds <link rel="alternate" type="text/markdown"> so crawlers can find the .md
export function markdownAlternateHead(pageData) {
  if (pageData.isNotFound || !pageData.relativePath) return;
  pageData.frontmatter.head ??= [];
  pageData.frontmatter.head.push([
    "link",
    {
      rel: "alternate",
      type: "text/markdown",
      href: "/" + pageData.relativePath.replace(/\/index\.md$/, ".md"),
    },
  ]);
}
