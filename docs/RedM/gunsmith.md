---
outline: [2,4]
---

# :gun: Gunsmith

Documentation related to `jo_gunsmith`.

Gunsmith lets players buy weapons and ammunition, preview and purchase weapon components, rename their weapons, and maintain their condition. Each ordinary weapon is an inventory item with its own serial number, customization and loaded ammunition.

## 1. Installation

Install [jo_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip) **2.14.2 or newer**, `oxmysql`, and the `jo_gunsmith` resource in your server's resources folder. Use the latest jo_libs release for the current RSG inventory bridge. Start your framework and inventory before jo_libs and jo_gunsmith.

The script creates its `jo_gunsmith_weapons` database table automatically. The inventory items still need to be registered using the instructions for your framework below.

::::: tabs
:::: tab VORP

1. Import <a href="/snippets/gunsmith/vorp_items.sql" download>the inventory SQL</a> into the database used by `vorp_inventory`. It registers the catalogue's weapon items, ammunition boxes and `jo_gun_oil`. Check that the item groups match your database: the file uses group **5** for weapons, **6** for ammunition and **1** for oil.
2. Keep weapons as usable **`item_standard`** items with **`limit = -1`**. Each copy needs its own metadata; a limit of 1 prevents players from carrying several copies of a model. The SQL corrects the type, limit and usability of existing entries while keeping their label, description and weight.
3. Copy `kit_gun_oil.png` to `jo_gun_oil.png` in `vorp_inventory/html/img/items/` so the oil has an inventory image.
4. Restart `vorp_inventory` after importing the items, then start the resources in the order shown below.

::: details Inventory items — SQL to import
<<< @/public/snippets/gunsmith/vorp_items.sql
:::

::: details Resource order — server.cfg
```cfg
# Start your VORP framework and inventory before these resources.
ensure oxmysql
ensure jo_libs
ensure jo_gunsmith
```
:::

Existing weapons stored through VORP's native weapon system are not automatically converted into gunsmith inventory items. Items given by other scripts can be adopted when used, provided their item name matches the gunsmith catalogue.

::::
:::: tab RSG

1. Keep the existing weapon and `ammo_box_*` definitions in `rsg-core/shared/items.lua`, including their `weapon`, `weapon_thrown` and `equipment` types. The jo_libs bridge handles their use through `rsg-inventory`.
2. Disable **`rsg-weapons`**, **`rsg-weaponcomp`** and **`rsg-ammo`**. They also handle weapon or ammunition use and would conflict with jo_gunsmith. If you start the whole `[framework]` folder, move these resources out of that folder; removing an individual `ensure` is insufficient when the folder still starts them.
3. Add <a href="/snippets/gunsmith/rsg_items.lua" download>the RSG item definitions</a> **after the `RSGShared.Items` table** in `rsg-core/shared/items.lua`. They add nine missing weapon items and gun oil, and make the hatchet, hunter hatchet and cleaver unique. These three melee weapons need a separate serial for each copy. Actual thrown weapons remain stackable consumables.
4. Restart the framework and inventory after changing the item definitions. Start jo_libs and jo_gunsmith after `[framework]`.

::: details Inventory items — append to rsg-core/shared/items.lua
<<< @/public/snippets/gunsmith/rsg_items.lua
:::

::: details Resource order — server.cfg
```cfg
ensure oxmysql
ensure [framework]
# rsg-weapons, rsg-weaponcomp and rsg-ammo must be outside this folder.
ensure jo_libs
ensure jo_gunsmith
```
:::

If `rsg-essentials` reports a missing `weaponInHands` export when a weapon leaves the inventory, add the following guard at the beginning of its `rsg-core:client:RemoveWeaponFromTab` handler in `rsg-essentials/client/weaponcheck.lua`. Gunsmith already puts the removed weapon away.

::: details Optional rsg-essentials compatibility guard
```lua
if GetResourceState('rsg-weapons') ~= 'started' then return end
```
:::

::::
:::::

Gun oil is usable once registered, but the gunsmith does not sell it. Add it to a shop or another item delivery system on your server.

## 2. Usage

:::: tabs
::: tab 🛒 Buy

