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
- Download jo_hairdresser from your [account](https://jumpon-studios.com/account)
- Unzip the folder and drop it into your resources folder
- Add this ensure to your server.cfg
  - `ensure jo_libs`
  - `ensure jo_hairdresser`

Congratulations, the Hairdresser script is ready to use!
:::warning
Make sure you have oxmysql ensured in your server.cfg.
:::

:::: details For VORP
To fix clothes and skin, you have to edit two files:
:::code-group
```lua:line-numbers=404 [vorp_character/client/client.lua]
LoadCharacterSelect(playerPed, value.skin, value.components)
CachedSkin = value.skin
canContinue = false
ApplyFaceOverlays(value.skin)
canContinue = true
FaceOverlay("grime", value.skin.grime_visibility, value.skin.grime_tx_id, 0, 0, 0, 1.0, 0, 1, 0, 0, 0, 1, value.skin.grime_opacity)
Wait(500)

TriggerServerEvent("jo_libs:server:applySkinAndClothes", playerPed, value.skin, value.components) -- [!code ++]
Wait(500) -- [!code ++]
IsPedReadyToRender(playerPed) -- [!code ++]

data.PedHandler = ClonePed(playerPed, false, false, false, false)
```
```lua:line-numbers=6 [vorp_character/server/server.lua]
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
::::

## 2. Usage

:::: tabs
::: tab Find a hairdresser
Hairdressers are marked on the map with a barber blip icon when blips are enabled. By default, there are 3 hairdresser locations:
- **Blackwater**
- **Valentine**
- **Saint Denis**

Approach a barber chair and a prompt will appear when you're close enough.
:::

::: tab Hairdresser features
In the hairdresser menu, you can:
- **Change hair** - Browse, preview, and buy hairstyles
- **Change beard** - Browse, preview, and buy beard styles for male characters
- **Hair accessories** - Browse and buy hair accessories for female characters
- **Edit teeth** - Change teeth options when enabled
- **Edit eyebrow** - Change eyebrow style and opacity when enabled
- **Switch payment options** - Choose between available prices when multiple options exist
- **Hat prompt** - Remove or equip your hat while browsing
- **Pomade preview** - Preview pomade on male hairstyles before buying

Use the prompts displayed on screen to navigate, rotate your character, preview options, and purchase changes.
:::

::: tab Commands
The script provides a chat command to open the hairdresser interaction:
- `/hairdresser` - Sit on the nearest barber chair and open the menu

The command can be customized or disabled in the configuration.
:::

::: tab Mouse selection
If you use the mouse-selection integration, right-click a barber chair inside a configured hairdresser shop to open the interaction menu.
:::
::::

## 3. Configuration
<ScriptConfig scriptPath="redm/hairdresser" />

### Add-ons

The Hairdresser script supports optional add-ons:
- [Hair & Beard Coloring](hairdresser-coloring) - Lets players dye their hair and beard
- [Makeup](hairdresser-makeup) - Lets players customize makeup and lifestyle overlays
- [NPC Hairs & Beards](hairdresser-npc) - Lets players browse NPC hair and beard styles

## 4. For developers

### Actions

Actions are one of the two types of Hooks. They provide a way to run a function at a specific point in the execution of scripts. Callback functions for an Action do not return anything back to the calling Action hook. They are the counterpart to Filters.

Below is a complete list of all available actions in the jo_hairdresser script.

#### <Badge type="client" text="Client" /> InitPrompt
Triggered after the hairdresser prompt groups are created.

```lua
exports.jo_hairdresser:registerAction('InitPrompt', function()
    -- Your code here
end)
```

#### <Badge type="client" text="Client" /> LoopIn
Triggered every frame while the player is inside the hairdresser menu.

```lua
-- @param currentPrompt - string: current prompt group ("select" or "buy")
exports.jo_hairdresser:registerAction('LoopIn', function(currentPrompt)
    -- Your code here
end)
```

#### <Badge type="client" text="Client" /> reloadAll
Triggered after hair, beard, hair accessories, teeth, and overlays are reloaded.

```lua
exports.jo_hairdresser:registerAction('reloadAll', function()
    -- Your code here
end)
```

#### <Badge type="client" text="Client" /> switchPrice
Triggered when the player switches between payment options.

```lua
-- @param priceIndex - int: index of the selected price option
exports.jo_hairdresser:registerAction('switchPrice', function(priceIndex)
    -- Your code here
end)
```

### Events

#### <Badge type="client" text="Client" /> Listen menu closing
Triggered when the hairdresser menu closes.

```lua
AddEventHandler('jo_hairdresser:event:Close', function()
    -- Your code here
end)
```

#### <Badge type="client" text="Client" /> Listen menu opening
Triggered when the hairdresser menu opens.

```lua
AddEventHandler('jo_hairdresser:event:Open', function()
    -- Your code here
end)
```

#### <Badge type="client" text="Client" /> Open the hairdresser
Call this event from your own scripts to start the hairdresser interaction.

```lua
TriggerEvent('jo_hairdresser:Enter')
```

#### <Badge type="client" text="Client" /> Reload skin
Reload the player skin from the server, then apply hairdresser components.

```lua
TriggerEvent('jo_hairdresser:client:reloadSkin')
```


### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or permissions synchronously at specific points in the script. Below is the complete list of `jo_hairdresser` filters and how to use them.

#### <Badge type="server" text="Server" /> Can buy
Control whether the purchase can continue before money is charged.
```lua
-- @param canBuy - boolean (default true)
-- @param source - serverID of the player
-- @param data - table: purchase data
-- @param moneyType - any: selected money type/payment context
exports.jo_hairdresser:registerFilter('canBuy', function(canBuy, source, data, moneyType)
	return canBuy
end)
```

#### <Badge type="client" text="Client" /> Can open menu
Control whether the player can open the hairdresser menu.
```lua
-- @param canOpen - boolean (default true)
exports.jo_hairdresser:registerFilter('canOpenMenu', function(canOpen)
	return canOpen
end)
```

#### <Badge type="client" text="Client" /> Main menu items
Add entries to the native hairdresser menu.
```lua
-- @param items - table
exports.jo_hairdresser:registerFilter('mainMenuItems', function(items)
	return items
end)
```

#### <Badge type="client" text="Client" /> Reload all
Control whether hairdresser components can be reloaded.
```lua
-- @param canUse - boolean
exports.jo_hairdresser:registerFilter('reloadAll', function(canUse)
	return canUse
end)
```

#### <Badge type="client" text="Client" /> Root menu items
Add high-level entries to the root hairdresser menu.
```lua
-- @param items - table
exports.jo_hairdresser:registerFilter('rootMenuItems', function(items)
	return items
end)
```

#### <Badge type="client" text="Client" /> Update current data before buy
Modify the current buy data before it is sent to the server purchase flow.
```lua
-- @param currentData - table: current menu item data
exports.jo_hairdresser:registerFilter('updateCurrentDataBeforeBuy', function(currentData)
	return currentData
end)
```

#### <Badge type="client" text="Client" /> Update lang for NUI
Alter the language table before it is sent to the NUI menu.
```lua
-- @param lang - table
exports.jo_hairdresser:registerFilter('updateLangForNUI', function(lang)
	return lang
end)
```

#### <Badge type="client" text="Client" /> Update menu prompt
Override which prompt group is displayed while navigating menus.
```lua
-- @param promptType - string ("select" or "buy")
-- @param currentData - table: current menu item data
exports.jo_hairdresser:registerFilter('updateMenuPrompt', function(promptType, currentData)
	return promptType
end)
```
