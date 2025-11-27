---
outline: [2,4]
---

# :camera: Camera Kit
Documentation related to the jo_camera_kit script.

:::: tabs
::: tab BUY
[Buy it on the shop](https://jumpon-studios.com/redm/camera-kit)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/WBCINAeSkNQ?si=5SwlgLed77a8k1wE" title="RedM - Camera Kit" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
:::
::::

## 1. Installation
To install `jo_camera_kit` :
- Download the library: [jo_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip)
- Unzip the folder and drop it in your resource folder
- Download `jo_camera_kit` from your [account](https://jumpon-studios.com/account)
- Unzip the folder and drop `jo_camera_kit` in your resource folder
- Add those two ensure in your server.cfg :
  - `ensure jo_libs`
  - `ensure jo_camera_kit`
- Add the item to your items table / file that will be used for the camera item (used in [`Config.items.camera`](#_3-config-lua))
- Add the item to be buyable in your shop script

Congratulation, the **Camera Kit** script is ready to be used!

## 2. Usage

### Get the camera item
- Buy the camera item from a shop that sells it.
- The item name must match `Config.items.camera` (default: `jo_camera`).

### Equip the camera
- Use the camera item in your inventory.
- You’ll equip the in-game camera and see bottom-right prompts.
- Default keys while equipped:
  - `ENTER` — hold to place the tripod
  - `BACKSPACE` — put the camera away

### Placing the tripod
- Hold `ENTER` to start placement.
- Position the preview with your mouse; adjust rotation with your look controls.
- Hold `ENTER` to confirm. A tripod and camera are placed, and the item is removed from your inventory.
- A short setup animation plays. The tripod is now ready to use.

### Using the camera
- Walk near a tripod (not in use) to see interaction prompts.
- Hold `ENTER` to enter photo mode. If `Config.restrictUseToOwner = true`, only the owner can use it.
- In photo mode (default controls):
  - Move: `W/S` and `A/D`
  - Rotate: mouse movement
  - Zoom: mouse wheel up/down
  - Filters: `LEFT/RIGHT` to cycle, `R` to reset
  - Autofocus: `F` to toggle
  - Take photo: left click
  - Open gallery: `G` (only if `Config.useSocialClubGallery = true`)
  - Exit: `ESC`
- When you take a photo, the UI hides and time pauses briefly. After `Config.screenshotTime` seconds, everything restores.

### Moving or removing the tripod
- Near a tripod:
  - Hold `M` to move it. You’ll re-enter placement mode to choose a new spot.
  - Hold `R` to remove it. The camera item is returned to your inventory.
- If `Config.restrictUseToOwner = true`, only the owner can move or remove the tripod.

:::tip Tips
- Prompts appear when within `Config.showCameraPromptsDistance` (default: `2.0`).
- For performance, the script spawns/despawns tripod entities based on `Config.cameraSpawnDistance`.
:::

## 3. Config.lua

```lua
Config = {}

-- Keybind configuration for various actions
Config.keys = {
    setTripod = "ENTER",
    unequipe = "BACKSPACE",
    useTripod = "ENTER",
    moveTripod = "M",
    removeTripod = "R"
}

Config.items = {
    camera = "jo_camera" -- Item name for camera item in your inventory
}

Config.showCameraPromptsDistance = 2.0 -- Distance to show prompts when near tripod

Config.cameraSpawnDistance = 100.0     -- Distance at which camera entities are spawned in the world

Config.screenshotTime = 2.0            -- Time in seconds to take a screenshot after taking a photo
Config.restrictUseToOwner = false      -- Whether placed camera can be used by other players. True for owner only, false for everyone

Config.useSocialClubGallery = false    -- If true, photos will be saved to Social Club gallery.
```

## 4. For developers

### Filters

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script added in the `v1.2.0`. These filters are fired at a specific point in time during the execution of the script. But contrary to events, filters are **synchronous**. 

#### <Badge type="server" text="Server" /> canMoveCamera
Controls who can move a camera

```lua
-- @param canMoveCamera - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param camera - the camera object
exports.jo_housing:registerFilter('canMoveCamera', function(canMoveCamera, source, camera)
    return canMoveCamera
end)
```
#### <Badge type="server" text="Server" /> canPlaceCamera
Controls who can place a camera

```lua
-- @param canPlaceCamera - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param position - Coords of the camera
-- @param heading - Heading of the camera
exports.jo_housing:registerFilter('canPlaceCamera', function(canPlaceCamera, source, position,heading)
    return canPlaceCamera
end)
```
#### <Badge type="server" text="Server" /> canRemoveCamera
Controls who can remove a camera

```lua
-- @param canRemoveCamera - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param camera - the camera object
exports.jo_housing:registerFilter('canRemoveCamera', function(canRemoveCamera, source, camera)
    return canRemoveCamera
end)
```

#### <Badge type="server" text="Server" /> canUseCamera
Controls who can use a camera

```lua
-- @param canUseCamera - boolean indicating if the action is allowed by default
-- @param source - serverID of the player
-- @param camera - the camera object
exports.jo_housing:registerFilter('canUseCamera', function(canUseCamera, source, camera)
    return canUseCamera
end)
```


### Actions

Actions are one of the two types of Hooks. They provide a way for running a function at a specific point in the execution of scripts. Callback functions for an Action do not return anything back to the calling Action hook. They are the counterpart to Filters.
  
Below is a complete list of all available actions in the script.

#### <Badge type="server" text="Server" /> cameraExited
Triggered when a camera is exited

```lua
-- @param source - serverID of the player
-- @param cameraId - the camera id
exports.jo_housing:registerAction('cameraExited', function(source, cameraId)
    -- Your code here
end)
```


#### <Badge type="server" text="Server" /> cameraMoved
Triggered when a camera is moved

```lua
-- @param source - serverID of the player
-- @param cameraId - the camera id
exports.jo_housing:registerAction('cameraMoved', function(source, cameraId)
    -- Your code here
end)
```


#### <Badge type="server" text="Server" /> cameraPlaced
Triggered when a camera is placed on the ground

```lua
-- @param source - serverID of the player
-- @param camera - the camera object
exports.jo_housing:registerAction('cameraPlaced', function(source, camera)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> cameraRemoved
Triggered when a camera is removed

```lua
-- @param source - serverID of the player
-- @param cameraId - the camera id
exports.jo_housing:registerAction('cameraRemoved', function(source, cameraId)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> cameraUsed
Triggered when a camera is used

```lua
-- @param source - serverID of the player
-- @param camera - the camera object
exports.jo_housing:registerAction('cameraUsed', function(source, camera)
    -- Your code here
end)
```