Approach a configured gunsmith and use the displayed interaction prompt. The shop menu offers **Buy weapons**, **Buy ammunition** and **My weapons**.

- **Weapons:** choose a category and a model to preview the weapon and its statistics. Hold the purchase prompt to buy it. The delivered inventory item is unequipped and empty.
- **Ammunition:** choose a category, select the ammunition type and quantity, then select **Buy**. A quantity counts boxes, rather than individual rounds.
- **Payment:** when several payment options exist, use the alternative-price prompt to switch between them before purchasing.

By default, **ENTER** opens the shop and confirms a purchase when held; **B** switches the payment option. Follow the prompts on screen if your server changes the shop controls. A purchase that cannot be delivered to the inventory is refunded.

:::

::: tab 🔫 Equip & load

Use the weapon's inventory item to equip and draw it. Using an equipped item draws it if it is holstered; using it while it is already in hand puts it away and unequips it.

Equipped ordinary weapons appear in the native weapon wheel. The script keeps one equipped copy per model and uses the game's sidearm and long-arm slots. Equipping another copy of the same model replaces the equipped copy. Dual wielding is not currently available.

To load ammunition, hold a compatible weapon and use an ammunition box from the inventory. The box keeps any unused rounds. When inventory reloading is enabled, **R** loads ammunition from compatible boxes, using partial boxes first. Ammunition is stored in the weapon's clip; there is no separate loose ammunition reserve.

Changing ammunition type first returns the old rounds to the inventory. If there is no room to return them, the switch is blocked. To load an empty bow, equip the bow and use a compatible arrow box.

:::

::: tab 🛠️ Manage

Open **My weapons**, choose an inventory weapon, then open **Manage**:

| Service | How it works |
| --- | --- |
| **Clean** | Restores the weapon's condition. The charge follows its current wear and dirt. |
| **Customize** | Opens the parts and finishes available for that model. See the **Customize** tab for the full walkthrough. |
| **Unload** | Returns loaded ammunition to partial or new boxes. Rounds that cannot fit in the inventory remain in the weapon. |
| **Rename** | Sets a custom name of up to **32 characters**. Empty names and unsupported characters are refused. |

:::

::: tab 🎨 Customize

**Open customization**

1. Visit a gunsmith with the weapon item in your inventory.
2. Open **My weapons**, select the copy you want to modify, then choose **Manage → Customize**. Each copy has its own customization.
3. Select a part to open its choices. The camera focuses on the selected part as you browse.

Customization follows the game's gunsmith options for that model. A weapon with no customization options has no **Customize** entry. If your server requires cleaning first, a dirty weapon's entry is disabled: use **Clean**, then open customization again.

**Parts and finishes**

The available choices vary by model. A part can combine several settings in the same menu:

| Type of choice | Examples |
| --- | --- |
| **Components** | Barrel length, rifling, iron sights and scopes. |
| **Grips and stocks** | Grip materials, wood grain, carvings and varnish. |
| **Metals** | Finishes for the barrel, frame, action, hammer or trigger. |
| **Engravings** | Designs on individual parts, full engravings and inlay materials. |
| **Wraps** | Leather or cloth protection, patterns and colors. |
| **Variants** | Special designs offered for that model. |

The improved bow and hunting knife have their own styles, such as bowstring colors or blade finishes.

**Preview your choices**

Move each slider to try a different option. Some choices use image swatches; others use text labels. The option currently installed is marked **Equipped** or has a tick on its swatch. Moving the slider previews a change; it does not purchase it.

Choices that affect performance show the relevant statistics compared with your installed setup. Cosmetic finishes such as metals and engravings do not show performance bars.

You can preview several changes within the current part, such as barrel length, rifling and metal finish, before confirming them together. Returning a slider to its installed option removes that change from the purchase.

**Unlock dependent decorations**

- Cloth colors require an installed cloth wrap; leather colors require an installed leather wrap.
- Inlay materials require at least one installed engraving.
- A prerequisite must be purchased first. Previewing it does not unlock dependent choices. Disabled choices explain what is missing.

For example, buy a cloth wrap first. Its color choices then become available in the menu; choose a color and make a second purchase to apply it.

