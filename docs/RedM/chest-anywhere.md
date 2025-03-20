# <img src='/images/chest.webp' /> Chest Anywhere
Documentation relating to the jo_chest.

:::tabs
== BUY
[Buy the script](https://jumpon-studios.com/redm/chest)
== PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/VIDEO_ID" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::

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

```lua
Config = {}

-- Item name in your inventory system that will be used for the chest item
Config.items = {
    chest = "chest" -- Item name for chest in your inventory
}

-- Distance settings for interaction
Config.distanceShowShopPrompt = 1.0  -- Distance to show shop prompt when near a NPC vendor
Config.maxDistanceCreateChest = 10.0 -- Maximum distance allowed for placing a chest from your character

-- Chest entity management settings
Config.chestSpawnDistance = 100.0    -- Distance at which chest entities are spawned in the world
Config.distanceShowChestPrompt = 1.5 -- Distance to show the prompt when near a placed chest

-- Keybind configuration for various actions
Config.keys = {
    openShop = "E",   -- Key to open the chest shop
    buyDollar = "E",  -- Key to purchase with dollars
    buyGold = "G",    -- Key to purchase with gold
    openChest = "E",  -- Key to interact with a placed chest
    removeChest = "X" -- Key to remove/pick up a chest
}

-- Shop locations and settings
Config.shops = {
    {
        location = vec4(-1085.257, -576.609, 82.292, 245.880), -- Shop position and heading
        availableChests = { "basic", "big" },                  -- Chest types available at this shop
        npc = {                                                -- NPC vendor configuration
            model = `mp_u_m_m_lawcamp_lawman_01`,              -- NPC model hash
            spawnDistance = 10                                 -- Distance at which the NPC spawns
        },
        blip = {                                               -- Map blip configuration
            icon = "blip_chest",                               -- Blip icon
            label = "Chests Shop"                              -- Blip text on map
        },
    },
    {
        location = vec4(-1083.387, -566.854, 82.190, 56.095),
        availableChests = { "basic" }, -- Only basic chests available here
        npc = false,                   -- No NPC at this location
        blip = false                   -- No map blip for this location
    }
}

-- Chest types and properties
Config.chests = {
    -- ⚠️ DO NOT REMOVE THIS ONE
    default = {                           -- Default fallback chest (DO NOT REMOVE ⚠️)
        label = "Default Chest",          -- Display name
        description = "A default chest ", -- Description shown in shop
        model = `p_chestmedlog01x`,       -- 3D model hash
        storage = {                       -- Storage capacity
            maxWeight = 100,              -- Maximum weight capacity
            maxSlot = 10                  -- Maximum item slots
        }
    },
    basic = {
        label = "Basic Chest",
        description = "A basic chest ",
        price = {       -- Purchase price
            money = 10, -- Cost in dollars
            gold = 1    -- Cost in gold
        },
        model = `p_chestmedlog01x`,
        storage = {
            maxWeight = 100,
            maxSlot = 10
        }
    },
    big = {
        label = "Big Chest",
        description = "A big chest ",
        price = {
            money = 50,
            gold = 5
        },
        model = `s_lootablebedchest`, -- Different model for big chest
        storage = {
            maxWeight = 1000,         -- 10x the capacity of basic chest
            maxSlot = 100             -- 10x the slots of basic chest
        }
    }
}

```

## 4. For developers



### Filters

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script added in the `v1.2.0`. These filters are fired at a specific point in time during the execution of the script. But contrary to events, filters are **synchronous**. 

#### <Badge type="server" text="Server" /> canBuyChest
Fires before a player buys a chest
```lua
-- @param canBuy - boolean
-- @param source - int : serverID of the player
-- @param chestKey - string : key of the chest in Config.chests
jo.hook.addFilter('canBuyChest', function(canBuy, source, chestKey)
    return canBuy
end)
```

#### <Badge type="server" text="Server" /> canOpenShop
Fires before a player opens a shop
```lua
-- @param canOpen - boolean
-- @param source - int : serverID of the player
-- @param shop - table : shop data
jo.hook.addFilter('canOpenShop', function(canOpen, source, shop)
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
jo.hook.addFilter('canPlaceChest', function(canPlace, source, metadata, coords, heading)
    return canPlace
end)
```

#### <Badge type="server" text="Server" /> canRemoveChest
Fires when a player tries to remove a chest
```lua
-- @param isOwner - boolean
-- @param source - int : serverID of the player
-- @param chest - table : chest data
jo.hook.addFilter('canRemoveChest', function(isOwner, source, chest)
    return isOwner
end)
```
#### <Badge type="server" text="Server" /> canUseChest
Fires when a player tries to use a chest item
```lua
-- @param canUse - boolean
-- @param source - int : serverID of the player
-- @param metadata - table : chest metadata
jo.hook.addFilter('canUseChest', function(canUse, source, metadata)
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
jo.hook.addFilter('isCheckCodeValid', function(isValid, source, code, chest)
    return isValid
end)
```




