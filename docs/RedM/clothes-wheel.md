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

`jo_radial_clotheswheel` is an **addon for [jo_radial](radial-menu)** — it does not open a wheel on its own. It exposes a single export, `getMenu()`, that builds and returns a list of clothing items ready to be displayed by `jo_radial`. The wheel is rebuilt every time it is opened, so it always reflects the player's current wardrobe and what they are wearing at that moment.

Only clothes the player **owns** appear in the wheel. Each item shows at full opacity when currently worn, and dimmed when owned but not equipped. For supported clothing types (neckwear, shirts, boots, vests, loadouts), a sub-ring appears with extra state options such as rolling up a sleeve, opening a collar, or switching boots over or under the pants.

::: tip
To display the wheel, you need to call `exports.jo_radial_clotheswheel:getMenu()` from inside your `jo_radial` configuration. Two approaches are available depending on your setup.
:::

### Option A : As a submenu inside your radial menu

Use this option if you already have a `jo_radial` menu and want to add the clothes wheel as one entry among others. The `items` function is evaluated fresh each time the player opens that submenu.

```lua
-- In your jo_radial config file (e.g. config/menus.lua)
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

Use this option if the clothes wheel should be the entire content of your radial menu. Setting `Config.radialMenuItems` to a function makes `jo_radial` call it on every open, so the wheel is always up to date.

```lua
-- In your jo_radial config file (e.g. config/menus.lua)
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