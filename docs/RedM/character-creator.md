# :cowboy_hat_face: [BETA] Character creator
Documentation relating to the jo_character_creator.

## 1. Installation
The character creator works on all frameworks compatible with jo_libs ([the list](/jo_libs/)).

To install jo_character_creator:
- Download the library: [jo_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/archive/refs/heads/main.zip)
- Unzip the folder and drop it in your resource folder
- Download jo_character_creator from your [keymaster](https://keymaster.fivem.net/asset-grants?search=jo_character_creator)
- Unzip the folder and drop it in your resource folder
- Add this ensure in your server.cfg
  - `ensure jo_libs`
  - `ensure jo_character_creator`

::: details For VORP
You have to link the character creator inside vorp_character:
* `vorp_character/client/createCharacter.lua` - line 116
```lua:line-numbers=116
RegisterNetEvent("vorpcharacter:startCharacterCreator")
AddEventHandler("vorpcharacter:startCharacterCreator", function()
    exports.weathersync:setSyncEnabled(false)
    ShutdownLoadingScreen()
    TriggerEvent("jo_character_creator:client:open")
end)
```
To fixed clothes and skin, you have to edit two files :
* `vorp_character/client/client.lua` - line 267
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