# :lipstick: Makeup
Documentation relating to the **jo_hairdresser_makeup** add-on for the [Hairdresser script](hairdresser).

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

To install jo_hairdresser_makeup:
- Drag and drop the resource into your resources folder
  - jo_hairdresser_makeup
- Add this ensure to your server.cfg after `ensure jo_hairdresser`
  - `ensure jo_hairdresser_makeup`

Congratulations, the **Makeup** add-on is ready to use!

## 2. Usage

:::: tabs
::: tab Open makeup
Go to a hairdresser and open the hairdresser menu.

When the add-on is enabled, two new entries can appear in the native hairdresser menu:
- **Makeup**
- **Lifestyle**
:::

::: tab Makeup features
In the makeup menu, you can:
- **Foundation** - Select a foundation variation, opacity, and colors
- **Blusher** - Select a blush variation, opacity, and color
- **Eyeshadow** - Select an eyeshadow variation, opacity, and colors
- **Eyeliner** - Select an eyeliner variation, opacity, and color
- **Lipstick** - Select a lipstick variation, opacity, and colors

Changes are previewed on the player before purchase.
:::

::: tab Lifestyle features
In the lifestyle menu, you can edit:
- **Ageing**
- **Acne**
- **Scar**
- **Complexion**
- **Skin mottling**
- **Freckles**
- **Moles**
- **Spots**

Each category supports previewing and saving through the Hairdresser purchase flow.
:::

::: tab Purchase flow
The add-on uses the Hairdresser menu prompts and purchase feedback.

When multiple payment options are available, players can switch between them before buying. Removing a makeup or lifestyle overlay is free.
:::
::::

## 3. Configuration
<ScriptConfig scriptPath="redm/hairdresser-makeup" />

## 4. For developers

### Actions

Actions are one of the two types of Hooks. They provide a way to run a function at a specific point in the execution of scripts. Callback functions for an Action do not return anything back to the calling Action hook. They are the counterpart to Filters.

Below is the available action in the jo_hairdresser_makeup script.

#### <Badge type="client" text="Client" /> Init
Triggered when the add-on links to jo_hairdresser and registers its Hairdresser menu entries.

```lua
exports.jo_hairdresser_makeup:registerAction('init', function()
    -- Your code here
end)
```

### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or permissions synchronously at specific points in the script. Below is the complete list of `jo_hairdresser_makeup` filters and how to use them.

#### <Badge type="client" text="Client" /> Can open makeup menu
Control whether the Makeup entry is added to the Hairdresser menu.

```lua
-- @param canOpen - boolean (default true)
exports.jo_hairdresser_makeup:registerFilter('canOpenMakeupMenu', function(canOpen)
	return canOpen
end)
```

#### <Badge type="client" text="Client" /> Can open lifestyle menu
Control whether the Lifestyle entry is added to the Hairdresser menu.

```lua
-- @param canOpen - boolean (default true)
exports.jo_hairdresser_makeup:registerFilter('canOpenLifestyleMenu', function(canOpen)
	return canOpen
end)
```

#### <Badge type="server" text="Server" /> Can buy
Control whether the purchase can continue before money is charged.

```lua
-- @param canBuy - boolean (default true)
-- @param source - serverID of the player
-- @param currentData - table: purchase data
-- @param moneyType - any: selected money type/payment context
exports.jo_hairdresser_makeup:registerFilter('canBuy', function(canBuy, source, currentData, moneyType)
	return canBuy
end)
```
