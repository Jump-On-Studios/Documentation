---
outline: [2,3]
---

# overwriteConfig.lua

The `overwriteConfig.lua` file is a mechanism that allows you to customize your script configuration without directly modifying the original `config.lua` file.

## Why use overwriteConfig.lua?

### Main Advantages

#### 1. Simplifies Updates
When you directly modify the `config.lua` file and a script update is available, you must:
- Backup your custom configuration
- Compare the old and new `config.lua` file line by line
- Manually transfer your modifications
- Risk forgetting certain parameters or introducing errors

With `overwriteConfig.lua`, simply backup this file before updating, replace the entire resource with the new version, and restore your backup file.  
If new parameters are added to the `config.lua` file during an update, they will automatically be available since `overwriteConfig.lua` is loaded after and only overwrites the specific values you've customized.

#### 2. Separation of Concerns
- **config.lua**: Default configuration maintained by developers
- **overwriteConfig.lua**: Your specific customizations

This separation makes your configuration clearer and more maintainable.

#### 3. Preserves Your Settings
The `overwriteConfig.lua` file is included in all scripts and is specifically designed to store your custom settings. This file is meant to be edited, unlike `config.lua` which should remain untouched to preserve update compatibility.

## How to use it?

### File Location

The `overwriteConfig.lua` file is already included in the script's root directory. Simply open it and add your custom configuration values.

### Basic Structure

The file already contains a header explaining its purpose:

```lua
-------------
-- USE THIS FILE TO EDIT THE CONFIGURATION OF THE SCRIPT
-- CONFIG LOCATION : shared/config.lua
-- Copy ONLY values you want edit, NOT ALL the config file
-------------
Config = Config or {}

-- Customize only the values you want to modify
Config.MyParameter = "my_value"
Config.MaxPlayers = 32
```

### Concrete Example

Imagine that the `config.lua` file contains:

```lua
Config = {}

Config.Framework = "redemrp"
Config.Language = "en"
Config.MaxDistance = 10.0
Config.EnableNotifications = true
Config.NotificationDuration = 5000
```

If you only want to change the language and maximum distance, edit the `overwriteConfig.lua` file:

```lua
Config = Config or {}

-- Modify only the desired parameters
Config.Language = "fr"
Config.MaxDistance = 15.0

-- Other parameters (Framework, EnableNotifications, NotificationDuration)
-- keep their default values from config.lua
```

## Loading Order

Files are loaded in this order (generally defined in `fxmanifest.lua`):

1. **config.lua**: Loads all default values
2. **overwriteConfig.lua**: Overwrites only the values you redefine

```lua
-- Example fxmanifest.lua
shared_scripts {
    'config.lua',
    'overwriteConfig.lua'  -- Loaded last to overwrite values
}
```

## Best Practices

### Do

- Use the `overwriteConfig.lua` file for all your customizations
- Only redefine parameters you actually modify
- Comment your modifications to remember why you made them
- Backup your `overwriteConfig.lua` during updates

```lua
Config = Config or {}

-- Switch to French for our FR server
Config.Language = "fr"

-- Distance increased for better visibility in our game mode
Config.MaxDistance = 20.0
```

### Don't

- Don't modify `config.lua` directly
- Don't add new configuration keys in `overwriteConfig.lua` (unless the script supports it)
- Don't copy the entire `config.lua` into `overwriteConfig.lua`

## Complete Example

### config.lua (original file, do not modify)
```lua
Config = {}

Config.Framework = "redemrp"
Config.Language = "en"
Config.Currency = "dollar"

Config.Shops = {
    {
        name = "General Store",
        coords = vector3(100.0, 200.0, 300.0),
        blip = true
    }
}

Config.Prices = {
    apple = 1.0,
    bread = 2.0,
    water = 0.5
}
```

### overwriteConfig.lua (your customizations)
```lua
Config = Config or {}

-- Language configuration
Config.Language = "fr"

-- Price modifications
Config.Prices = {
    apple = 1.5,
    bread = 3.0,
    water = 1.0
}

-- Add an additional shop
Config.Shops[2] = {
    name = "North Store",
    coords = vector3(400.0, 500.0, 600.0),
    blip = true
}
```

## Summary

The `overwriteConfig.lua` system is a development best practice that:
- Simplifies script updates
- Protects your customizations
- Improves server maintainability
- Keeps your settings separate from default configuration

:::tip Recommendation
**Always** use `overwriteConfig.lua` for your customizations rather than directly modifying `config.lua`.
:::
