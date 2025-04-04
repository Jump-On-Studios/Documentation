# Prompt Modules Overview

This document explains the differences between the two prompt modules provided by **jo_libs**: **Prompt Native** and **Prompt NUI**.

## Prompt Native

**Prompt Native** is a wrapper around the native prompt system that offers essential functionalities to create, display, and manage prompts in your game or application. It is ideal when you need:

- **Simple Integration:** A minimalistic approach with basic functions for prompt management.
- **Standard Prompt Operations:** Capabilities such as creating prompts, deleting them, checking prompt progress, and managing prompt groups with ease.

Prompt Native works well when you need basic prompt interactions without the need for extensive customization or advanced features.

## Prompt NUI

**Prompt NUI** is a more advanced module that leverages the NUI (Native UI) framework, offering enhanced functionality and greater flexibility. It is designed for modern applications where customization and optimization are critical. Prompt NUI provides several key advantages:

- **Access to All Keyboard Keys:**  
  Unlike Prompt Native, Prompt NUI grants access to the full range of keyboard keys—including special and function keys—making it suitable for complex control schemes.

- **Set the Prompts Order Inside a Group:**  
  With Prompt NUI, you can define the order of prompts within a group. This allows for a better-organized user interface where prompts appear exactly as needed.

- **Flexible Group Positioning:**  
  Groups can be placed almost anywhere on the screen, giving you full control over the layout of your prompt interface.

- **Multi-Language Support (e.g., Arabic):**  
  Prompt NUI is designed to support all languages, including those with complex character sets like Arabic. This ensures that your application can be fully localized for a global audience.

- **Better Optimization:**  
  The NUI-based approach is optimized for performance, offering smoother prompt handling and improved efficiency compared to the native implementation.

- **HTML Integration:**  
  You can enhance the appearance of your prompts by adding HTML to both group labels and prompt labels. This feature allows for rich formatting, inclusion of icons, and overall improved visual customization.
