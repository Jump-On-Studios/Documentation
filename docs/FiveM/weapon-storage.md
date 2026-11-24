# <img src="/images/gunrack.webp" /> Weapon storage
Documentation relating to the jo_gunrack.

<BuyScript script="fivem/weapon-storage" />

## 1. Installation
Be sure you installed the required dependencies :
- For ESX : [ox_target](https://github.com/overextended/ox_target/tree/main)
- For QBCore : qb_target
- [oxmysql](https://github.com/overextended/oxmysql)

To install jo_gunrack:
- Drag and drop the resource into your resources folder
  - jo_gunrack 
- Add this ensure in your server.cfg
  - `ensure jo_gunrack`
- Declare the items of `Config.placeableItems` in your inventory. See [Player weapon storages](#player-weapon-storages).

The database tables are created at the first start.

Congratulation, the **Weapon storage** script is ready to be used!

## 2. Usage
Go to one of the locations to see the weapon storage. Press the 3rd eye key to interact with it.

### Player weapon storages
Players can place their own weapon storage with an item:
- Use the item. A preview follows your aim. The controls are shown on screen.
- Validate to place it. It stays after a restart.
- To get the item back, use the 3rd eye and choose **Pick up the gunrack**. The storage must be empty.

A placed storage is only visible in the instance of the player. By default, the instance is the routing bucket. To use your own house ids, use the `getGunrackInstance` [filter](#filters).

By default, only the player who placed a storage can pick it up. This player can also take every weapon in it.

Declare the items in your inventory. Example for `jo_gunrack_locker`:
::: code-group
```lua [qb-core]
-- qb-core/shared/items.lua
jo_gunrack_locker = { name = 'jo_gunrack_locker', label = 'Gun locker', weight = 5000, type = 'item', image = 'jo_gunrack_locker.png', unique = false, useable = true, shouldClose = true, description = 'A gun locker to place in your house' },
```
```lua [ox_inventory]
-- ox_inventory/data/items.lua
['jo_gunrack_locker'] = { label = 'Gun locker', weight = 5000, stack = true, close = true },
```
```sql [ESX]
INSERT INTO items (name, label, weight) VALUES ('jo_gunrack_locker', 'Gun locker', 5);
```
:::
With qs-inventory or core_inventory, declare it like any usable item.

## 3. Script configuration
<ScriptConfig scriptPath="fivem/weapon-storage" />

- `gunracks.lua`: the storages at fixed locations. `/createGunRack` generates an entry.
- `items.lua`: the items to place a storage (`Config.placeableItems`).
- `global.lua`: `Config.placement.maxDistance` is the max placing distance.

:::warning Update from 1.5.x
`overwriteConfig.lua` and `overwriteLang.lua` are deprecated. They still work for now. Move your values to `config/custom`.
:::

### Custom weapons you can't take
Some addon weapons have no collision data, so the 3rd eye can't target them. Map them to a native weapon with a similar shape. The script then uses its collision.

Copy `global.lua` into `config/custom` and edit `Config.fixUntargetableWeapon`. Use lowercase model names:
```lua
Config.fixUntargetableWeapon = {
  ["your_custom_weapon_model"] = "similar_native_weapon_model",
}
```

## 4. For developers

### Exports

#### <Badge type="shared" text="Shared" /> Get script configuration
Returns the script configuration.
```lua
exports.jo_gunrack:getConfig()

```

### Filters

[Filters](/DeveloperResources/filters) change the data used by the script. They fire at specific points of the script. Unlike events, filters are **synchronous**.

- Syntax: 
```lua
-- @param <actionName> - name of the action
-- @param <argumentList> - list of arguments which are passed
exports.jo_gunrack:RegisterFilter(<actionName>, function(variable)
  -- Add your new data here
	return variable -- Don't forget to return the value
end)
```

:::warning Update from 1.5.x
Since 1.6.0, `canAddWeapon` and `canTakeWeapon` run on the server only. Register them in a server script.
:::

#### <Badge type="server" text="Server" /> canAddWeapon
Fires before a player stores a weapon.
```lua
-- @param canAdd - boolean : true if the player can store the weapon
-- @param gunrackId - string : id of the weapon storage
-- @param rackId - number|vector2 : rack number, or position on a wall rack
-- @param gunrack - table : data of the weapon storage
-- @param source - number : player server id
exports.jo_gunrack:RegisterFilter('canAddWeapon', function(canAdd, gunrackId, rackId, gunrack, source)
	return canAdd
end)

```
#### <Badge type="server" text="Server" /> canTakeWeapon
Fires before a player takes a weapon.
```lua
-- @param isOwner - boolean : true if the player stored the weapon or placed the storage
-- @param gunrackId - string : id of the weapon storage
-- @param rackKey - number|string : key of the rack holding the weapon
-- @param gunrack - table : data of the weapon storage
-- @param source - number : player server id
exports.jo_gunrack:RegisterFilter('canTakeWeapon', function(isOwner, gunrackId, rackKey, gunrack, source)
	return isOwner
end)

```
#### <Badge type="server" text="Server" /> canPlaceGunrack
Fires before a player places a weapon storage with an item.
```lua
-- @param canPlace - boolean : true if the player can place it
-- @param source - number : player server id
-- @param model - string : model of the weapon storage
-- @param coords - vector3 : location of the weapon storage
-- @param instance - string : instance of the player
exports.jo_gunrack:RegisterFilter('canPlaceGunrack', function(canPlace, source, model, coords, instance)
	return canPlace
end)

```
#### <Badge type="server" text="Server" /> canPickupGunrack
Fires before a player picks up a placed weapon storage. A storage with weapons can't be picked up.
```lua
-- @param isOwner - boolean : true if the player placed the weapon storage
-- @param source - number : player server id
-- @param gunrack - table : data of the weapon storage (owner, instance, model...)
exports.jo_gunrack:RegisterFilter('canPickupGunrack', function(isOwner, source, gunrack)
	return isOwner
end)

```
#### <Badge type="server" text="Server" /> getGunrackInstance
Returns the instance of a player. A placed storage is only visible in its instance.
```lua
-- @param instance - string : routing bucket of the player, as text
-- @param source - number : player server id
-- @param bucket - number : routing bucket of the player
exports.jo_gunrack:RegisterFilter('getGunrackInstance', function(instance, source, bucket)
	return instance -- e.g. return the id of the house the player is in
end)

```
