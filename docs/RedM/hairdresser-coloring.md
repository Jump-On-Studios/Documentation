# :scissors: Hair & beard coloring
Documentation relating to the **kd_haidresser_coloring** add-on for [Hairdresser script](hairdresser).

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
[Hairdresser script](hairdresser) is required to use this add-on
:::

To install kd_hairdresser_coloring:
- Drag and drop the resource into your resources folder
  - kd_hairdresser_coloring 
- Add this ensure in your server.cfg after `ensure kd_hairdresser`
  - `ensure kd_hairdresser_coloring`

Congratulation, the **Hair & Beard coloring** add-on is ready to be used!

## 2. Usage

Go into the hairdresser to dye or hair/beard.

## 3. Config.lua file
:::details Config.lua
```lua
Config = {}

Config.keys = {
  coloring = 'INPUT_CREATOR_RS'
}

Config.palettes = {
	hair = {
		tint_generic_clean = true,
		tint_hair = true,
		tint_horse = true,
		tint_horse_leather = true,
		tint_leather = true,
		tint_makeup = true
	},
	beard = {
		tint_generic_clean = true,
		tint_hair = true,
		tint_horse = true,
		tint_horse_leather = true,
		tint_leather = true,
		tint_makeup = true
	},
	hair_accessories = {
		tint_generic_clean = true,
		tint_hair = true,
		tint_horse = true,
		tint_horse_leather = true,
		tint_leather = true,
		tint_makeup = true
	},
}
```
:::

## 4. For developers

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script. These filters are fired at a specific point in time during the execution of the script. But contrary to events, filters are **synchronous**. 

- Syntax: 
```lua
-- @param <actionName> - name of the action
-- @param <argumentList> - list of arguments which are passed
exports.kd_hairdresser_coloring:registerFilter(<actionName>, function(variable)
  -- Add your new data here
	return variable -- Don't forget to return the value
end)
```
#### <Badge type="client" text="Client" /> Restrict the coloring
Fires after completed the coloring prompt
```lua
-- @param canUse - boolean
exports.kd_hairdresser_coloring:registerFilter('canOpenColorPalette', function(canUse)
	return canUse
end)
```
