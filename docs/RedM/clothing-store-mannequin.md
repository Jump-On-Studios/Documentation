# :necktie: Mannequin
Documentation relating to the **jo_clothingstore_mannequin** add-on for [Clothing store script](clothing-store).

:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/mannequin)
:::

::: tab PREVIEW
Coming soon
:::
::::

## 1. Installation
::: warning
[Clothing store script](clothing-store) is required to use this add-on.
:::

To install jo_clothingstore_mannequin:
- Drag and drop the resource into your resources folder: `jo_clothingstore_mannequin`
- Add this ensure in your server.cfg after `ensure jo_clothingstore`:
  - `ensure jo_clothingstore_mannequin`

Congratulations, the **Mannequin** add-on is ready to be used!

## 2. Usage

The Mannequin add-on lets players sell outfits through persistent mannequins placed in the world. It is an add-on of `jo_clothingstore`: before a seller can sell an outfit from a mannequin, they must first create and save at least one male or female outfit from the clothing store or wardrobe outfit menu. Mannequins can also be saved without an outfit.

The [Premade Outfits add-on](clothing-store-outfits) can help sellers create outfits faster by buying ready-made outfits and saving them into their clothing-store outfit list before using them on mannequins.

:::: tabs
::: tab 🧵 Seller setup
1. Open the clothing store or a wardrobe.
2. Go to **Outfits** and create a saved outfit.
3. Choose the outfit sex before creating it. Mannequins can display `male` or `female` outfits, and the mannequin sex must match the selected outfit.
4. To prepare stock faster, use [Premade Outfits](clothing-store-outfits) to purchase ready-made outfits.
5. Save the outfit in your clothing-store outfit list.
:::

::: tab 🧍 Create a mannequin
1. Use `/mannequinMenu` to open the mannequin creation menu.
2. Select the mannequin sex: **Male** or **Female**.
3. Select one of your saved outfits, or select **None** to create a mannequin without an outfit. The list only shows outfits compatible with the selected mannequin sex.
4. Set the mannequin name. By default, selecting an outfit also fills the mannequin name with the outfit name.
5. If an outfit is selected, set the sale price. This opens an in-game NUI price modal where you can define a simple price, a combo of several costs paid together, or several payment options for the buyer to choose from.
   If you add several payment options, use the **Switch price** prompt to preview them before saving the mannequin.
6. Select a pose.
7. Choose **Move mannequin**, place and rotate it with the gizmo, then confirm the placement.
8. Choose **Save mannequin** to persist it.

The mannequin is saved, synchronized to every player, and will respawn automatically when players are close enough.
:::

::: tab 💰 Manage sales
When the owner approaches one of their mannequins, owner prompts are displayed:
- **Edit mannequin** - Reopen the mannequin menu to change its sex, outfit, name, price, pose, or position.
- **Delete mannequin** - Remove the mannequin from the world and from persistence. If the mannequin has sales to collect, they must be collected before deleting it.
- **Collect sales** - Recover money, gold, ROL, or items stored from previous purchases when the mannequin has sales to collect.

Editing a mannequin keeps the existing world mannequin while the menu is open. If you cancel the edit, unsaved changes are reverted.
:::

::: tab 🛍️ Buyer interactions
When another player approaches a mannequin with an outfit, buyer prompts are displayed:
- **Switch price** - Cycle through the available payment options when the mannequin has more than one price.
- **Try outfit** - Temporarily apply the displayed outfit to the player. The preview is removed when the player moves away from the mannequin.
- **Buy outfit** - Purchase the outfit with the selected payment option.

Mannequins without outfits do not show try or buy prompts. Trying an outfit only works when the mannequin sex matches the buyer's current character sex. Buying can still save an outfit of either sex in the buyer's clothing-store outfit list. If the main clothing-store outfit-item mode is enabled, the purchase gives an outfit item instead.
:::
::::

## 3. Configuration
<ScriptConfig scriptPath="redm/mannequin" />

## 4. For developers

### Actions

Actions are one of the two types of Hooks. They provide a way to run a function at a specific point in the execution of scripts. Callback functions for an Action do not return anything back to the calling Action hook. They are the counterpart to Filters.

Below is a complete list of all available actions in the `jo_clothingstore_mannequin` script.

#### <Badge type="shared" text="Shared" /> init
Triggered when the add-on is initialized after `jo_clothingstore` starts.

