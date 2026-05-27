# :scissors: Hairdresser
Documentation relating to jo_hairdresser.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/hairdresser)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/fk8_NfIcVTo?si=jPp9u4nlWKLpOtj1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
jo_hairdresser works on all frameworks compatible with jo_libs ([the list](/jo_libs/)).

To install jo_hairdresser:
- Download the library: [jo_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip)
- Unzip the folder and drop it into your resources folder
- Download jo_hairdresser from your [keymaster](https://keymaster.fivem.net/asset-grants?search=hairdresser)
- Unzip the folder and drop it into your resources folder
- Add this ensure to your server.cfg
  - `ensure jo_libs`
  - `ensure jo_hairdresser`

Congratulations, the Hairdresser script is ready to use!
:::warning
Make sure you have oxmysql ensured in your server.cfg.
:::

::: details For VORP
To fix clothes and skin, you have to edit two files:
* `vorp_character/client/client.lua` - line 284
```lua:line-numbers=267
function LoadAll(gender, ped, pedskin, components, set)
	removeMetaTags(ped)
	IsPedReadyToRender(ped)
	ResetPedComponents(ped)
	local skin = setDefaultSkin(gender, pedskin)
	ApplyShopItemToPed(skin.HeadType, ped)
	ApplyShopItemToPed(skin.BodyType, ped)
	ApplyShopItemToPed(skin.LegsType, ped)
	ApplyShopItemToPed(skin.Eyes, ped)
	ApplyShopItemToPed(skin.Legs, ped)
	ApplyShopItemToPed(skin.Hair, ped)
	ApplyShopItemToPed(skin.Beard, ped)
	ApplyShopItemToPed(skin.Torso, ped)
	EquipMetaPedOutfit(skin.Waist, ped)
	EquipMetaPedOutfit(skin.Body, ped)
	Citizen.InvokeNative(0xAAB86462966168CE, ped, 1)
	LoadFaceFeatures(ped, skin)
	UpdatePedVariation(ped)
	IsPedReadyToRender(ped)
	LoadComps(ped, components, set)
	SetPedScale(ped, skin.Scale)
	UpdatePedVariation(ped)
	TriggerServerEvent("jo_libs:server:applySkinAndClothes",ped,skin,components) -- [!code ++]
	IsPedReadyToRender(ped) -- [!code ++]
	return skin
end
```
* `vorp_character/server/server.lua` - line 6
```lua:line-numbers=6
local function ConvertTable(comps, compTints)
	local NewComps = {}

	for k, comp in pairs(comps) do
		NewComps[k] = { comp = comp, tint0 = 0, tint1 = 0, tint2 = 0, palette = 0 }

		if compTints and compTints[k] and compTints[k][tostring(comp)] then
			local compTint = compTints[k][tostring(comp)]
			NewComps[k].tint0 = compTint.tint0 or 0
			NewComps[k].tint1 = compTint.tint1 or 0
			NewComps[k].tint2 = compTint.tint2 or 0
			NewComps[k].palette = compTint.palette or 0
			NewComps[k].state = compTint.state or nil -- [!code ++]
		end
	end

	return NewComps
end
```
:::

## 2. Usage
You have three ways to use my script:

Go to the shop (marker on the map) and use the `/barber` command to sit on the chair and open the menu.

Go to the shop and use the prompt to sit on the chair and open the menu.

Use my mouse selection and right-click on the barber chair to sit on it and open the menu.

For developers, you can force hair and beard to reload with the client event:
```lua
jo_hairdresser:client:reload
```

## 3. Configuration
<ScriptConfig scriptPath="redm/hairdresser" />

## 4. For developers
Two client events are fired when you use the script:
1. When you open the menu: `jo_hairdresser:event:Open`
2. When you close the menu: `jo_hairdresser:event:Close`

### Filters

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script. These filters are fired at a specific point in time during the execution of the script. However, unlike events, filters are **synchronous**. 

- Syntax: 
```lua
-- @param <actionName> - name of the action
-- @param <argumentList> - list of arguments which are passed
exports.jo_haidresser:registerFilter(<actionName>, function(variable)
  -- Add your new data here
	return variable -- Don't forget to return the value
end)
```

#### <Badge type="client" text="Client" /> canOpenMenu
Fires before sitting on the chair. Return false to disable the menu.
```lua
-- @param canUse - boolean
exports.jo_haidresser:registerFilter('canOpenMenu', function(canOpen)
	return canOpen
end)
```