Replacing or removing a supporting part can also remove its decorations. Read the **Also removes** description before buying: changing a wrap can remove its tint, and removing the last engraving removes its inlay.

**Confirm or cancel**

1. Check the selected choices and their prices. When a choice offers several payment options, use the switch-price prompt on that choice's line (**B** by default).
2. Select the final **Buy** line. It shows the combined cost of the pending changes in the current part.
3. Hold the purchase prompt (**ENTER** by default) to confirm. The changes are charged together and saved after the purchase succeeds. Their marks then update to **Equipped**.

**Buy** stays disabled when there are no changes to purchase. Removal choices such as **None** and **Standard** are free, but still need confirmation through **Buy**. A priced option that is no longer installed counts as a new purchase if you select it again.

Going back or closing the menu discards unpurchased previews. Changes already purchased remain installed. Confirm a part's changes before leaving it to customize another part.

See the [component reference](./gunsmith-components) for readable component labels and the `COMPONENT_*` keys used by custom prices.

:::

::: tab 🧴 Gun oil

When weapon wear is enabled, use gun oil while holding a worn ordinary weapon, or through the native weapon inspection cleaning interaction. Oil reduces wear and clears dirt. A weapon that is too worn for oil must be cleaned at the gunsmith.

Oil is consumed when cleaning begins. Interrupting the animation does not return the item. A server-side failure to save the result refunds it. If clean weapons are required for customization, clean the weapon before entering its customization menu.

:::

::: tab 🔄 Transfer

An ordinary weapon's serial identifies its saved customization, name and wear. Loaded ammunition and equipped state are stored in the item's metadata. Giving, dropping or storing that item transfers the weapon itself, including its loaded rounds.

The weapon is put away when its item leaves the player's inventory. Equipped ordinary weapons are restored after reconnecting or restarting the resource. A catalogue weapon item given by another script receives a serial when first used; it appears in **My weapons** after adoption.

:::

::: tab 💣 Throwables

Bolas, dynamite, fire and poison bottles, throwing knives and tomahawks are stackable consumables. Each throw consumes one inventory item, within the game's carrying limits. Recovering an eligible thrown weapon can return an item up to the number thrown since equipping it.

These weapons have no serial, are excluded from **My weapons**, and cannot be renamed or customized. Their equipped state is not restored like an ordinary serialized weapon.

:::
::::

## 3. Configuration

<ScriptConfig scriptPath="redm/gunsmith" />

### Component price reference

The [component reference](./gunsmith-components) lists the verified names and readable labels. Copy a `COMPONENT_*` key into your custom prices file when that component needs a different price. A shared component key sets the price on every weapon offering that component.

::: details Example — custom component prices
```lua
-- config/custom/prices.lua
-- Pearl grip on the Cattleman only.
Config.prices.weapons.components.COMPONENT_REVOLVER_CATTLEMAN_GRIP_PEARL = {
    { money = 120 },
    { gold = 12 }
}

-- Iron barrel finish on every weapon offering this shared component.
Config.prices.weapons.components.COMPONENT_LONGARM_BARREL_MATERIAL_1 = {
    { money = 30 }
}
```
:::

Collection choices such as full engravings are charged through their installed member components. Removal choices such as **None** and **Standard** are free. Components without a known name use the default component price; numeric hash keys are not accepted by the component price configuration.

## 4. FAQ

### Why is a weapon purchase refunded?

Check that the inventory item exists and is usable, that the player has enough inventory capacity, and that its name matches the catalogue. On VORP, also check its type and item limit. On RSG, install the missing item definitions from the installation tab.

### Why is a weapon missing from My weapons?

The menu lists serialized gunsmith weapons currently present in the inventory. Use an ordinary catalogue item once to adopt it. Weapons held in another inventory, thrown consumables and legacy VORP native weapons are not listed.

### Is dual wielding supported?

Dual wielding is not currently supported by `jo_gunsmith`. You can own multiple revolvers or pistols, but only one sidearm can be equipped at a time. Equipping another sidearm replaces the equipped one; the replaced weapon remains in your inventory.

VORP's `Config.DuelWield` option does not enable dual wielding for weapons managed by `jo_gunsmith`.

### Why are some customization choices disabled?

