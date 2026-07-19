---
outline: [2,3]
---

# The `config` Folder

The `config` folder is our new way to manage the configuration of our scripts. Instead of editing a single `config.lua` file, the configuration is split into multiple readable files, and you customize them without ever touching the original files.

This system replaces the [`overwriteConfig.lua`](/DeveloperResources/scripts-configuration/overwrite-config) and [`overwriteLang.lua`](/DeveloperResources/scripts-configuration/overwrite-lang) mechanism on newer scripts. If your script ships with a `config` folder, use this method.

## Why use the `config` folder?

### Main Advantages

#### 1. Simplifies Updates
When you directly modify a configuration file and a script update is available, you must:
- Backup your custom configuration
- Compare the old and new files line by line
- Manually transfer your modifications
- Risk forgetting certain parameters or introducing errors

With the `config` folder, your customizations live in a separate `custom` folder. During an update, simply backup this folder, replace the entire resource with the new version, and restore your backup.  
If new parameters are added to the default configuration during an update, they will automatically be available since your custom files are loaded **after** the default ones and only overwrite the specific files you've copied.

#### 2. Separation of Concerns
- **`_default.lock`**: Default configuration maintained by developers
- **`custom`**: Your specific customizations

This separation keeps your configuration clear and maintainable.

#### 3. Organized by Topic
Instead of one giant `config.lua`, the configuration is split into several files (global settings, prices, stores, language, etc.). You only copy and edit the file that contains the values you care about.

## Folder Structure

The `config` folder is already included in the script's root directory and looks like this:

```
config/
├── _default.lock/                  # Default files — DO NOT EDIT
│   ├── _init.lua
│   ├── global.lua
│   ├── prices.lua
│   ├── stores.lua
│   ├── lang.lua
│   └── ...
├── custom/                         # Your customizations go here
└── README.md
```

- **`_default.lock`**: Contains all the default configuration files. **Never edit these files.** They are overwritten on every update.
- **`custom`**: This folder starts empty. You paste here a copy of any file you want to edit.
- **`README.md`**: A short reminder of the steps below.

## How to use it?

To edit a configuration file:

1. Open the `config/_default.lock` folder and **copy** the file you want to edit (for example `global.lua`).
2. **Paste** it into the `config/custom` folder.
3. **Edit** the file in `config/custom` to your liking.
4. In your server console, run `/refresh` to detect the new file.
5. Run `/ensure jo_clothingstore` (replace with your resource name) to restart the resource.

:clap: **You're done!** Your customizations are applied and safe from future updates.

:::warning Copy the whole file
Unlike the old `overwriteConfig.lua` method where you copied only individual values, here you copy the **entire file** into the `custom` folder. The custom file is loaded after the default one and fully replaces it, so keep every value in the file — not just the ones you change.
:::

### Concrete Example

Imagine you want to enable debug mode and change the resell percentage. These values live in `global.lua`.

1. Copy `config/_default.lock/global.lua` into `config/custom/global.lua`.

2. Open `config/custom/global.lua`. It contains the full default configuration:

```lua
Config.debug = false                              --Enable debug mode for development and troubleshooting

Config.percentResell = 0.33                       --Resell price percentage of original price, set to 0 to disable reselling

Config.enablePrompt = true                        --Display interaction prompts near stores and wardrobes

-- ... rest of the file ...
```

3. Edit the values you want to change (keep everything else):

```lua
Config.debug = true                               -- Debug enabled on our dev server

Config.percentResell = 0.5                         -- Increased resell value for our economy

Config.enablePrompt = true

-- ... rest of the file ...
```

4. Run `/refresh` then `/ensure jo_clothingstore`.

## Loading Order

The `config` folder is loaded through the `fxmanifest.lua` using a wildcard:

```lua
-- Example fxmanifest.lua
shared_script {
    "@jo_libs/init.lua",
    "config/**.lua",          -- Loads every .lua file inside the config folder
    "shared/functions.lua",
}
```

The `config/**.lua` pattern loads the files in this order:

1. **`_default.lock/_init.lua`**: Creates the `Config` and `Lang` tables
2. **`_default.lock/*.lua`**: Loads all default values
3. **`custom/*.lua`**: Loads your copied files, overwriting the default ones

Because the `custom` folder is loaded last, any file you place there takes priority over its default counterpart.

## Best Practices

### Do

- Copy files from `_default.lock` into `custom` and edit them there
- Copy the **entire** file, not just the values you change
- Keep one custom file per topic (only copy the files you actually need to edit)
- Backup your `custom` folder during updates
- Comment your modifications to remember why you made them

```lua
-- Debug enabled while testing the new stores
Config.debug = true

-- Resell increased for our server economy
Config.percentResell = 0.5
```

### Don't

- Don't edit files inside `_default.lock` — they are overwritten on every update
- Don't copy only part of a file into `custom` — copy the whole file
- Don't rename the copied files — they must keep the same name as the default file to overwrite it

## Translating the Script

Language strings work the same way. To translate the script:

1. Copy `config/_default.lock/lang.lua` into `config/custom/lang.lua`.
2. Edit the strings to your language.
3. Run `/refresh` then `/ensure jo_clothingstore`.

```lua
-- config/custom/lang.lua
Lang.buy = "Acheter"
Lang.close = "Fermer"
Lang.clothesManager = "Gestionnaire de vêtements"
Lang.clothesManagerDescription = "Gérez vos vêtements"

-- ... rest of the file ...
```

:::tip Preserve placeholders and tags
Keep any placeholders (`%s`, `%d`, `%1`, `%2`), color codes (`~COLOR_GOLD~`), and HTML tags (`<br>`) exactly as they appear in the original strings. See the [translation tips](/DeveloperResources/scripts-configuration/overwrite-lang#translation-tips) for details.
:::

## Summary

The `config` folder system is a development best practice that:
- Simplifies script updates
- Protects your customizations and translations
- Keeps configuration organized by topic
- Separates your settings from the default configuration

:::tip Recommendation
**Always** copy files into the `custom` folder to make your changes. **Never** edit the files inside `_default.lock`.
:::
