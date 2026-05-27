# :scissors: Hair & beard coloring
Documentation relating to the **jo_haidresser_coloring** add-on for the [Hairdresser script](hairdresser).

:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/hair-coloring)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/L59H6mLFu_Y?si=WpVh0x8uw5KuyYEX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
::: warning
The [Hairdresser script](hairdresser) is required to use this add-on.
:::

To install jo_hairdresser_coloring:
- Drag and drop the resource into your resources folder
  - jo_hairdresser_coloring 
- Add this ensure in your server.cfg after `ensure jo_hairdresser`
  - `ensure jo_hairdresser_coloring`

Congratulations, the **Hair & Beard Coloring** add-on is ready to use!

## 2. Usage

Go to the hairdresser to dye your hair or beard.

## 3. Config.lua file
<ScriptConfig scriptPath="redm/hair-coloring" />

## 4. For developers

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script. These filters are fired at a specific point in time during the execution of the script. However, unlike events, filters are **synchronous**. 

- Syntax: 
```lua
-- @param <actionName> - name of the action
-- @param <argumentList> - list of arguments which are passed
exports.jo_hairdresser_coloring:registerFilter(<actionName>, function(variable)
  -- Add your new data here
	return variable -- Don't forget to return the value
end)
```
#### <Badge type="client" text="Client" /> Restrict the coloring
Fires after completing the coloring prompt.
```lua
-- @param canUse - boolean
exports.jo_hairdresser_coloring:registerFilter('canOpenColorPalette', function(canUse)
	return canUse
end)
```
