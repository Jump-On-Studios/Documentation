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



#### Distance Settings

```lua
-- Distance in meters at which to show interaction prompts
Config.distanceShowHousePrompt = 2.5           -- Show house menu prompt
Config.distanceShowStablePrompt = 2.0          -- Show stable prompt 
Config.distanceShowWagonPrompt = 2.0           -- Show wagon prompt

-- Interior interaction distances
Config.distanceShowInteriorDoorPrompt = 1.0    -- Show interior door prompt
Config.distanceShowInteriorStoragePrompt = 1.0 -- Show storage prompt
Config.distanceShowInteriorDressingPrompt = 1.0 -- Show dressing prompt
```

#### Feature Settings

```lua
-- Knocking on doors
Config.knockNotificationDuration = 5000  -- Duration of knock notification in ms

-- Payment options
Config.allowPayingInGold = true  -- Enable/disable gold as payment method

-- Rent settings
Config.rentMaxDays = 10          -- Maximum number of days for daily rent period
Config.rentMaxWeek = 2           -- Maximum number of weeks for weekly rent period
Config.extraDaysAllowedBeforeExpulsion = 1.0 -- Grace period after rent expires (in days)
Config.allowRentExtensionAnytime = true   -- Allow rent extension before expiration
```

#### Hook Functions

These functions connect the housing script to other resources on your server:



```lua
Config.openWardrobe = function()
    -- Replace with your wardrobe resource
    exports["kd_clothingstore"]:openWardrobe()
end
```



```lua
Config.openStable = function(stableLocation, stableSpawnLocation)
    -- Replace with your stable resource
    -- Parameters provide the coordinates for the stable and spawn locations
    exports["your_stable_resource"]:openStable(stableLocation, stableSpawnLocation)
end
```



```lua
Config.openWagon = function(wagonLocation, wagonSpawnLocation)
    -- Replace with your wagon resource
    -- Parameters provide the coordinates for the wagon and spawn locations
    exports["your_wagon_resource"]:openWagon(wagonLocation, wagonSpawnLocation)
end
```

#### Keyboard Keys

You can customize all key bindings used in the script:

```lua
Config.keys = {
    openHouseMenu = "E",         -- Open house menu
    buyHouse = "ENTER",          -- Buy a house
    buyGold = "G",               -- Pay with gold
    enterVisitMode = "R",        -- Enter visit mode
    leaveHouse = "X",            -- Leave the house
    
    -- Building mode
    addFurnitures = "A",         -- Add furniture
    editFurnitures = "E",        -- Edit furniture
    deleteFurniture = "DELETE",  -- Delete furniture
    leaveBuildMode = "X",        -- Exit build mode
    
    -- Many more keys available in the config.lua file
}
```

#### House Categories and Interiors

##### Categories

Define different types of houses with furniture limits:

```lua
Config.houseCategories = {
    big = {
        label = "Big Houses",
        maxFurnitures = 200
    },
    medium = {
        label = "Medium Houses",
        maxFurnitures = 150
    },
    small = {
        label = "Small Houses",
        maxFurnitures = 100
    },
    -- Add your own categories here
}
```

##### Interiors

Define the available interior types with their locations:

```lua
Config.houseInteriors = {
    int_1 = {
        label = "Interior 1",          -- Display name
        category = "big",              -- From houseCategories
        doorLocation = vec4(-881.378, -1656.110, 67.890, 205.622)  -- Door coordinates (x,y,z,heading)
    },
    bakery = {
        label = "Bakery",
        category = "small",
        doorLocation = vec4(-3721.501, -2515.817, -11.268, 92.513),
        -- Optional: frozenDoors - doors that should be frozen in the interior
        frozenDoors = {
            {
                model = "p_door13x",
                location = vec3(-3720.73, -2516.28, -12.28)
            }
        },
    },
    -- Add your own interiors here
}
```

#### Furniture Configuration

##### Furniture Categories

Create organization categories for furniture:

```lua
Config.furnituresCategories = {
    chairs = {
        name = "Chairs"
    },
    tables = {
        name = "Tables"
    },
    storage = {
        name = "Storage"
    },
    -- Add your own categories here
}
```

#### Furniture Items

Define the individual furniture pieces players can buy:

```lua
Config.furnitures = {
    {
        name = "Chaise 01",           -- Display name
        category = "chairs",          -- From furnituresCategories
        model = "p_chairwicker03x",   -- Game model
        price = {
            money = 100,              -- Price in dollars
            gold = 1                  -- Price in gold
        }
    },
    {
        name = "Barrel 01",
        category = "misc",
        model = "p_chickenbarrel01x",
        price = {
            money = 100,
            gold = 1
        }
    },
    -- Add your own furniture here
}
```

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
-- @param furnitureIndex - index of the furniture in Config.furnitures
-- @param houseId - ID of the house
-- @param moneyType - payment type (0 for money, 1 for gold)
exports.jo_housing:registerFilter('canBuyFurniture', function(canBuy, source, furnitureIndex, houseId, moneyType)
    return canBuy
end)
```

#### <Badge type="server" text="Server" /> canPlaceFurniture
Controls who can place furniture in a house.

```lua
-- @param canPlace - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param furnitureIndex - index of the furniture in Config.furnitures
-- @param houseId - ID of the house
-- @param coords - coordinates where furniture will be placed
-- @param moneyType - payment type (0 for money, 1 for gold)
exports.jo_housing:registerFilter('canPlaceFurniture', function(canPlace, source, furnitureIndex, houseId, coords, moneyType)
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
-- @param coords - new coordinates for the furniture
exports.jo_housing:registerFilter('canMoveFurniture', function(canMove, source, furnitureId, houseId, coords)
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