```lua
exports.jo_clothingstore_mannequin:registerAction("init", function()
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> mannequinCreated
Triggered after a mannequin is created and synchronized to clients.

```lua
-- @param source - integer server ID of the creator
-- @param mannequin - Mannequin created mannequin instance
exports.jo_clothingstore_mannequin:registerAction("mannequinCreated", function(source, mannequin)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> mannequinDeleted
Triggered after a mannequin is deleted and removed from clients.

```lua
-- @param source - integer server ID of the owner
-- @param mannequinId - integer deleted mannequin ID
exports.jo_clothingstore_mannequin:registerAction("mannequinDeleted", function(source, mannequinId)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> mannequinUpdated
Triggered after a mannequin is updated and synchronized to clients.

```lua
-- @param source - integer server ID of the editor
-- @param mannequin - Mannequin updated mannequin instance
exports.jo_clothingstore_mannequin:registerAction("mannequinUpdated", function(source, mannequin)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> outfitBought
Triggered after an outfit is purchased from a mannequin.

```lua
-- @param source - integer server ID of the buyer
-- @param mannequin - Mannequin purchased mannequin instance
-- @param outfit - table outfit data
-- @param fullPrice - PriceGroupClass full mannequin price group
exports.jo_clothingstore_mannequin:registerAction("outfitBought", function(source, mannequin, outfit, fullPrice)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> outfitItemGiven
Triggered after a purchase gives the buyer an outfit item.

```lua
-- @param source - integer server ID of the buyer
-- @param mannequin - Mannequin purchased mannequin instance
-- @param itemName - string outfit item name
-- @param metadata - table item metadata containing outfit, name, sexe, and description
exports.jo_clothingstore_mannequin:registerAction("outfitItemGiven", function(source, mannequin, itemName, metadata)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> salesCollected
Triggered after the owner collects stored mannequin sales.

```lua
-- @param source - integer server ID of the owner
-- @param mannequin - Mannequin mannequin instance after stored sales are cleared
-- @param priceToRefund - PriceClass price refunded to the owner
exports.jo_clothingstore_mannequin:registerAction("salesCollected", function(source, mannequin, priceToRefund)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> sellerRevenueStored
Triggered after a purchase stores revenue on the seller's mannequin.

```lua
-- @param source - integer server ID of the buyer
-- @param mannequin - Mannequin purchased mannequin instance
-- @param revenuePrice - PriceClass price stored for the seller
-- @param price - PriceClass price paid by the buyer
-- @param priceIndex - integer selected price index
exports.jo_clothingstore_mannequin:registerAction("sellerRevenueStored", function(source, mannequin, revenuePrice, price, priceIndex)
    -- Your code here
end)
```

### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or permissions synchronously at specific points in the script. Below is the complete list of `jo_clothingstore_mannequin` filters and how to use them.

#### <Badge type="server" text="Server" /> canBuyOutfit
Control whether a player can buy an outfit from a mannequin. This filter is called after the selected price has been resolved and before the player is charged.

```lua
-- @param canBuy - boolean (default true)
-- @param source - integer server ID of the buyer
-- @param mannequin - Mannequin purchased mannequin instance
-- @param price - PriceClass selected price
-- @param priceIndex - integer selected price index
exports.jo_clothingstore_mannequin:registerFilter("canBuyOutfit", function(canBuy, source, mannequin, price, priceIndex)
    return canBuy
end)
```

#### <Badge type="server" text="Server" /> canCollectSales
Control whether the mannequin owner can collect stored sales.

```lua
-- @param canCollect - boolean (default true)
-- @param source - integer server ID of the owner
-- @param mannequin - Mannequin mannequin instance
exports.jo_clothingstore_mannequin:registerFilter("canCollectSales", function(canCollect, source, mannequin)
    return canCollect
end)
```

#### <Badge type="server" text="Server" /> canCreateMannequin
Control whether a player can create a mannequin. This filter is called after the mannequin owner, sex, limit, and price have been validated.

```lua
-- @param canCreate - boolean (default true)
-- @param source - integer server ID of the creator
-- @param mannequin - Mannequin mannequin instance being created
exports.jo_clothingstore_mannequin:registerFilter("canCreateMannequin", function(canCreate, source, mannequin)
    return canCreate
end)
```

#### <Badge type="server" text="Server" /> canDeleteMannequin
Control whether a player can delete a mannequin.

```lua
-- @param canDelete - boolean (default true)
-- @param source - integer server ID of the owner
-- @param mannequin - Mannequin mannequin instance being deleted
exports.jo_clothingstore_mannequin:registerFilter("canDeleteMannequin", function(canDelete, source, mannequin)
    return canDelete
end)
```

#### <Badge type="server" text="Server" /> canUpdateMannequin
Control whether a player can update a mannequin. This filter is called after ownership, sex, and price validation.

```lua
-- @param canUpdate - boolean (default true)
-- @param source - integer server ID of the editor
-- @param existing - Mannequin current persisted mannequin instance
-- @param incoming - table incoming mannequin data
exports.jo_clothingstore_mannequin:registerFilter("canUpdateMannequin", function(canUpdate, source, existing, incoming)
    return canUpdate
end)
```

#### <Badge type="server" text="Server" /> canUseMannequinMenuCommand
Control whether a player can use the mannequin menu command.

```lua
-- @param canUse - boolean (default true)
-- @param source - integer server ID of the player
exports.jo_clothingstore_mannequin:registerFilter("canUseMannequinMenuCommand", function(canUse, source)
    return canUse
end)
```

#### <Badge type="server" text="Server" /> overwriteBuyerPrice
Override the selected price before the buyer is charged. The second argument is the order type and is `"mannequinOutfit"` for Mannequin purchases.

```lua
-- @param price - PriceClass selected price
-- @param typeOrder - string "mannequinOutfit"
-- @param source - integer server ID of the buyer
-- @param mannequin - Mannequin purchased mannequin instance
-- @param priceIndex - integer selected price index
exports.jo_clothingstore_mannequin:registerFilter("overwriteBuyerPrice", function(price, typeOrder, source, mannequin, priceIndex)
    return price
end)
```

#### <Badge type="server" text="Server" /> overwriteSellerRevenue
Override the amount stored for the mannequin owner after a sale. By default, the stored revenue matches the buyer price, except item costs marked with `keep = true`.

::: warning
The `price` argument is the buyer price after `overwriteBuyerPrice` has already been applied. If you use `overwriteBuyerPrice` to change what the buyer pays, `overwriteSellerRevenue` receives that updated buyer price.
:::

Return `nil` to prevent storing seller revenue for this purchase.

```lua
-- @param revenuePrice - PriceClass|nil default seller revenue
-- @param source - integer server ID of the buyer
-- @param mannequin - Mannequin purchased mannequin instance
-- @param price - PriceClass price paid by the buyer
-- @param priceIndex - integer selected price index
exports.jo_clothingstore_mannequin:registerFilter("overwriteSellerRevenue", function(revenuePrice, source, mannequin, price, priceIndex)
    return revenuePrice
end)
```
