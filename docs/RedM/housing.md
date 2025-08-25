---
outline: [2,4]
---

# :house: Housing
Documentation related to the jo_housing script.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/housing)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/LUgGS5I5FjM?si=wIuK5RGZWczm_twX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
jo_housing works on all frameworks compatible with jo_libs ([the list](/jo_libs/modules/framework-bridge/#compatible-frameworks)).

To install jo_housing :
- Download the library: [jo_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip)
- Unzip the folder and drop it in your resource folder
- Download jo_housing from your [keymaster](https://keymaster.fivem.net/asset-grants?search=stable)
- Unzip the folder and drop it in your resource folder
- Add this ensure in your server.cfg
  - `ensure jo_libs`
  - `ensure jo_housing`

Congratulation, the **Housing** script is ready to be used!
:::warning
Be sure you have oxmysql ensure in your server.cfg
:::
:::tip
The script automatically creates all necessary database tables during its first startup
:::

## 2. Usage

### Create / Update / Delete houses

The housing system provides an admin interface to manage properties on your server.

**Creating a House:**
1. Use the command `/houseManager` to open the housing management menu
2. Select "Create a new house"
3. Fill in the house details :
   - **Name**: Give your house a descriptive name (press the designated key to input)
   - **Category**: Choose from available interior categories (Houses, Shacks, Manors, etc.)
   - **Rooms Amount**: Select the number of rooms for your chosen category
   - **Interior**: Pick a specific interior from the filtered options based on category and rooms
   - **Shell Location**: Place the interior shell in the world (use visit mode to preview)
   - **Front Door Location**: Move the entrance marker (automatically set at your position when creating)
   - **Contract Type**: Choose between one-time sale or rent
     - If rent: Select daily or weekly rent periods
   - **Price**: Set money and gold prices using the designated prompt keys
   - **Features**: Configure available features:
     - **Stable**: Enable/disable horse storage
       - Stable Location: Place the stable interaction marker
       - Stable Spawn Location: Place where horses will spawn
     - **Storage**: Enable/disable item storage with weight/slot limits
     - **Wagon**: Enable/disable wagon storage  
       - Wagon Location: Place the wagon interaction marker
       - Wagon Spawn Location: Place where wagons will spawn
     - **Dressing Room**: Enable/disable wardrobe functionality

4. **Visit Mode**: Press the visit mode key (default: R) to preview the interior before finalizing
5. **Validation**: All required fields must be completed:
   - House name cannot be empty
   - Front door location must be set
   - Valid interior must be selected
   - Shell location must be placed
   - If stable enabled: Both stable location and spawn location required
   - If wagon enabled: Both wagon location and spawn location required
   - Prices must be non-negative
6. Press the "Create House" key when all requirements are met

**Updating a House:**
1. Use the command `/houseManager` to open the housing management menu
2. Select "Manage houses"
3. Choose the house you want to modify
4. Press the "Edit House" prompt key (default: E)
5. **Edit Mode Restrictions**:
   - Category, rooms amount, and interior type cannot be changed
   - All other properties can be modified
   - Visit mode is available to preview changes
6. Modify any editable house details as needed
7. Press "Update House" to save your changes (only saves if changes were made)

**Deleting a House:**
1. Use the command `/houseManager` to open the housing management menu
2. Select "Manage houses"
3. Choose the house you want to delete
4. Press the "Delete House" prompt key (default: X)
5. The house will be permanently deleted along with all associated data

### Buying a house

Players can purchase or rent available houses throughout your server.

**Finding Available Houses:**
1. Approach a house door with the help of the map blips
2. When in range, a prompt will appear
3. Press the prompt key (default: E) to open the house menu

**Purchasing a House:**
1. In the house menu, available properties will show their price
2. Press the "Buy House" prompt key (default: ENTER) to purchase with money
3. Alternatively, press the "Buy with Gold" key (default: G) if enabled
4. For rental properties:
   - Select the number of days/weeks to rent using the slider
   - Press the appropriate key to pay with money or gold
5. Once purchased, you'll become the owner of the property

**Rental Information:**
- Rentals must be renewed before they expire
- The house menu shows your current rental status:
  - 🟢 Green: Plenty of time remaining
  - 🟠 Orange: Rent due soon (warning period)
  - 🔴 Red: Grace period (overdue but not yet evicted)
- If rent expires beyond the grace period, the house will return to the market

### Using a house

Once you own a house, you can use its features and customize its interior.

**Entering Your House:**
1. Approach your house's front door
2. Press the "Enter House" prompt key (default: ENTER)
3. You'll be teleported inside your property

**Build Mode:**
1. Inside your house, open the house menu (near the entrance door)
2. Select "Enter build mode"
3. In build mode, you can:
   - Press the "Add Furnitures" key (default: A) to purchase and place furniture
   - Press the "Edit Furnitures" key (default: E) to move or delete existing furniture
   - Set locations for dressing rooms and storage if your house has these features
4. Press the "Leave Build Mode" key (default: X) to exit

**Managing Access:**
1. Inside your house, open the house menu
2. Select "Manage my house"
3. Choose "Manage Access"
4. Set your access type:
   - "Only me": Only you can enter
   - "List": Only players you've added to the access list can enter
   - "Everyone": Any player can enter your house
5. If using the "List" option, you can add or remove players from your access list

**Using House Features:**
- **Storage:** Approach your storage location and press the prompt key (default: E)
- **Dressing Room:** Approach your dressing location and press the prompt key (default: E)
- **Stable:** Approach the stable marker outside your house to access your horses
- **Wagon:** Approach the wagon marker outside your house to access your wagons

**Inviting Players:**
1. Other players can knock on your door by approaching and pressing the knock key
2. You'll receive a notification when someone knocks
3. Press the designated key to allow them entry
4. Alternatively, add them to your access list for permanent access

**Transferring Ownership:**
1. Inside your house, open the house menu
2. Select "Manage my house"
3. Choose "Transfer House"
4. Enter the player's server ID
5. The house ownership will transfer to that player

## 3. Script Configuration

The Housing script is highly configurable to suit your server's needs. Configuration is split between the main settings and language translations.

:::warning
Rather than editing the original config files directly, you should make your changes in `overwriteConfig.lua` and `overwriteLang.lua`. This way, you can easily update the script without losing your customizations.
:::

### Configuration Files

- **Base configuration**: `shared/config.lua` - Contains all default settings
- **Your customizations**: `overwriteConfig.lua` - Override only the specific settings you want to change
- **Language file**: `shared/lang.lua` - Contains all default translations
- **Your translations**: `overwriteLang.lua` - Override only the specific translations you want to change


:::: tabs
::: tab Configuration properties

#### General Settings

| Property | Default Value | Description |
|----------|---------------|-------------|
| `Config.enableKeyMode` | `true` | Enable physical house keys that players must carry to access their houses |
| `Config.allowPayingInGold` | `true` | Allow players to pay with gold in addition to money |
| `Config.knockNotificationDuration` | `5000` | Duration (in ms) that knock notifications are displayed to house owners |

#### Distance Settings

| Property | Default Value | Description |
|----------|---------------|-------------|
| `Config.distanceShowHousePrompt` | `2.5` | Distance (in meters) to show house interaction prompts |
| `Config.distanceShowStablePrompt` | `2.0` | Distance (in meters) to show stable interaction prompts |
| `Config.distanceShowWagonPrompt` | `2.0` | Distance (in meters) to show wagon interaction prompts |
| `Config.distanceShowInteriorDoorPrompt` | `1.5` | Distance (in meters) to show interior door prompts |
| `Config.distanceShowInteriorStoragePrompt` | `1.0` | Distance (in meters) to show storage interaction prompts |
| `Config.distanceShowInteriorDressingPrompt` | `1.0` | Distance (in meters) to show dressing room prompts |

#### Rent Configuration

| Property | Default Value | Description |
|----------|---------------|-------------|
| `Config.rentMaxDays` | `10` | Maximum number of days players can rent at once (daily rent) |
| `Config.rentMaxWeek` | `2` | Maximum number of weeks players can rent at once (weekly rent) |
| `Config.extraDaysAllowedBeforeExpulsion` | `1.0` | Grace period (in days) after rent expires before eviction |
| `Config.allowRentExtensionAnytime` | `false` | Allow players to extend rent before it expires |

#### Items and Pricing

| Property | Default Value | Description |
|----------|---------------|-------------|
| `Config.items.houseKey` | `"house_key"` | Item name for house keys in your inventory system |
| `Config.newKeyPrice.money` | `100` | Cost in money to create a new house key |
| `Config.newKeyPrice.gold` | `1` | Cost in gold to create a new house key |

#### Key Bindings

| Property | Default Value | Description |
|----------|---------------|-------------|
| `Config.keys.openHouseMenu` | `"E"` | Open house menu at front door |
| `Config.keys.enterSubMenu` | `"E"` | Enter submenus |
| `Config.keys.buyDollar` | `"E"` | Purchase house with money |
| `Config.keys.buyGold` | `"G"` | Purchase house with gold |
| `Config.keys.buyHouse` | `"ENTER"` | Confirm house purchase |
| `Config.keys.knockOnHouse` | `"K"` | Knock on someone's door |
| `Config.keys.enterHouse` | `"ENTER"` | Enter owned house |
| `Config.keys.leaveHouse` | `"X"` | Exit house |
| `Config.keys.manageHouse` | `"M"` | Open house management menu |
| ... and many more |  | See the `Configuration file` tab above for an exhaustive list |

#### Interior Configuration

| Property | Default Value | Description |
|----------|---------------|-------------|
| `Config.interiorsCategoriesMaxFurnitures.default` | `100` | Default furniture limit for interior categories |
| `Config.interiorsCategoriesMaxFurnitures.manor` | `200` | Furniture limit for manor category interiors |
| `Config.interiorsMaxFurnitures` | `{jo_pai_house = 100}` | Specific furniture limits per interior ID |
| `Config.interiorsBlacklist` | `{}` | Interior IDs to hide from selection (commented examples included) |

#### Furniture Configuration

| Property | Default Value | Description |
|----------|---------------|-------------|
| `Config.furnituresCategoriesPrices.default` | `{money = 100, gold = 1}` | Default pricing for furniture categories |
| `Config.furnituresCategoriesPrices.beds` | `{money = 50, gold = 2}` | Pricing for bed category furniture |
| `Config.furnituresPrices` | `{p_bath02x = {money = 200, gold = 10}}` | Specific pricing per furniture model |

:::

::: tab Configuration file

```lua
Config = {}

-- ===================================
-- External Handlers
-- ===================================

Config.openWardrobe = function()
    -- Add your Wardrobe handling code here
    -- This could call another resource's export for wardrobe management
    -- ex : exports["kd_clothingstore"]:openWardrobe()
    print("open dressing")
end

Config.openStable = function(stableLocation, stableSpawnLocation)
    -- Add your stable handling code here
    -- This could call another resource's export for stable management
    -- TriggerEvent("your_stable_resource:openStable")
    print("open stable")
end

Config.openWagon = function(wagonLocation, wagonSpawnLocation)
    -- Add your wagon handling code here
    -- This could call another resource's export for wagon management
    -- TriggerEvent("your_wagon_resource:openWagon")
    print("open wagon")
end

-- ===================================
-- General Settings
-- ===================================

Config.enableKeyMode = true                     -- Enable physical house keys that players must carry to access their houses
Config.allowPayingInGold = true                 -- Allow players to pay with gold in addition to money
Config.knockNotificationDuration = 5000         -- Duration (in ms) that knock notifications are displayed to house owners

-- ===================================
-- Items and Prices
-- ===================================

Config.items = {
    houseKey = "house_key" -- Item name for house key in your inventory
}

Config.newKeyPrice = {
    money = 100,    -- Cost in money to create a new house key
    gold = 1        -- Cost in gold to create a new house key
}

-- ===================================
-- Distance Settings
-- ===================================

Config.distanceShowHousePrompt = 2.5            -- Distance (in meters) to show house interaction prompts
Config.distanceShowStablePrompt = 2.0           -- Distance (in meters) to show stable interaction prompts
Config.distanceShowWagonPrompt = 2.0            -- Distance (in meters) to show wagon interaction prompts

Config.distanceShowInteriorDoorPrompt = 1.5     -- Distance (in meters) to show interior door prompts
Config.distanceShowInteriorStoragePrompt = 1.0  -- Distance (in meters) to show storage interaction prompts
Config.distanceShowInteriorDressingPrompt = 1.0 -- Distance (in meters) to show dressing room prompts

-- ===================================
-- Rent Configuration
-- ===================================

Config.rentMaxDays = 10                         -- Maximum number of days players can rent at once (daily rent)
Config.rentMaxWeek = 2                          -- Maximum number of weeks players can rent at once (weekly rent)
Config.extraDaysAllowedBeforeExpulsion = 1.0    -- Grace period (in days) after rent expires before eviction
Config.allowRentExtensionAnytime = false        -- Allow players to extend rent before it expires

-- ===================================
-- Key Bindings
-- ===================================

Config.keys = {
    -- House Management
    openHouseMenu       = "E",        -- Open house menu at front door
    enterSubMenu        = "E",        -- Enter submenus
    buyDollar           = "E",        -- Purchase house with money
    buyGold             = "G",        -- Purchase house with gold
    buyHouse            = "ENTER",    -- Confirm house purchase
    knockOnHouse        = "K",        -- Knock on someone's door
    enterHouse          = "ENTER",    -- Enter owned house
    leaveHouse          = "X",        -- Exit house
    manageHouse         = "M",        -- Open house management menu
    
    -- Admin Tools
    enterVisitMode      = "R",        -- Enter visit mode to preview interior
    setHousePriceMoney  = "M",        -- Set money price prompt
    setHousePriceGold   = "G",        -- Set gold price prompt
    setHouseName        = "ENTER",    -- Set house name prompt
    placeMarker         = "ENTER",    -- Place location markers
    placeShell          = "ENTER",    -- Place interior shell
    upsertHouse         = "ENTER",    -- Create/update house
    editHouse           = "E",        -- Edit existing house (admin)
    deleteHouse         = "X",        -- Delete house (admin)
    
    -- Storage & Features
    setStorageMaxWeight = "ENTER",    -- Set storage weight limit prompt
    setStorageMaxSlot   = "ENTER",    -- Set storage slot limit prompt
    setStorageLocation  = "O",        -- Set storage location in build mode
    setDressingLocation = "K",        -- Set dressing room location in build mode
    openStorage         = "E",        -- Open house storage
    openDressing        = "E",        -- Open dressing room
    
    -- Build Mode
    addFurnitures       = "A",        -- Add furniture to house
    editFurnitures      = "E",        -- Edit existing furniture
    duplicateFurniture  = "C",        -- Duplicate selected furniture
    deleteFurniture     = "DELETE",   -- Delete selected furniture
    buyFurniture        = "ENTER",    -- Purchase furniture
    leaveBuildMode      = "X",        -- Exit build mode
    
    -- Access Management
    addPlayer           = "ENTER",    -- Add player to house access list
    removePlayer        = "X",        -- Remove player from access list
    enter               = "ENTER"     -- Generic enter/confirm key
}

-- ===================================
-- Interior Configuration
-- ===================================

-- Default furniture limit for interior categories
Config.interiorsCategoriesMaxFurnitures = {
    default = 100,      -- Default furniture limit for interior categories
    manor = 200         -- Furniture limit for manor category interiors
}

-- Specific furniture limits per interior ID
Config.interiorsMaxFurnitures = {
    jo_pai_house = 100,
}

-- Interior IDs to hide from selection (commented examples included)
Config.interiorsBlacklist = {
    -- jo_pai_house = true,
    -- jo_new_gamble = true
}

-- ===================================
-- Furniture Configuration
-- ===================================

-- Default pricing for furniture categories
Config.furnituresCategoriesPrices = {
    default = {         -- Default pricing for furniture categories
        money = 100,
        gold = 1
    },
    beds = {            -- Pricing for bed category furniture
        money = 50,
        gold = 2
    }
}

-- Specific pricing per furniture model
Config.furnituresPrices = {
    p_bath02x = {       -- Specific pricing per furniture model
        money = 200,
        gold = 10
    }
}

```

:::
::::







### Language Configuration

The script supports full translation through the language system. To override any text in the script:

1. Find the key you want to change in `shared/lang.lua`
2. Add only that key to `overwriteLang.lua` with your new text

Example:

```lua
-- In overwriteLang.lua
Lang.houseManagerTitle = "Property Manager"
Lang.buyHouseMoney = "Purchase with Cash"
Lang.rentPaidSuccessfully = "Rent paid successfully! Welcome home."
```

Available translation categories include:
- General UI & Common Terms
- Menu Titles & Subtitles
- Prompts & Labels
- Input Prompts
- Notifications & Messages (success and error messages)

:::tip
You only need to include the specific keys you want to change in `overwriteLang.lua`. Don't copy the entire language file.
:::

## 4. For Developers

### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or control permissions during script execution. Introduced in `v1.2.0`, filters provide a **synchronous** way to intercept and modify script behavior at specific points, unlike events which are asynchronous.

#### Using Filters

```lua
-- Register a filter that intercepts and potentially modifies a value
exports.jo_housing:registerFilter('filterName', function(value, otherParams)
    -- Modify the value or check permissions
    return value -- Must return the modified/original value
end)
```

#### Available Filters

Below is a complete list of all available filters in the jo_housing script. All these filters are **server-side**.

#### <Badge type="server" text="Server" /> canUseHouseManagerCommand
Controls who can use the `/houseManager` command to create and manage houses.

```lua
-- @param canUse - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
exports.jo_housing:registerFilter('canUseHouseManagerCommand', function(canUse, source)
    -- Example: Only allow admins
    local isAdmin = exports.your_permission_system:isAdmin(source)
    return isAdmin
end)
```

#### <Badge type="server" text="Server" /> canOpenHouseLocationMenu
Controls who can open the house location menu.

```lua
-- @param canOpen - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houses - array of nearby houses
exports.jo_housing:registerFilter('canOpenHouseLocationMenu', function(canOpen, source, houses)
    return canOpen
end)
```

#### <Badge type="server" text="Server" /> canBuyHouse
Controls who can buy a house.

```lua
-- @param canBuy - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houseId - ID of the house being purchased
-- @param moneyType - payment type (0 for money, 1 for gold)
-- @param period - for rentals, number of periods the player is paying for
exports.jo_housing:registerFilter('canBuyHouse', function(canBuy, source, houseId, moneyType, period)
    return canBuy
end)
```

#### <Badge type="server" text="Server" /> canEnterHouse
Controls who can enter a house.

```lua
-- @param canEnter - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houseId - ID of the house being entered
exports.jo_housing:registerFilter('canEnterHouse', function(canEnter, source, houseId)
    return canEnter
end)
```

#### <Badge type="server" text="Server" /> canEnterBuildMode
Controls who can enter build mode in a house.

```lua
-- @param canEnter - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houseId - ID of the house
exports.jo_housing:registerFilter('canEnterBuildMode', function(canEnter, source, houseId)
    return canEnter
end)
```

#### <Badge type="server" text="Server" /> canBuyFurniture
Controls who can buy furniture.

```lua
-- @param canBuy - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param furniture - furniture model/object data
-- @param houseId - ID of the house
-- @param moneyType - payment type (0 for money, 1 for gold)
-- @param categoryKey - category key of the furniture
exports.jo_housing:registerFilter('canBuyFurniture', function(canBuy, source, furniture, houseId, moneyType, categoryKey)
    return canBuy
end)
```

#### <Badge type="server" text="Server" /> canPlaceFurniture
Controls who can place furniture in a house.

```lua
-- @param canPlace - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param furniture - furniture model/object data
-- @param houseId - ID of the house
-- @param relPos - relative position where furniture will be placed
-- @param relRot - relative rotation of the furniture
-- @param moneyType - payment type (0 for money, 1 for gold)
-- @param categoryKey - category key of the furniture
exports.jo_housing:registerFilter('canPlaceFurniture', function(canPlace, source, furniture, houseId, relPos, relRot, moneyType, categoryKey)
    return canPlace
end)
```

#### <Badge type="server" text="Server" /> canSetDressingLocation
Controls who can set a dressing room location inside a house.

```lua
-- @param canSet - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houseId - ID of the house
-- @param coords - coordinates for the dressing location
exports.jo_housing:registerFilter('canSetDressingLocation', function(canSet, source, houseId, coords)
    return canSet
end)
```

#### <Badge type="server" text="Server" /> canSetStorageLocation
Controls who can set a storage location inside a house.

```lua
-- @param canSet - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houseId - ID of the house
-- @param coords - coordinates for the storage location
exports.jo_housing:registerFilter('canSetStorageLocation', function(canSet, source, houseId, coords)
    return canSet
end)
```

#### <Badge type="server" text="Server" /> canTransferHouse
Controls who can transfer house ownership.

```lua
-- @param canTransfer - boolean indicating if the action is allowed by default
-- @param source - serverID of the current owner
-- @param toPlayerSrc - serverID of the player receiving the house
-- @param houseId - ID of the house being transferred
exports.jo_housing:registerFilter('canTransferHouse', function(canTransfer, source, toPlayerSrc, houseId)
    return canTransfer
end)
```

#### <Badge type="server" text="Server" /> canOpenHouseStorage
Controls who can open a house's storage.

```lua
-- @param canOpenStorage - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houseId - ID of the house
exports.jo_housing:registerFilter('canOpenHouseStorage', function(canOpenStorage, source, houseId)
    return canOpenStorage
end)
```

#### <Badge type="server" text="Server" /> canAddPlayerToHouse
Controls who can add players to a house's access list.

```lua
-- @param canAdd - boolean indicating if the action is allowed by default
-- @param source - serverID of the player adding someone
-- @param houseId - ID of the house
-- @param playerSrc - serverID of the player being added
-- @param playerName - name of the player being added
exports.jo_housing:registerFilter('canAddPlayerToHouse', function(canAdd, source, houseId, playerSrc, playerName)
    return canAdd
end)
```

#### <Badge type="server" text="Server" /> canRemovePlayerFromHouse
Controls who can remove players from a house's access list.

```lua
-- @param canRemove - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houseId - ID of the house
-- @param accessibilityId - ID of the access entry to remove
exports.jo_housing:registerFilter('canRemovePlayerFromHouse', function(canRemove, source, houseId, accessibilityId)
    return canRemove
end)
```

#### <Badge type="server" text="Server" /> canUpdateAccessibility
Controls who can update a house's accessibility settings.

```lua
-- @param canUpdate - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param accessibilityType - type of access ("everyone", "list", or "onlyMe")
-- @param houseId - ID of the house
exports.jo_housing:registerFilter('canUpdateAccessibility', function(canUpdate, source, accessibilityType, houseId)
    return canUpdate
end)
```

#### <Badge type="server" text="Server" /> canUpsertHouse
Controls who can create or update houses.

```lua
-- @param canUpsert - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houseId - ID of the house (nil for creation)
-- @param changesetOrHouseData - changes to apply or full house data for creation
exports.jo_housing:registerFilter('canUpsertHouse', function(canUpsert, source, houseId, changesetOrHouseData)
    return canUpsert
end)
```

#### <Badge type="server" text="Server" /> canDeleteHouse
Controls who can delete houses.

```lua
-- @param canDelete - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param houseData - table containing house data
exports.jo_housing:registerFilter('canDeleteHouse', function(canDelete, source, houseData)
    return canDelete
end)
```

#### <Badge type="server" text="Server" /> canMoveFurniture
Controls who can move furniture in a house.

```lua
-- @param canMove - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param furnitureId - ID of the furniture
-- @param houseId - ID of the house
-- @param relPos - new relative position for the furniture
-- @param relRot - new relative rotation for the furniture
exports.jo_housing:registerFilter('canMoveFurniture', function(canMove, source, furnitureId, houseId, relPos, relRot)
    return canMove
end)
```

#### <Badge type="server" text="Server" /> canDeleteFurniture
Controls who can delete furniture from a house.

```lua
-- @param canDelete - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param furnitureId - ID of the furniture
-- @param houseId - ID of the house
exports.jo_housing:registerFilter('canDeleteFurniture', function(canDelete, source, furnitureId, houseId)
    return canDelete
end)
```