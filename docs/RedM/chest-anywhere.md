# <img src='/images/chest.webp' /> Chest Anywhere
Documentation relating to the jo_chest.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/chest-anywhere)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/jlHa0S7y9So" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
jo_chest works on all frameworks compatible with jo_libs ([the list](/jo_libs/modules/framework-bridge/#compatible-frameworks)).

To install jo_chest:
- Download the library: [jo_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip)
- Unzip the folder and drop it in your resource folder
- Download jo_chest from your [portal](https://portal.cfx.re/assets/granted-assets?search=chest)
- Unzip the folder and drop it in your resource folder
- Add these ensures in your server.cfg
  - `ensure jo_libs`
  - `ensure jo_chest`
- Add the item to your items table / file that will be used for the chest item (used in [`Config.items.chest`](#_3-config-lua))

:::warning
Be sure you have oxmysql ensure in your server.cfg
:::

:::tip
The script automatically creates all necessary database tables during its initial startup.
:::

Congratulation, the **Chest** script is ready to be used!

## 2. Usage
### Shops
- Visit a chest shop (marked with a blip on the map)
- Press the prompt key to interact with the shop
- Select a chest type to purchase
- You can pay with money or gold depending on your preference

### Placing Chests
- Use the chest item from your inventory
- Position the chest using your mouse, rotate with weapon wheel keys
- Initialize a 4-digit code to secure your chest
- Press enter to place the chest

### Using Chests
- Approach a chest and press the prompt key to interact
- Enter the correct code to unlock the chest
- Access the storage inventory once unlocked

### Removing Chests
- Approach a chest you own
- Hold the remove key to pick up the chest (chest must be empty)
- The chest will return to your inventory

## 3. Config.lua
<ScriptConfig scriptPath="redm/chest-anywhere" />

## 4. For developers

### Exports

#### <Badge type="server" text="Server" /> giveChest
Use this export to give a chest to a player
```lua
-- @param source - int : serverID of the player
-- @param chestKey - string : key of the chest in Config.chests
exports.jo_chest:giveChest(source, chestKey)
```

### Filters

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script added in the `v1.2.0`. These filters are fired at a specific point in time during the execution of the script. But contrary to events, filters are **synchronous**. 

#### <Badge type="server" text="Server" /> canBuyChest
Fires before a player buys a chest
```lua
-- @param canBuy - boolean
-- @param source - int : serverID of the player
-- @param chestKey - string : key of the chest in Config.chests
exports.jo_chest:registerFilter('canBuyChest', function(canBuy, source, chestKey)
    return canBuy
end)

```

#### <Badge type="server" text="Server" /> canOpenShop
Fires before a player opens a shop
```lua
-- @param canOpen - boolean
-- @param source - int : serverID of the player
-- @param shop - table : shop data
exports.jo_chest:registerFilter('canOpenShop', function(canOpen, source, shop)
    return canOpen
end)

```

#### <Badge type="server" text="Server" /> canPlaceChest
Fires when a player tries to place a chest
```lua
-- @param canPlace - boolean
-- @param source - int : serverID of the player
-- @param metadata - table : chest metadata
-- @param coords - vector3 : placement coordinates
-- @param heading - float : chest heading
exports.jo_chest:registerFilter('canPlaceChest', function(canPlace, source, metadata, coords, heading)
    return canPlace
end)

```

#### <Badge type="server" text="Server" /> canRemoveChest
Fires when a player tries to remove a chest
```lua
-- @param isOwner - boolean
-- @param source - int : serverID of the player
-- @param chest - table : chest data
exports.jo_chest:registerFilter('canRemoveChest', function(isOwner, source, chest)
    return isOwner
end)

```
#### <Badge type="server" text="Server" /> canUseChest
Fires when a player tries to use a chest item
```lua
-- @param canUse - boolean
-- @param source - int : serverID of the player
-- @param metadata - table : chest metadata
exports.jo_chest:registerFilter('canUseChest', function(canUse, source, metadata)
    return canUse
end)

```

#### <Badge type="server" text="Server" /> isCheckCodeValid
Fires when checking if a code entered is valid for a chest
```lua
-- @param isValid - boolean
-- @param source - int : serverID of the player
-- @param code - int : code entered by the player
-- @param chest - table : chest data
exports.jo_chest:registerFilter('isCheckCodeValid', function(isValid, source, code, chest)
    return isValid
end)

```




