# :necktie: Colorways
Documentation relating to the **jo_clothingstore_colorways** add-on for [Clothing store script](clothing-store).

:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/clothes-colorways)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/GR9xSUI8GC4?si=Lrqr9_NxGr0R86RB" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
::: warning
[Clothing store script](clothing-store) is required to use this add-on
:::

To install jo_clothingstore_colorways:
- Drag and drop the resource into your resources folder
  - jo_clothingstore_colorways 
- Add this ensure in your server.cfg after `ensure jo_clothingstore`
  - `ensure jo_clothingstore_colorways`

Congratulation, the **Colorways** add-on is ready to be used!

## 2. Usage

- Go in a clothing store and press `Config.keys.colorways` (default : `C`) to open the colorways menu
- New color variations will be added to the current item variations slider

## 3. Configuration files

### How to customize the configuration

1. Navigate to `jo_clothingstore_colorways_/config/_default.lock/`
2. Copy the file you want to modify (e.g., `global.lua`)
3. Paste it into `jo_clothingstore_colorways_/config/custom/`
4. Edit the copied file in the `custom` folder

The script automatically loads files from `custom/` first, and only uses `_default.lock/` as a fallback. This system ensures your customizations are preserved when updating the script.

### Default configuration files

::: code-group
```lua [global.lua]
Config.keys = {
  colorways = "INPUT_CREATOR_RS" -- Colorways menu prompt (see https://github.com/femga/rdr3_discoveries/tree/master/Controls)
}

Config.palettes = { -- Enable/Disable palettes
  tint_generic_clean = true,
  tint_hair = true,
  tint_horse = true,
  tint_horse_leather = true,
  tint_leather = true,
  tint_makeup = true
}

```


:::

### Language Configuration

The script supports full translation through the language system. To override any text:

1. Find the key you want to change in `config/_default.lock/lang.lua`
2. Copy `lang.lua` to `config/custom/` and add only the keys you want to override

Example:

```lua
Lang.colorways = "Цветовая гамма"
Lang.customColor = "Пользовательский цвет"
Lang.noPalette = "Вы не можете получить доступ к цветовой гамме"
```

Available translation categories include:
- General UI & Common Terms
- Palettes names

:::tip 💡Only change the key you need to translate
You only need to include the specific keys you want to change in `config/custom/lang.lua`. Don't copy the entire language file if you don't need to.
:::

## 4. For developers

### Actions


Actions are one of the two types of Hooks. They provide a way for running a function at a specific point in the execution of scripts. Callback functions for an Action do not return anything back to the calling Action hook. They are the counterpart to Filters.

Below is a complete list of all available actions in the jo_clothingstore script.

#### <Badge type="client" text="Client" /> init
Triggered when the addon is initialized

```lua
exports.jo_clothingstore_colorways:registerAction('init', function()
    -- Your code here
end)
```

### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or permissions synchronously at specific points in the script. Below is the complete list of `jo_clothingstore` filters and how to use them.

#### <Badge type="client" text="Client" /> canOpenColorPalette
Manage who can open the custom color menu
```lua
-- @param canAccess - boolean
exports.jo_clothingstore_colorways:registerFilter('canOpenColorPalette', function(canAccess)
  --return false to disable the access of the menu
  return canAccess
end)

```
#### <Badge type="client" text="Client" /> paletteValues
Manage the values of the palettes
```lua
-- @param values - table
exports.jo_clothingstore_colorways:registerFilter('paletteValues', function(values)
  -- manipulates values to add/remove/replace data and return new palettes values
  return values
end)

```


#### <Badge type="client" text="Client" /> updateHashpreviewBeforeBuy
Update hash preview before buying
```lua
-- @param hashpreview - table
-- @param currentData - table
exports.jo_clothingstore_colorways:registerFilter('updateHashpreviewBeforeBuy', function(hashpreview,currentData)
  return hashpreview
end)

```