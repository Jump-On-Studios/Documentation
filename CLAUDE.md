# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the documentation repository for Jump On Studios, containing a VitePress-based documentation site for their gaming scripts and developer resources. The documentation covers FiveM and RedM scripts, as well as the Jo Libs framework.

## Development Commands

### Documentation Development
```bash
npm run docs:dev          # Start VitePress dev server
npm run docs:build        # Build production documentation
npm run docs:preview      # Preview built documentation
```

### Post-installation
```bash
npm run postinstall       # Creates vitepress symlink (runs automatically)
```

## Architecture Overview

### VitePress Configuration
- **Main config**: `docs/.vitepress/config.mjs` - Contains complex dynamic sidebar generation
- **Theme**: Custom VitePress theme with PrimeVue components integration
- **Dynamic Menu Generation**: Auto-generates navigation from `docs/jo_libs/modules` file structure

### Key Components
- **Custom VitePress Components**: 
  - `docs/.vitepress/components/VPDocOutlineItem.vue`
  - `docs/.vitepress/components/VPSidebarItem.vue` 
  - Custom outline composable at `docs/.vitepress/composables/outline.ts`

### Documentation Structure
```
docs/
├── .vitepress/           # VitePress configuration and customization
├── FiveM/                # FiveM scripts documentation
├── RedM/                 # RedM scripts documentation  
├── jo_libs/              # Developer framework documentation
│   ├── modules/          # Auto-generated navigation from file structure
│   └── convars/          # Configuration variables docs
├── DeveloperResources/   # Hooks, actions, and filters documentation
└── public/               # Static assets
```

### Build System
- Uses custom postinstall script to create vitepress symlink for `vitepress-fix-include` package
- Automatic deployment to GitHub Pages via `.github/workflows/deploy.yml`
- Dynamic sidebar generation based on file structure in `docs/jo_libs/modules`

### Dependencies
- **Core**: VitePress for static site generation
- **UI**: PrimeVue components with PrimeIcons
- **Plugins**: 
  - `@red-asuka/vitepress-plugin-tabs` for tab functionality
  - `medium-zoom` for image zoom
  - `sass` for styling
- **Fix**: `vitepress-fix-include` package with symlink workaround

### Special Features
- **Dynamic Navigation**: `GenerateMenu()` function recursively builds sidebar from file structure
- **Custom Theme Integration**: PrimeVue components integrated into VitePress
- **Multi-platform Documentation**: Separate sections for FiveM and RedM gaming platforms
- **Developer Resources**: Comprehensive documentation for Jo Libs framework

### Git Workflow
- Main branch: `main`
- GitHub Pages deployment on push to main
- Current working branch: `jo_libs_update`

## File Patterns
- Markdown files use frontmatter for navigation control
- `.label` files control menu text display names
- `index.md` files become default links for directories
- File structure directly maps to navigation hierarchy in jo_libs section