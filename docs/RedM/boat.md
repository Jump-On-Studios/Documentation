---
outline: [2,4]
---

# :canoe: Boats

Documentation related to the `jo_boats` script.

`jo_boats` provides a persistent boat ownership system with shops, previews, multiple payment options, customization, storage, damage and repairs, anchoring, docking, and support for carriable and large boats.

:::: tabs
::: tab BUY
[Buy it on the shop](https://SHOP_URL)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="PREVIEW_URL" title="RedM - Boats" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation

`jo_boats` works with all frameworks supported by the [`jo_libs` framework bridge](/jo_libs/modules/framework-bridge/#compatible-frameworks).

The script requires:

- `jo_libs` version `2.5.2` or newer
- `oxmysql`

To install `jo_boats`:

1. Download the latest [`jo_libs`](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip) release.
2. Unzip it and place the `jo_libs` folder in your resources folder.
3. Download `jo_boats` from your [account](https://jumpon-studios.com/account).
4. Unzip it and place the `jo_boats` folder in your resources folder.
5. Start the resources in this order in your `server.cfg`:

```cfg
ensure jo_libs
ensure jo_boats
```

:::tip No SQL file required
The script automatically creates the `jo_boats` database table on its first startup.
:::

The **Boats** script is now ready to use.

## 2. Usage

Players buy and manage their boats from configured boat shops. Purchased boats, their names, customizations, health, storage, last garage, and anchor position are persisted by the server.

:::: tabs
::: tab Buying a boat
1. Go to a boat shop. Enabled shops are displayed on the map by default.
2. Approach the seller and press `ENTER` to open the shop.
3. Select **Buy a boat**.
4. Choose a boat category, then select a model.
5. Use the preview and statistics panel to compare the boat's health, storage, speed, and number of seats.
6. If several payment options are configured, press `B` to switch between them.
7. Hold `ENTER` to purchase the selected boat.

The boat is added to **Manage your boats** at the shop where it was purchased. It is not spawned automatically.

**Shop availability:** A shop can disable purchases or restrict its catalog with `canBuyBoats` and `availableBoats` in `shops.lua`.
:::

::: tab Spawning and docking
### Spawn a boat

1. Open a boat shop and select **Manage your boats**.
2. Select one of your stored boats.
3. Hold `E` to spawn it and enter the driver seat.

A boat cannot be spawned when:

- It is already in the world.
- It is wrecked and must be repaired.
- The player has reached `Config.maxSpawnByPlayer`.
- Another vehicle blocks the spawn area within `Config.distanceSafeSpawn`.
- `Config.bindBoatToGarage = true` and the boat is stored at another shop.

### Dock a boat

1. Drive near a configured shop spawn point.
2. Make sure the boat is not anchored.
3. Press `ENTER` when the **Dock** prompt appears.

Docking removes the boat from the world and stores its current shop ID. When `Config.bindBoatToGarage = true`, that shop becomes the only shop from which the boat can be retrieved.
:::

::: tab Customizing and managing
Open **Manage your boats**, select a stored boat, then press `ENTER` to edit it.

Depending on the selected model, the menu can provide:

- **Propsets** — Add or remove model propsets.
- **Liveries** — Change the boat livery.
- **Tints** — Change the boat tint.
- **Lanterns** — Add or remove a lantern propset.
- **Extras** — Enable or disable detected model extras.
- **Repair** — Restore the boat's body health and, for motorboats, engine and petrol-tank health.
- **Rename** — Change the boat name when `Config.canRenameBoat = true`.
- **Bequeath** — Transfer ownership to another connected player by server ID. The boat must be stored.
- **Destroy** — Permanently delete the boat after entering its name as confirmation.

Customization options only appear when they are supported by the selected model. Removing a customization is free; buying one uses the configured category, model, or model-and-index price.

The repair price is proportional to the boat's missing health and stays between the configured minimum and maximum prices.
:::

::: tab Driving and anchoring
The driver can use the prompts displayed at the bottom right of the screen.

- Press `R` to anchor the boat at its current location.
- Press `R` again to raise the anchor.
- Press `ENTER` near a boat-shop spawn point to dock the boat.
- Press `O` to open storage while driving when the model allows it.

The boat must be in a valid location before it can be anchored. An anchored boat cannot be docked.

Large boats use their configured `entrancePosition` for safe boarding and driver exit:

- Approach the entrance and hold `E` to board.
- While driving, hold `E` to leave at the configured entrance point.

Other boats continue to use the game's native boarding and exit behavior.
:::

::: tab Storage
Boat storage is configured separately for each model.

### Open storage from the boat

1. Stand near the model's configured `storagePosition`.
2. Press `O` when the **Storage** prompt appears.

### Open storage while driving

The driver can press `O` while aboard when all these conditions are met:

- The boat has a storage configuration.
- `canOpenStorageWhileDriving` is not `false` for the model.
- The player is allowed to access the storage.

By default, `Config.restrictStorageToOwner = true`, so only the owner can open the inventory. Set it to `false` to allow any player, or use the `canOpenBoatStorage` filter for custom rules.

Storage capacity, slot count, and weapon support come from the model's `storage` configuration.
:::

::: tab Carrying small boats
Models with `carriable = true` can be carried manually.

1. Approach an eligible boat on foot.
2. Press `ENTER` to pick it up.
3. Press `ENTER` again to drop it.

A boat cannot be picked up when it is:

- Wrecked or anchored
- Occupied by a driver or passenger
- Moving faster than `0.5`
- Already attached or carried
- Too far from the player

The player must be on foot and cannot be climbing, jumping, falling, swimming, incapacitated, in a vehicle, on a mount, or already carrying something. The `canCarryBoat` filter can add restrictions, but it cannot bypass these safety checks.
:::
::::

### Default controls

| Key | Context | Action |
| --- | --- | --- |
| `ENTER` | Shop | Open the shop, confirm a purchase, edit a stored boat |
| `ENTER` | World | Dock, carry, or drop a boat |
| `E` | Boat list / large boat | Spawn and drive, board, or use the safe exit |
| `B` | Priced menu | Switch between payment options |
| `R` | Driving | Anchor or raise the anchor |
| `O` | Boat | Open storage |

:::tip Persistence
Purchased boats and their customizations are always persisted. Damage is saved when the authoritative client removes the world entity. If `Config.persitAnchored = true`, anchored positions are persisted and the script can respawn those boats when a player comes within range.
:::

## 3. Configuration

<ScriptConfig scriptPath="redm/boats" />


### Customization price priority

Customization prices are resolved from the most specific entry to the most general one:

1. `Config.modelPrices[category]["model:index"]`
2. `Config.modelPrices[category]["model"]`
3. `Config.prices.customs[category]`

For example, `Config.modelPrices["lanterns"]["rowboat:2"]` only changes the price of lantern index `2` for the `rowboat` model.

Use the [Price Generator](/DeveloperResources/price-generator) to build compatible money, gold, role-currency, item, combination, and alternative-payment price tables.

### Blip override priority

`Config.blips.shop` and `Config.blips.boat` define global defaults. Individual shops and boat models can override `enabled`, `name`, `sprite`, or `color` with their own `blip` table. Disabling a global category disables all blips in that category.

## 4. FAQ

:::details Why can't I spawn my boat?

Check the status displayed in **Manage your boats**. A boat cannot spawn if it is already out, is wrecked, the player reached `Config.maxSpawnByPlayer`, or another vehicle is within `Config.distanceSafeSpawn` of the spawn point. When `Config.bindBoatToGarage = true`, also make sure you are visiting the shop where the boat was last docked.
:::

:::details Why is my boat missing from this shop?

When `Config.bindBoatToGarage = true`, each shop only lists boats whose stored `shopId` matches that shop. Visit the shop where the boat was purchased or last docked. Set the option to `false` to list all owned boats at every shop.
:::

:::details Why can't I dock an anchored boat?

Raise the anchor with `R` before docking. The player must also own the boat, drive near a configured shop spawn point, and use the **Dock** prompt.
:::

:::details Why can't I open the storage?

The model must have a `storage` table and a valid `storagePosition`. When `Config.restrictStorageToOwner = true`, only the owner can open it. Opening storage while driving additionally requires the driver seat and `canOpenStorageWhileDriving` to be enabled for that model.
:::

:::details What happens when a boat is wrecked?

When `Config.canBoatsBeDamaged = true`, a destroyed boat is marked as wrecked and removed from the world. Its anchor is cleared, and it cannot be spawned again until its owner repairs it from **Manage your boats**. Repair cost is calculated from the missing body, engine, and petrol-tank health supported by the model.
:::

:::details Do anchored boats remain after logout or restart?

With `Config.persitAnchored = true`, anchored boats are not despawned by the logout cleanup and their locations remain in the database. If the world entity is missing, the script attempts to respawn it when a player is within `200` meters. With the option disabled, anchored boats are treated like other spawned boats during logout cleanup.
:::

:::details Why is a customization category missing?

The edit menu only displays categories supported by the model's customization data. Extras are detected from the model dynamically. A model without compatible propsets, liveries, tints, lanterns, or extras will not show that category.
:::

:::details Do I need to import an SQL file?

No. `jo_boats` creates its database table automatically when `oxmysql` is ready.
:::

## 5. For developers

`jo_boats` exposes [Actions](/DeveloperResources/actions) and [Filters](/DeveloperResources/filters) through the hook system. The callbacks and network events used internally by the resource are not part of the public API.

### Actions

Actions run after a script operation or client interaction. Their callbacks do not return a value.

#### <Badge type="server" text="Server" /> boatAnchored

Triggered after a boat is anchored or its anchor is raised.

When an anchored boat is wrecked, this action is also triggered with `anchored = nil` and `shouldAnchor = false` before `boatWrecked`.

```lua
-- @param source - integer server ID of the owner
-- @param boat - Boat updated boat instance
-- @param anchored - vector4|nil saved anchor position
-- @param shouldAnchor - boolean true when anchoring, false when raising the anchor
exports.jo_boats:registerAction("boatAnchored", function(source, boat, anchored, shouldAnchor)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatBequeathed

Triggered after ownership has been transferred to another connected player.

```lua
-- @param source - integer server ID of the previous owner
-- @param boat - Boat transferred boat instance with its updated owner
-- @param targetId - integer server ID of the new owner
exports.jo_boats:registerAction("boatBequeathed", function(source, boat, targetId)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatBought

Triggered after a boat has been paid for, created, passed through the `boatBought` filter, and persisted.

```lua
-- @param source - integer server ID of the buyer
-- @param boat - Boat purchased boat instance
-- @param price - PriceClass price paid by the buyer
-- @param boatData - table purchase data received from the client
exports.jo_boats:registerAction("boatBought", function(source, boat, price, boatData)
    -- Your code here
end)
```

:::info Action and filter with the same name
`boatBought` also exists as a filter. The filter runs first and can replace the boat instance passed to this action.
:::

#### <Badge type="client" text="Client" /> boatCarried

Triggered after the local player successfully attaches a carriable boat.

```lua
-- @param boat - Boat carried boat instance
-- @param entity - integer boat entity handle
exports.jo_boats:registerAction("boatCarried", function(boat, entity)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatDeleted

Triggered after a boat has been permanently removed from persistence and synchronized to clients.

```lua
-- @param source - integer server ID of the owner
-- @param boatId - integer deleted boat ID
exports.jo_boats:registerAction("boatDeleted", function(source, boatId)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatDespawned

Triggered when a tracked boat entity is removed. If it was removed near a shop, its stored shop ID has already been updated.

This action does not receive a player `source` because entity removal may happen without a player operation.

```lua
-- @param boat - Boat despawned boat instance
-- @param nearestShop - table|nil nearest shop when the entity was removed
exports.jo_boats:registerAction("boatDespawned", function(boat, nearestShop)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatDocked

Triggered after a docking request is accepted and the boat entity is scheduled for removal.

```lua
-- @param source - integer server ID of the owner
-- @param boat - Boat docked boat instance
-- @param shopId - string destination shop ID
exports.jo_boats:registerAction("boatDocked", function(source, boat, shopId)
    -- Your code here
end)
```

#### <Badge type="client" text="Client" /> boatDropped

Triggered after the local player drops a carried boat that still has a valid world entity.

```lua
-- @param boat - Boat dropped boat instance
-- @param entity - integer boat entity handle
exports.jo_boats:registerAction("boatDropped", function(boat, entity)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatHealthSaved

Triggered after the authoritative client health values have been validated and persisted.

```lua
-- @param source - integer server ID of the authoritative client
-- @param boat - Boat updated boat instance
-- @param engineHealth - number reported engine health
-- @param petrolTankHealth - number reported petrol-tank health
-- @param bodyHealth - number reported body health
exports.jo_boats:registerAction("boatHealthSaved", function(source, boat, engineHealth, petrolTankHealth, bodyHealth)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatRenamed

Triggered after a boat name has been filtered, saved, and synchronized.

```lua
-- @param source - integer server ID of the owner
-- @param boat - Boat renamed boat instance
-- @param name - string final saved name
exports.jo_boats:registerAction("boatRenamed", function(source, boat, name)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatRepaired

Triggered after a boat has been paid for and restored to full supported health.

```lua
-- @param source - integer server ID of the owner
-- @param boat - Boat repaired boat instance
-- @param price - PriceClass price paid for the repair
exports.jo_boats:registerAction("boatRepaired", function(source, boat, price)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatSpawned

Triggered after the client-created boat entity has replicated and been linked to its server boat instance.

```lua
-- @param source - integer server ID of the spawning client
-- @param boat - Boat spawned boat instance
-- @param netId - integer network ID of the boat entity
exports.jo_boats:registerAction("boatSpawned", function(source, boat, netId)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatStorageOpened

Triggered after the boat inventory has been created and opened for a player.

```lua
-- @param source - integer server ID of the player
-- @param boat - Boat boat whose storage was opened
-- @param inventoryId - string inventory ID in the form "jo_boats_<boatId>"
exports.jo_boats:registerAction("boatStorageOpened", function(source, boat, inventoryId)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> boatWrecked

Triggered after a wrecked boat has been marked for despawn and its anchor has been cleared.

```lua
-- @param source - integer server ID of the authoritative client
-- @param boat - Boat wrecked boat instance
-- @param wasAnchored - boolean whether the boat was anchored before being wrecked
exports.jo_boats:registerAction("boatWrecked", function(source, boat, wasAnchored)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> customizationBought

Triggered after a customization has been applied and persisted. Removing a customization also triggers this action.

```lua
-- @param source - integer server ID of the owner
-- @param boat - Boat customized boat instance
-- @param category - string "tints", "propsets", "liveries", "lanterns", or "extras"
-- @param value - number/hash selected customization value
exports.jo_boats:registerAction("customizationBought", function(source, boat, category, value)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> playerEnteredBoat

Triggered when a player enters a tracked boat. A seat change inside the same boat does not trigger it again.

```lua
-- @param source - integer server ID of the player
-- @param boatId - integer entered boat ID
-- @param isDriver - boolean whether the player entered as driver
exports.jo_boats:registerAction("playerEnteredBoat", function(source, boatId, isDriver)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> playerLeftBoat

Triggered when a player leaves a tracked boat or moves directly to a different tracked boat.

```lua
-- @param source - integer server ID of the player
-- @param previousBoatId - integer boat ID the player left
exports.jo_boats:registerAction("playerLeftBoat", function(source, previousBoatId)
    -- Your code here
end)
```

#### <Badge type="client" text="Client" /> shopOpened

Triggered after the local player opens a boat shop.

```lua
-- @param shop - table opened shop configuration
exports.jo_boats:registerAction("shopOpened", function(shop)
    -- Your code here
end)
```

### Filters

Filters synchronously control permissions or replace values used by the script. Always return the value expected by the filter.

#### <Badge type="server" text="Server" /> boatBought

Replaces the boat instance immediately after it is created and before the `boatBought` action and callback response.

```lua
-- @param boat - Boat newly created boat instance
-- @param source - integer server ID of the buyer
-- @param boatData - table purchase data received from the client
-- @return Boat boat instance passed to the action and callback response
exports.jo_boats:registerFilter("boatBought", function(boat, source, boatData)
    return boat
end)
```

#### <Badge type="server" text="Server" /> canAnchorBoat

Controls whether an owner can change a spawned boat's anchor state.

```lua
-- @param canAnchor - boolean result of the built-in validation
-- @param source - integer server ID of the owner
-- @param boat - Boat|nil boat instance
-- @param shouldAnchor - boolean requested anchor state
-- @param anchored - vector4|nil proposed anchor position
exports.jo_boats:registerFilter("canAnchorBoat", function(canAnchor, source, boat, shouldAnchor, anchored)
    return canAnchor
end)
```

#### <Badge type="server" text="Server" /> canBequeathBoat

Controls whether a player can transfer a boat to another connected player.

```lua
-- @param canBequeath - boolean result of the built-in validation
-- @param source - integer server ID of the current owner
-- @param boat - Boat|nil boat instance
-- @param targetId - integer|nil target server ID
exports.jo_boats:registerFilter("canBequeathBoat", function(canBequeath, source, boat, targetId)
    return canBequeath
end)
```

#### <Badge type="server" text="Server" /> canBuyBoat

Controls whether a player can buy a selected boat after its model and price have been resolved and before payment.

```lua
-- @param canBuy - boolean result of the built-in validation
-- @param source - integer server ID of the buyer
-- @param typeOrder - string "boat"
-- @param boatConfig - table selected model configuration
-- @param price - PriceClass selected and overwritten price
-- @param boatData - table purchase data received from the client
exports.jo_boats:registerFilter("canBuyBoat", function(canBuy, source, typeOrder, boatConfig, price, boatData)
    return canBuy
end)
```

#### <Badge type="server" text="Server" /> canBuyCustomization

Controls whether a player can apply or remove a customization after category, ownership, and value validation.

```lua
-- @param canBuy - boolean result of the built-in validation
-- @param source - integer server ID of the owner
-- @param boat - Boat|nil boat instance
-- @param category - string customization category
-- @param value - number/hash selected value
exports.jo_boats:registerFilter("canBuyCustomization", function(canBuy, source, boat, category, value)
    return canBuy
end)
```

#### <Badge type="client" text="Client" /> canCarryBoat

Adds custom restrictions before the local player carries a boat.

:::warning Safety checks cannot be bypassed
This filter runs only after the script has verified the boat, player state, distance, movement, occupants, wreck, and anchor conditions. Returning `true` cannot bypass those checks.
:::

```lua
-- @param canCarry - boolean true by default
-- @param boat - Boat boat instance
exports.jo_boats:registerFilter("canCarryBoat", function(canCarry, boat)
    return canCarry
end)
```

#### <Badge type="server" text="Server" /> canDeleteBoat

Controls whether a player can permanently delete a boat.

```lua
-- @param canDelete - boolean result of the built-in validation
-- @param source - integer server ID of the player
-- @param boat - Boat|nil boat instance
exports.jo_boats:registerFilter("canDeleteBoat", function(canDelete, source, boat)
    return canDelete
end)
```

#### <Badge type="server" text="Server" /> canDockBoat

Controls whether an owner can dock a spawned, unanchored boat.

```lua
-- @param canDock - boolean result of the built-in validation
-- @param source - integer server ID of the player
-- @param boat - Boat|nil boat instance
-- @param shopId - string destination shop ID
exports.jo_boats:registerFilter("canDockBoat", function(canDock, source, boat, shopId)
    return canDock
end)
```

#### <Badge type="server" text="Server" /> canOpenBoatStorage

Controls whether a player can open a spawned boat's configured inventory.

```lua
-- @param canOpen - boolean result of the built-in validation
-- @param source - integer server ID of the player
-- @param boat - Boat|nil boat instance
-- @param storageConfig - table|false model storage configuration
exports.jo_boats:registerFilter("canOpenBoatStorage", function(canOpen, source, boat, storageConfig)
    return canOpen
end)
```

#### <Badge type="client" text="Client" /> canOpenShop

Controls whether the local player can open a shop.

```lua
-- @param canOpen - boolean true by default
-- @param shop - table shop configuration
exports.jo_boats:registerFilter("canOpenShop", function(canOpen, shop)
    return canOpen
end)
```

#### <Badge type="server" text="Server" /> canRenameBoat

Controls whether a player can rename a boat after name, existence, and ownership validation.

```lua
-- @param canRename - boolean result of the built-in validation
-- @param source - integer server ID of the player
-- @param boat - Boat|nil boat instance
exports.jo_boats:registerFilter("canRenameBoat", function(canRename, source, boat)
    return canRename
end)
```

#### <Badge type="server" text="Server" /> canRepairBoat

Controls whether an owner can repair a stored boat.

```lua
-- @param canRepair - boolean result of the built-in validation
-- @param source - integer server ID of the player
-- @param boat - Boat|nil boat instance
exports.jo_boats:registerFilter("canRepairBoat", function(canRepair, source, boat)
    return canRepair
end)
```

#### <Badge type="server" text="Server" /> canSaveBoatHealth

Controls whether reported health values can be persisted when a world boat is removed.

```lua
-- @param canSave - boolean result of the built-in validation
-- @param source - integer server ID of the authoritative client
-- @param boat - Boat|nil boat instance
-- @param engineHealth - number|nil reported engine health
-- @param petrolTankHealth - number|nil reported petrol-tank health
-- @param bodyHealth - number|nil reported body health
exports.jo_boats:registerFilter("canSaveBoatHealth", function(canSave, source, boat, engineHealth, petrolTankHealth, bodyHealth)
    return canSave
end)
```

#### <Badge type="client" text="Client" /> canSeeBlipForBoat

Controls whether a spawned boat blip is visible to the local player.

```lua
-- @param canSee - boolean true by default
-- @param boat - Boat spawned boat instance
-- @param blipConfig - table resolved blip configuration
exports.jo_boats:registerFilter("canSeeBlipForBoat", function(canSee, boat, blipConfig)
    return canSee
end)
```

#### <Badge type="client" text="Client" /> canSeeBlipForShop

Controls whether a configured shop blip is visible to the local player.

```lua
-- @param canSee - boolean true by default
-- @param shop - table shop configuration
-- @param blipConfig - table resolved blip configuration
exports.jo_boats:registerFilter("canSeeBlipForShop", function(canSee, shop, blipConfig)
    return canSee
end)
```

#### <Badge type="server" text="Server" /> canSpawnBoat

Controls whether a player can spawn a boat after ownership, world state, wreck, and spawn-limit validation.

```lua
-- @param canSpawn - boolean result of the built-in validation
-- @param source - integer server ID of the player
-- @param boat - Boat|nil boat instance
exports.jo_boats:registerFilter("canSpawnBoat", function(canSpawn, source, boat)
    return canSpawn
end)
```

#### <Badge type="server" text="Server" /> overwritePrice

Replaces the resolved `PriceClass` before the player is charged. The arguments after `source` depend on `typeOrder`.

| Operation | `typeOrder` | Arguments after `source` |
| --- | --- | --- |
| Buy a boat | `"boat"` | `boatConfig, priceIndex, boatData` |
| Rename a boat | `"renameBoat"` | `boatId, name, priceIndex` |
| Buy a customization | `"tints"`, `"propsets"`, `"liveries"`, `"lanterns"`, or `"extras"` | `boatId, value, priceIndex` |
| Repair a boat | `"repairBoat"` | `boat, priceIndex` |

```lua
-- @param price - PriceClass resolved price
-- @param typeOrder - string operation type from the table above
-- @param source - integer server ID of the player
-- @param ... - operation-specific arguments from the table above
-- @return PriceClass price charged to the player
exports.jo_boats:registerFilter("overwritePrice", function(price, typeOrder, source, ...)
    return price
end)
```

#### <Badge type="server" text="Server" /> renameBoat

Replaces the trimmed boat name after payment and before it is persisted.

```lua
-- @param name - string requested boat name
-- @param source - integer server ID of the owner
-- @param boatId - integer boat ID
-- @return string final name to save
exports.jo_boats:registerFilter("renameBoat", function(name, source, boatId)
    return name
end)
```

#### <Badge type="server" text="Server" /> updateMaxRefSpawnedByPlayer

Changes the maximum number of boats this player can have spawned at once.

```lua
-- @param maxSpawned - integer value from Config.maxSpawnByPlayer
-- @param typeRef - string "boat"
-- @param source - integer server ID of the player
-- @return integer maximum spawned boats for this player
exports.jo_boats:registerFilter("updateMaxRefSpawnedByPlayer", function(maxSpawned, typeRef, source)
    return maxSpawned
end)
```

## 6. Snippets

### Restrict boat purchases by job

This server-side filter only allows fishermen to purchase boats while preserving every built-in validation failure.

```lua
exports.jo_boats:registerFilter("canBuyBoat", function(canBuy, source, typeOrder, boatConfig, price, boatData)
    if not canBuy then return false end

    local job = jo.framework:getJob(source)
    if job ~= "fisherman" then
        jo.notif.rightError(source, "Only fishermen can buy boats.")
        return false
    end

    return true
end)
```

### Apply a boat-purchase discount

This example applies a 20% discount to boat purchases and leaves every other operation unchanged.

```lua
exports.jo_boats:registerFilter("overwritePrice", function(price, typeOrder, source, ...)
    if typeOrder == "boat" then
        return price * 0.8
    end

    return price
end)
```

### Customize boat-storage permissions

This example preserves missing-storage validation, keeps normal owner access, and additionally lets fishermen open boat storage.

```lua
exports.jo_boats:registerFilter("canOpenBoatStorage", function(canOpen, source, boat, storageConfig)
    if not boat or type(storageConfig) ~= "table" then
        return false
    end

    if canOpen then
        return true
    end

    return jo.framework:getJob(source) == "fisherman"
end)
```
