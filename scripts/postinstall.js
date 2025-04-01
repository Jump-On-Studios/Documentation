const fs = require("fs");
const path = require("path");

// Find the node_modules directory
let currentDir = __dirname;
while (
  !fs.existsSync(path.join(currentDir, "node_modules")) &&
  currentDir !== path.parse(currentDir).root
) {
  currentDir = path.dirname(currentDir);
}

const nodeModulesDir = path.join(currentDir, "node_modules");

// Create a symlink from vitepress to vitepress-fix-include
const targetDir = path.join(nodeModulesDir, "vitepress");
const sourceDir = path.join(nodeModulesDir, "vitepress-fix-include");

// Check if vitepress already exists and is not a symlink
if (fs.existsSync(targetDir) && !fs.lstatSync(targetDir).isSymbolicLink()) {
  console.log("Vitepress is already installed, not creating symlink");
  process.exit(0);
}

try {
  // Remove existing symlink if it exists
  if (fs.existsSync(targetDir)) {
    fs.unlinkSync(targetDir);
  }

  // Create the symlink
  fs.symlinkSync(sourceDir, targetDir, "junction");
  console.log("Created symlink from vitepress to vitepress-fix-include");
} catch (error) {
  console.error("Failed to create symlink:", error);
  // Don't fail the installation if symlink creation fails
}
