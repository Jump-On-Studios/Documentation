---
outline: [2,3]
---

# overwriteLang.lua

The `overwriteLang.lua` file is a mechanism that allows you to translate or customize the script's language without directly modifying the original `lang.lua` file.

## Why use overwriteLang.lua?

### Main Advantages

#### 1. Simplifies Updates
When you directly modify the `lang.lua` file and a script update is available, you must:
- Backup your custom translations
- Compare the old and new `lang.lua` file line by line
- Manually transfer your translations
- Risk forgetting certain strings or introducing errors

With `overwriteLang.lua`, simply backup this file before updating, replace the entire resource with the new version, and restore your backup file.  
If new language strings are added to the `lang.lua` file during an update, they will automatically be available since `overwriteLang.lua` is loaded after and only overwrites the specific strings you've customized.

#### 2. Separation of Concerns
- **lang.lua**: Default language strings maintained by developers
- **overwriteLang.lua**: Your specific translations and customizations

This separation makes your translations clearer and more maintainable.

#### 3. Preserves Your Translations
The `overwriteLang.lua` file is included in all scripts and is specifically designed to store your custom translations. This file is meant to be edited, unlike `lang.lua` which should remain untouched to preserve update compatibility.

## How to use it?

### File Location

The `overwriteLang.lua` file is already included in the script's root directory. Simply open it and add your custom language strings.

### Basic Structure

The file already contains a header explaining its purpose:

```lua
-------------
-- USE THIS FILE TO TRANSLATE THE SCRIPT
-- LANG LOCATION : shared/lang.lua
-- Copy ONLY values you want edit, NOT ALL the Lang file
-------------

-- Customize only the strings you want to translate
Lang.myString = "My custom translation"
```

### Concrete Example

Imagine that the `lang.lua` file contains the following language strings and you want to translate it to French:

```lua
-------------------------------------------
-- DON'T EDIT THIS FILE
-- TO TRANSLATE THE SCRIPT, USE overwriteLang.lua file instead
-------------------------------------------

Lang = {}

Lang.blipStoreName = "Stable"
Lang.promptTitle = "Stable"
Lang.enter = "Enter"
Lang.select = "Select"
Lang.back = "Back"
Lang.buy = "Buy"
```

1. Copy the strings you want to translate from the `lang.lua` file and paste them in the `overwriteLang.lua` file:

```lua
-------------
-- USE THIS FILE TO TRANSLATE THE SCRIPT
-- LANG LOCATION : shared/lang.lua
-- Copy ONLY values you want edit, NOT ALL the Lang file
-------------
Lang.select = "Select"
Lang.back = "Back"
Lang.buy = "Buy"
```

2. Edit these values to your language:

```lua
-------------
-- USE THIS FILE TO TRANSLATE THE SCRIPT
-- LANG LOCATION : shared/lang.lua
-- Copy ONLY values you want edit, NOT ALL the Lang file
-------------
Lang.select = "Selectionner"
Lang.back = "Retour"
Lang.buy = "Acheter"
```

:clap: **You're done!** You can now use the script with your custom translations.

## Loading Order

Files are loaded in this order (generally defined in `fxmanifest.lua`):

1. **lang.lua**: Loads all default language strings
2. **overwriteLang.lua**: Overwrites only the strings you redefine

```lua
-- Example fxmanifest.lua
shared_scripts {
    'shared/lang.lua',
    'overwriteLang.lua'  -- Loaded last to overwrite strings
}
```

## Best Practices

### Do

- Use the `overwriteLang.lua` file for all your translations
- Only redefine strings you actually want to change
- Keep your translations organized by category (prompts, menus, notifications, etc.)
- Add comments to group related strings together

```lua
-- Prompts
Lang.enter = "Entrer"
Lang.select = "Sélectionner"
Lang.back = "Retour"

-- Notifications
Lang.noMoney = "Vous n'avez pas assez d'argent"
Lang.noGold = "Vous n'avez pas assez d'or"

-- Menu
Lang.headerTitle = "Écurie"
Lang.buyHorse = "Acheter un nouveau cheval"
```

### Don't

- Don't modify `lang.lua` directly
- Don't add new language keys in `overwriteLang.lua` (unless the script supports it)
- Don't copy the entire `lang.lua` into `overwriteLang.lua`

## Translation Tips

### Using Color Codes

Some strings contain color codes that should be preserved:

```lua
-- Original
Lang.buyGold = "Buy with ~COLOR_GOLD~gold"

-- Translated (keep the color code)
Lang.buyGold = "Acheter avec de l'~COLOR_GOLD~or"
```

### Using Placeholders

Some strings contain placeholders (like `%s`, `%d`, `%1`, `%2`) that should be kept:

```lua
-- Original
Lang.of = "%1 of %2"
Lang.releaseHorse = "Release %s"
Lang.activitySpeedDesc = "Improve the horse speed.<br>Need to repeat %d times to level up"

-- Translated (keep the placeholders in the right order)
Lang.of = "%1 sur %2"
Lang.releaseHorse = "Libérer %s"
Lang.activitySpeedDesc = "Améliore la vitesse du cheval.<br>À répéter %d fois pour monter de niveau"
```

### Preserving HTML Tags

Some strings contain HTML tags that should remain unchanged:

```lua
-- Original
Lang.releaseHorseDesc = "You will lose this horse.<br><span style='font-style:italic'>(Components will not be deleted)</span>"

-- Translated (keep HTML tags)
Lang.releaseHorseDesc = "Vous allez perdre ce cheval.<br><span style='font-style:italic'>(Les composants ne seront pas supprimés)</span>"
```

## Complete Example

### lang.lua (original file, do not modify)
```lua
-------------------------------------------
-- DON'T EDIT THIS FILE
-- TO TRANSLATE THE SCRIPT, USE overwriteLang.lua file instead
-------------------------------------------

-- Prompts
Lang.promptTitle = "Stable"
Lang.enter = "Enter"
Lang.select = "Select"
Lang.back = "Back"

-- Menu
Lang.headerTitle = "Stable"
Lang.buyHorse = "Buy a new Horse"
Lang.price = "Price"

-- Notifications
Lang.noMoney = "You don't have enough money"
Lang.newHorseBought = "New horse bought"
```

### overwriteLang.lua (your translations)
```lua
-------------
-- USE THIS FILE TO TRANSLATE THE SCRIPT
-- LANG LOCATION : shared/lang.lua
-- Copy ONLY values you want edit, NOT ALL the Lang file
-------------

-- Prompts (French translation)
Lang.promptTitle = "Écurie"
Lang.enter = "Entrer"
Lang.select = "Sélectionner"
Lang.back = "Retour"

-- Menu
Lang.headerTitle = "Écurie"
Lang.buyHorse = "Acheter un nouveau cheval"
Lang.price = "Prix"

-- Notifications
Lang.noMoney = "Vous n'avez pas assez d'argent"
Lang.newHorseBought = "Nouveau cheval acheté"
```

## Summary

The `overwriteLang.lua` system is a development best practice that:
- Simplifies script updates
- Protects your translations
- Improves server maintainability
- Keeps your language customizations separate from default strings

:::tip Recommendation
**Always** use `overwriteLang.lua` for your translations rather than directly modifying `lang.lua`.
:::
