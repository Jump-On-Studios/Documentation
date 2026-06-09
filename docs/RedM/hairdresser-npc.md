# :scissors: NPC Hairs & Beards
Documentation relating to the **jo_hairdresser_npc** add-on for the [Hairdresser script](hairdresser).

:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/makeup)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/ybDiAx_a-1s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
::: warning
The [Hairdresser script](hairdresser) is required to use this add-on.
:::

To install jo_hairdresser_npc:
- Drag and drop the resource into your resources folder
  - jo_hairdresser_npc
- Add this ensure to your server.cfg after `ensure jo_hairdresser`
  - `ensure jo_hairdresser_npc`

Congratulations, the **NPC Hairs & Beards** add-on is ready to use!

## 2. Usage

:::: tabs
::: tab Open NPC styles
Go to a hairdresser and open the hairdresser menu.

When the add-on is enabled, compatible hairdresser entries open an intermediate source menu where players can choose between:
- **Natives** - Browse the normal Hairdresser styles
- **NPC** - Browse NPC styles added by the add-on

This intermediate **Natives / NPC** choice appears for:
- **Hair** - Choose between native hair styles and NPC hair styles
- **Beard** - Choose between native beard styles and NPC beard styles

Female characters can also receive a dedicated **Beard** entry when female NPC beard data is available.
:::

::: tab NPC features
In the NPC menus, you can:
- **Browse NPC hair** - Preview and buy NPC hair components
- **Browse NPC beards** - Preview and buy NPC beard components
- **Remove a component** - Select the shaved option to remove the current NPC category
- **Change color presets** - Use the color slider on compatible NPC entries
- **Switch payment options** - Choose between available prices when multiple options exist

Changes are previewed on the player before purchase.
:::

::: tab Supported categories
The add-on includes **668 NPC style choices**:

| Sex | Category | Choices |
| --- | --- | ---: |
| Male | Hair | 339 |
| Male | Full beard | 65 |
| Male | Mustache | 39 |
| Male | Mutton chops | 24 |
| Male | Chin beard | 22 |
| **Male total** |  | **489** |
| Female | Hair | 166 |
| Female | Hair bonnet | 9 |
| Female | Beards | 4 |
| **Female total** |  | **179** |

Available categories depend on the character sex and the enabled prices in the configuration.
:::

::: tab Coloring add-on
If [Hair & Beard Coloring](hairdresser-coloring) is installed and started, compatible NPC components can use the external color palette.

The NPC add-on keeps the purchase flow delegated to the main Hairdresser script, so pricing, payment, persistence, and success feedback stay shared with the normal hairdresser menus.
:::
::::

## 3. Configuration
<ScriptConfig scriptPath="redm/hairdresser-npc" />

## 4. For developers

### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or permissions synchronously at specific points in the script.

#### <Badge type="server" text="Server" /> canAccessToNPCMenu
Control access to the NPC hair and beard menus.

When this filter returns `false`, the add-on stays linked to Hairdresser but does not add its NPC entries to the menu. Players will see the same behavior as if the NPC add-on was not present: Hair and Beard open the native Hairdresser menus directly.

```lua
-- @param canAccess - boolean (default true)
-- @param source - serverID of the player
exports.jo_hairdresser_npc:registerFilter("canAccessToNPCMenu", function(canAccess, source)
    return canAccess
end)
```

Example - allow only VIP players:

```lua
local vipPlayers = {}

exports.jo_hairdresser_npc:registerFilter("canAccessToNPCMenu", function(canAccess, source)
    return canAccess and vipPlayers[source] == true
end)
```
