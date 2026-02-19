# :tophat: Clothes Wheel
Documentation relating to the jo_radial_clotheswheel.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/clothes-wheel)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/DfbGIS4tGo8?si=G71Vam6KQBNYn-Bh" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation

::: warning
[Radial menu script](radial-menu) is required to use this add-on
:::

To install `jo_radial_clotheswheel`:

- Drag and drop the resource in your resources folder
  - jo_radial_clotheswheel
- Add this ensure in your server.cfg after `ensure jo_radial`
  - `ensure jo_radial_clotheswheel`
- Congratulation, the Clothes Wheel script is ready to be used !

## 2. Usage
The script will automatically detect what clothes you wear to only display them.

Two integration options are available depending on how you want to expose the clothes wheel.

### Option A : As a submenu inside your radial menu

Add a clothes wheel entry inside your `Config.radialMenuItems` table. The `items` function is called fresh every time the player opens that submenu, so the wheel always reflects the current wardrobe.

```lua
Config.radialMenuItems = {
  -- ... your other items ...
  {
    label = "Clothes",
    icon = "nui://jo_libs/nui/menu/assets/images/icons/myclothes.png",
    submenu = {
      type = "submenu",
      items = function()
        return exports.jo_radial_clotheswheel:getMenu()
      end
    }
  },
}
```

### Option B : As the only radial menu

If you want the clothes wheel to be the entire radial menu, set `Config.radialMenuItems` to a function that directly returns the clothes wheel items.

```lua
Config.radialMenuItems = function()
  return exports.jo_radial_clotheswheel:getMenu()
end
```


## 3. Configuration
<ScriptConfig scriptPath="redm/clothes-wheel" />


## 4. For developers

### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or permissions synchronously at specific points in the script. Below is the complete list of `jo_radial_clotheswheel` filters and how to use them.

#### <Badge type="client" text="Client" /> canOpenWheel
Fired before open the clothes wheel
```lua
-- @param canAccess - boolean
exports.jo_radial_clotheswheel:registerFilter('canOpenWheel', function(canAccess)
  --return false to disable the access of the wheel
  return canAccess
end)

```