The model must offer that choice through the game's gunsmith data. Dependent decorations require an owned supporting component. Your server may also require cleaning before customization or hide choices through a developer filter.

### Why is weapon use handled twice on RSG?

Check that `rsg-weapons`, `rsg-weaponcomp` and `rsg-ammo` are stopped, including resources started by an `ensure [framework]` folder. Install the latest jo_libs release to use its RSG weapon-item bridge.

## 5. For developers

Start integration resources after `jo_gunsmith`. Hooks are registered through the [jo_libs hook module](/jo_libs/modules/hook/). Action callbacks return nothing. Filter callbacks return the replacement value.

Hook arguments cross resource boundaries as copied data tables: **do not call `Weapon`, `Ammo` or pricing class methods on them**. Use fields such as `weapon.model`, `weapon.serial`, `weapon.components`, `weapon.wear` and `weapon.ammo`. Catalogue weapons have no serial. Server filter arguments can be `nil` where validation has not succeeded.

### Exports

#### <Badge type="server" text="Server" /> giveWeapon

`exports.jo_gunsmith:giveWeapon(source, model, options)` gives an ordinary catalogue weapon without charging the player. `source` is the player server ID, `model` is its `WEAPON_*` name, and `options` is optional. The inventory item is delivered unequipped. The return value is its serial, or `nil, reason` on failure.

| Option | Type and behavior |
| --- | --- |
| `components` | Array of integer component hashes or `COMPONENT_*` names. The caller must check compatibility with the model. |
| `name` | String, normalized using the same rules as renaming. |
| `wear` | Table with `degradation`, `damage`, `dirt` and `soot`. Values are clamped to 0–1; omitted fields become 0. |
| `ammo` | `{ type = "AMMO_*", count = integer }`, with a non-negative count. The caller must check the ammunition type and clip capacity for the model. |

Failure reasons: `databaseNotReady`, `playerNotFound`, `weaponNotFound`, `thrownWeapon`, `invalidComponents`, `invalidName`, `invalidWear`, `invalidAmmo`, `weaponNotCreated`, `weaponNotDelivered`.

::: details Example — give a customized weapon
```lua
local serial, reason = exports.jo_gunsmith:giveWeapon(source, 'WEAPON_REVOLVER_CATTLEMAN', {
    components = { 'COMPONENT_REVOLVER_CATTLEMAN_BARREL_LONG' },
    name = 'Frontier revolver',
    ammo = { type = 'AMMO_REVOLVER', count = 3 }
})

if not serial then
    print(('Weapon delivery failed: %s'):format(reason))
end
```
:::

For thrown weapons, give the corresponding stackable inventory item through your framework instead. `giveWeapon` refuses them because they have no serial.

### Actions

#### <Badge type="server" text="Server" /> ammoBought

