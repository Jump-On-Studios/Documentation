# :necktie: Premade Outfits
Documentation relating to the **jo_clothingstore_outfits** add-on for [Clothing store script](clothing-store).

:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/premade-outfits)
:::

::: tab PREVIEW
Preview coming soon.
:::
::::

## 1. Installation
::: warning
[Clothing store script](clothing-store) is required to use this add-on
:::

To install jo_clothingstore_outfits:
- Drag and drop the resource into your resources folder
  - jo_clothingstore_outfits 
- Add this ensure in your server.cfg after `ensure jo_clothingstore`
  - `ensure jo_clothingstore_outfits`

Congratulation, the **Premade outfits** add-on is ready to be used!

## 2. Usage

This add-on adds a **Premade outfits** menu in the clothing store/wardrobe.
- Open the clothing store, go to **Outfits** and select **Premade outfits**.
- Outfits are split into sections of 100 (Outfits 1 to 100, 101 to 200, ...).
- Select an outfit, use the variation slider to preview, then press the buy prompt to purchase.
- Purchased outfits are saved to the player's outfits list in jo_clothingstore.

If multiple payment options are configured for an outfit, use the **Switch price** prompt to cycle through them.
### Fixing body parts
:::warning Fixing body parts

Some premade outfits may not perfectly fit your character and can cause body clipping. If that happens, press the **Fix body parts prompt** to open the adjustment menu.

This menu lets you cycle through different upper and lower body variations to find the best fit for the selected outfit.

Once you purchase the outfit, the chosen body settings are saved with it, so you only need to adjust it once.
:::


## 3. Configuration

<ScriptConfig scriptPath="redm/premade-outfits" />

### Language Configuration

The script supports full translation through the language system. To override any text:

1. Find the key you want to change in `config/_default.lock/lang.lua`
2. Copy `lang.lua` to `config/custom/` and add only the keys you want to override

Example:

```lua
Lang.premadeOutfits = "Premade outfits"
Lang.outfitSection = "Outfits %d to %d"
Lang.premadeOutfitBought = "Outfit %s purchased!"
```

Available translation keys include:
- General UI text (`premadeOutfits`, `premadeOutfitsDesc`)
- Menu labels (`outfitSection`, `outfitItem`)
- Notifications (`premadeOutfitBought`)

## 4. For developers

### Actions

Actions are one of the two types of Hooks. They provide a way for running a function at a specific point in the execution of scripts. Callback functions for an Action do not return anything back to the calling Action hook. They are the counterpart to Filters.

Below is a complete list of all available actions in the jo_clothingstore_outfits script.

#### <Badge type="client" text="Client" /> switchPrice
Triggered when user switch the outfit price

```lua
exports.jo_clothingstore_outfits:registerAction('switchPrice', function(priceIndex)
    -- Your code here
end)
```

### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or permissions synchronously at specific points in the script.

#### <Badge type="client" text="Client" /> canOpenPremadeOutfitsMenu
Control whether the player can open the premade outfits menu.

```lua
-- @param canOpen - boolean (default true)
exports.jo_clothingstore_outfits:registerFilter("canOpenPremadeOutfitsMenu", function(canOpen)
    return canOpen
end)
```