Runs after ammunition boxes are paid for and delivered. `price` is the total price; `quantity` counts boxes.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param box table — catalogue ammunition box
-- @param price table — total price
-- @param shopId string|number — shop ID
-- @param quantity integer — boxes purchased
exports.jo_gunsmith:registerAction('ammoBought', function(source, box, price, shopId, quantity)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> ammoLoaded

Runs after loaded ammunition is saved, for both item use and inventory reloading. `count` is the actual number of rounds transferred.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param box table — ammunition box data
-- @param count integer — transferred rounds
exports.jo_gunsmith:registerAction('ammoLoaded', function(source, weapon, box, count)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> componentBought

Runs after the entire component purchase is paid for and saved, once per purchased step. `items` lists that step's unsigned component hashes and `price` is that step's price.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param items integer[] — installed component hashes
-- @param price table — step price
exports.jo_gunsmith:registerAction('componentBought', function(source, weapon, items, price)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> equippedWeaponsRestored

Runs when ordinary equipped weapons are restored on login or resource restart, including an empty result. Each row carries `serial`, `model`, `name`, `category`, `components`, `wear` and `ammo`.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param rows table[] — restored weapon rows
exports.jo_gunsmith:registerAction('equippedWeaponsRestored', function(source, rows)
    -- Your code here
end)
```
:::

#### <Badge type="client" text="Client" /> shopClosed

Runs when the current shop begins closing, before preview and camera cleanup finishes.

::: details Callback example
```lua
-- @param shop table — shop data
exports.jo_gunsmith:registerAction('shopClosed', function(shop)
    -- Your code here
end)
```
:::

#### <Badge type="client" text="Client" /> shopOpened

Runs after the shop menu is displayed for an accepted interaction.

::: details Callback example
```lua
-- @param shop table — shop data
exports.jo_gunsmith:registerAction('shopOpened', function(shop)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponAdopted

Runs after an ordinary inventory weapon is adopted, including recreation of a missing serial's database row. `metadata` is the item's original metadata.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param metadata table — original inventory metadata
exports.jo_gunsmith:registerAction('weaponAdopted', function(source, weapon, metadata)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponBought

Runs after a purchased weapon is delivered. Ordinary weapons have a serial; thrown purchases provide catalogue data without a serial.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param price table — purchase price
-- @param shopId string|number — shop ID
exports.jo_gunsmith:registerAction('weaponBought', function(source, weapon, price, shopId)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponCleaned

Runs after cleaning is paid for and the restored wear values are saved.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param price table — cleaning price
exports.jo_gunsmith:registerAction('weaponCleaned', function(source, weapon, price)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponCreated

Runs after the database row and in-memory weapon are created, before inventory delivery and before optional export wear is applied. Delivery failure may subsequently delete this weapon. `purchase` carries `identifier`, `charid`, `price` and `shopId`, and may be nil.

::: details Callback example
```lua
-- @param weapon table — weapon data
-- @param purchase table|nil — purchase context
exports.jo_gunsmith:registerAction('weaponCreated', function(weapon, purchase)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponDeleted

Runs after the database row is deleted. This includes rollback of failed deliveries or adoptions; there is no public delete export.

::: details Callback example
```lua
-- @param weapon table — weapon data
exports.jo_gunsmith:registerAction('weaponDeleted', function(weapon)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponDrawn

Runs after the server requests drawing an already equipped weapon. Thrown weapons provide catalogue data.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
exports.jo_gunsmith:registerAction('weaponDrawn', function(source, weapon)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponEquipped

Runs after the server requests equipping an ordinary or thrown weapon. It does not confirm that the client animation or native equipment operation has finished.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
exports.jo_gunsmith:registerAction('weaponEquipped', function(source, weapon)
    -- Your code here
end)
```
:::

#### <Badge type="client" text="Client" /> weaponEquipped

Runs after an ordinary serialized weapon is equipped on the client, including restoration or refresh. `draw` indicates whether drawing was requested. Thrown weapons do not trigger this client action.

::: details Callback example
```lua
-- @param weapon table — weapon data
-- @param draw boolean — draw requested
exports.jo_gunsmith:registerAction('weaponEquipped', function(weapon, draw)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponOiled

Runs after gun oil is consumed and the new wear values are saved, for inventory or inspection cleaning.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param wear table — saved degradation, damage, dirt and soot
exports.jo_gunsmith:registerAction('weaponOiled', function(source, weapon, wear)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponPutAway

Runs when an ordinary weapon is unequipped or replaced. Reasons are `used`, `replaced`, `notGiven` and `itemRemoved`. Thrown weapons also trigger it when explicitly put away with reason `used`.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param reason string — removal reason
exports.jo_gunsmith:registerAction('weaponPutAway', function(source, weapon, reason)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponRenamed

Runs after the normalized name is saved and the inventory label update is attempted.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param name string — saved name
-- @param price table — rename price
exports.jo_gunsmith:registerAction('weaponRenamed', function(source, weapon, name, price)
    -- Your code here
end)
```
:::

#### <Badge type="client" text="Client" /> weaponUnequipped

Runs when an ordinary serialized weapon is removed or replaced on the client. Simply holstering it does not trigger this action.

::: details Callback example
```lua
-- @param weapon table — weapon data
exports.jo_gunsmith:registerAction('weaponUnequipped', function(weapon)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponUnloaded

Runs after unloaded ammunition is saved. `placed` is the number of rounds actually returned to the inventory, which can be less than the original load.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param placed integer — returned rounds
exports.jo_gunsmith:registerAction('weaponUnloaded', function(source, weapon, placed)
    -- Your code here
end)
```
:::

#### <Badge type="server" text="Server" /> weaponWearSaved

Runs when a periodic client wear report actually changes the saved wear. Other wear-saving paths do not trigger this action.

::: details Callback example
```lua
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param wear table — saved wear
exports.jo_gunsmith:registerAction('weaponWearSaved', function(source, weapon, wear)
    -- Your code here
end)
```
:::

### Filters

Permission filters should preserve existing refusals, for example `return allowed and yourCondition`. Returning true does not bypass every mandatory validation.

#### <Badge type="server" text="Server" /> canBuyAmmo

Runs after initial validation and before payment. `typeOrder` is `ammo`. The catalogue box and price may be nil on invalid requests; valid box, price and quantity remain mandatory.

::: details Callback example
```lua
-- @param allowed boolean — validation result
-- @param source number — player server ID
-- @param typeOrder string — ammo
-- @param box table|nil — ammunition box
-- @param price table|nil — selected price data
-- @param shopId string|number — shop ID
-- @param quantity integer — boxes requested
-- @return boolean
exports.jo_gunsmith:registerFilter('canBuyAmmo', function(allowed, source, typeOrder, box, price, shopId, quantity)
    return allowed
end)
```
:::

#### <Badge type="server" text="Server" /> canBuyComponent

Runs after mandatory component validation, before payment, once per purchase step. `typeOrder` is `component`. Return false to veto a valid step.

::: details Callback example
```lua
-- @param allowed boolean — initially true
-- @param source number — player server ID
-- @param typeOrder string — component
-- @param items integer[] — component hashes
-- @param price table — step price
-- @param weapon table — weapon data
-- @return boolean
exports.jo_gunsmith:registerFilter('canBuyComponent', function(allowed, source, typeOrder, items, price, weapon)
    return allowed
end)
```
:::

#### <Badge type="server" text="Server" /> canBuyWeapon

Runs after initial validation and before payment. `typeOrder` is `weapon`. Weapon and price may be nil; a ready database, valid catalogue weapon and price remain mandatory.

::: details Callback example
```lua
-- @param allowed boolean — validation result
-- @param source number — player server ID
-- @param typeOrder string — weapon
-- @param weapon table|nil — catalogue weapon
-- @param price table|nil — selected price data
-- @param shopId string|number — shop ID
-- @return boolean
exports.jo_gunsmith:registerFilter('canBuyWeapon', function(allowed, source, typeOrder, weapon, price, shopId)
    return allowed
end)
```
:::

#### <Badge type="server" text="Server" /> canCleanWeapon

Runs after cleaning validation and before charging the player. Weapon and price may be nil on an invalid request.

::: details Callback example
```lua
-- @param allowed boolean — validation result
-- @param source number — player server ID
-- @param weapon table|nil — weapon data
-- @param price table|nil — selected price data
-- @return boolean
exports.jo_gunsmith:registerFilter('canCleanWeapon', function(allowed, source, weapon, price)
    return allowed
end)
```
:::

#### <Badge type="server" text="Server" /> canEquipWeapon

Runs before a manual equip or draw request. `mode` is `equip`, `draw` or `thrown`; thrown weapons supply catalogue data. Automatic restoration and put-away operations do not run this filter.

::: details Callback example
```lua
-- @param allowed boolean — initially true
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param mode string — equip, draw or thrown
-- @return boolean
exports.jo_gunsmith:registerFilter('canEquipWeapon', function(allowed, source, weapon, mode)
    return allowed
end)
```
:::

#### <Badge type="server" text="Server" /> canLoadAmmo

Runs before ammunition is taken from inventory. Item use supplies the proposed transfer count; reload supplies available clip space, so fewer rounds may actually be loaded. When changing ammunition type, old rounds are returned before this hook.

::: details Callback example
```lua
-- @param allowed boolean — validation result
-- @param source number — player server ID
-- @param weapon table|nil — weapon data
-- @param box table|nil — ammunition box
-- @param count integer — proposed rounds or clip room
-- @return boolean
exports.jo_gunsmith:registerFilter('canLoadAmmo', function(allowed, source, weapon, box, count)
    return allowed
end)
```
:::

#### <Badge type="server" text="Server" /> canOilWeapon

Runs before consuming gun oil, for both inventory use and weapon inspection cleaning. The weapon must still be equipped and held in inventory; inventory removal and saving must succeed.

::: details Callback example
```lua
-- @param allowed boolean — validation result
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @return boolean
exports.jo_gunsmith:registerFilter('canOilWeapon', function(allowed, source, weapon)
    return allowed
end)
```
:::

#### <Badge type="server" text="Server" /> canOpenShop

Runs on the server when the client requests opening a shop, before the menu opens. The bridge adds the player's server ID to the callback.

::: details Callback example
```lua
-- @param allowed boolean — initially true
-- @param source number — player server ID
-- @param shopId string|number — shop ID
-- @return boolean
exports.jo_gunsmith:registerFilter('canOpenShop', function(allowed, source, shopId)
    return allowed
end)
```
:::

#### <Badge type="server" text="Server" /> canRenameWeapon

Runs before payment, after normalization and the `weaponName` filter. `name` may be nil if invalid.

::: details Callback example
```lua
-- @param allowed boolean — validation result
-- @param source number — player server ID
-- @param weapon table|nil — weapon data
-- @param name string|nil — normalized name
-- @param price table|nil — selected price data
-- @return boolean
exports.jo_gunsmith:registerFilter('canRenameWeapon', function(allowed, source, weapon, name, price)
    return allowed
end)
```
:::

#### <Badge type="server" text="Server" /> canSaveWeaponWear

Runs before processing a periodic client wear report. Other refresh, cleaning and oil paths do not pass through this filter.

::: details Callback example
```lua
-- @param allowed boolean — initially true
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param wear table — reported wear
-- @return boolean
exports.jo_gunsmith:registerFilter('canSaveWeaponWear', function(allowed, source, weapon, wear)
    return allowed
end)
```
:::

#### <Badge type="client" text="Client" /> canSeeAmmoInShop

Controls ammunition visibility in shop lists and category counts. It does not authorize a server-side purchase; use `canBuyAmmo` for that.

::: details Callback example
```lua
-- @param visible boolean — current visibility
-- @param box table — catalogue ammunition box
-- @param shopId string|number — shop ID
-- @return boolean
exports.jo_gunsmith:registerFilter('canSeeAmmoInShop', function(visible, box, shopId)
    return visible
end)
```
:::

#### <Badge type="client" text="Client" /> canSeeBlipForShop

Controls creation of a configured shop blip during client initialization. It does not control access to the shop.

::: details Callback example
```lua
-- @param visible boolean — initially true
-- @param shop table — shop data
-- @param blipConfig table — shop blip configuration
-- @return boolean
exports.jo_gunsmith:registerFilter('canSeeBlipForShop', function(visible, shop, blipConfig)
    return visible
end)
```
:::

#### <Badge type="client" text="Client" /> canSeeWeaponInShop

Controls weapon visibility in shop lists and category counts. It does not authorize a server-side purchase; use `canBuyWeapon` for that.

::: details Callback example
```lua
-- @param visible boolean — current visibility
-- @param weapon table — catalogue weapon
-- @param shopId string|number — shop ID
-- @return boolean
exports.jo_gunsmith:registerFilter('canSeeWeaponInShop', function(visible, weapon, shopId)
    return visible
end)
```
:::

#### <Badge type="server" text="Server" /> canUnloadWeapon

Runs before returning loaded rounds to the inventory. `ammo` is `{ type, count }` or nil; weapon data may also be nil on an invalid request.

::: details Callback example
```lua
-- @param allowed boolean — validation result
-- @param source number — player server ID
-- @param weapon table|nil — weapon data
-- @param ammo table|nil — loaded ammunition
-- @return boolean
exports.jo_gunsmith:registerFilter('canUnloadWeapon', function(allowed, source, weapon, ammo)
    return allowed
end)
```
:::

#### <Badge type="client" text="Client" /> customizationParts

Controls the presented customization parts. Each part carries `labelHash` and `pages`; pages contain their option rows. Return an array, for example after removing hidden parts. This presentation filter does not add server permission checks.

::: details Callback example
```lua
-- @param parts table[] — parts with pages and rows
-- @param weapon table — weapon data
-- @return table
exports.jo_gunsmith:registerFilter('customizationParts', function(parts, weapon)
    return parts
end)
```
:::

#### <Badge type="client" text="Client" /> homeMenuItems

Changes the shop home menu's item definitions before the menu is created. Return the item array.

::: details Callback example
```lua
-- @param items table[] — jo.menu item definitions
-- @param shop table — shop data
-- @return table
exports.jo_gunsmith:registerFilter('homeMenuItems', function(items, shop)
    return items
end)
```
:::

#### <Badge type="client" text="Client" /> manageWeaponMenuItems

Changes the Manage menu's item definitions. Built-in items use `data.action` values `clean`, `customize`, `unload` and `rename`; retain those values if you want their built-in updates to apply.

::: details Callback example
```lua
-- @param items table[] — jo.menu item definitions
-- @param weapon table — weapon data
-- @return table
exports.jo_gunsmith:registerFilter('manageWeaponMenuItems', function(items, weapon)
    return items
end)
```
:::

#### <Badge type="server" text="Server" /> overwritePrice

Runs before payment. Return price data accepted by `jo.pricing.new`. The copied input has `costs`; reconstruct a jo.pricing instance in your resource if you need class operations. Extra arguments depend on `typeOrder`, as listed below.

::: details Callback example
```lua
-- @param price table — selected price data
-- @param typeOrder string — operation
-- @param source number — player server ID
-- @param ... any — operation-specific arguments
-- @return table
exports.jo_gunsmith:registerFilter('overwritePrice', function(price, typeOrder, source, ...)
    return price
end)
```
:::

#### <Badge type="server" text="Server" /> weaponName

Changes a normalized rename request before validation and payment. Return a string, or nil to reject it. The result is normalized again and remains limited to 32 characters.

::: details Callback example
```lua
-- @param name string — normalized requested name
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @return string|nil
exports.jo_gunsmith:registerFilter('weaponName', function(name, source, weapon)
    return name
end)
```
:::

#### <Badge type="server" text="Server" /> weaponSerial

Changes a generated serial before database insertion. Return a non-empty string of at most 32 bytes; an invalid result keeps the generated serial. Collisions are retried up to three times. This callback has no source parameter.

::: details Callback example
```lua
-- @param serial string — generated serial
-- @param weapon table — weapon data
-- @return string
exports.jo_gunsmith:registerFilter('weaponSerial', function(serial, weapon)
    return serial
end)
```
:::

#### <Badge type="client" text="Client" /> weaponStatistics

Changes the statistics shown in shop and owned-weapon previews. Return the array of jo.menu statistics definitions, with fields such as `label`, `type` and `value`.

::: details Callback example
```lua
-- @param statistics table[] — statistics definitions
-- @param weapon table — weapon data
-- @return table
exports.jo_gunsmith:registerFilter('weaponStatistics', function(statistics, weapon)
    return statistics
end)
```
:::

#### <Badge type="server" text="Server" /> weaponWear

Changes wear during normal recorded-wear persistence, after its monotonic wear rules are applied. Return a table with `degradation`, `damage`, `dirt` and `soot`; values are clamped to 0–1. A non-table result is ignored. Direct cleaning and oil updates do not run this filter.

::: details Callback example
```lua
-- @param wear table — prepared wear
-- @param source number — player server ID
-- @param weapon table — weapon data
-- @param reported table — original reported wear
-- @return table
exports.jo_gunsmith:registerFilter('weaponWear', function(wear, source, weapon, reported)
    return wear
end)
```
:::

#### overwritePrice contexts

| `typeOrder` | Arguments after `source` | Price scope |
| --- | --- | --- |
| `weapon` | `weapon, priceIndex` | One catalogue weapon. |
| `ammo` | `box, priceIndex, quantity` | Total for all requested boxes; multiplication happens before the filter. |
| `component` | `items, priceIndex` | One step of a component purchase. |
| `rename` | `weapon, priceIndex` | Rename service. |
| `clean` | `weapon, priceIndex` | Cleaning service, already scaled by wear. |
