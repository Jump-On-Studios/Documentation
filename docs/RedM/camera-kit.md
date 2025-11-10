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
<iframe width="560" height="315" src="https://www.youtube.com/embed/1A_ubufvh80?si=Vrw1RxNKarTFS2_6" title="RedM - Housing" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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

Congratulation, the **Camera Kit** script is ready to be used!

## 2. Usage
### Get the camera item
- Visit a chest shop (marked with a blip on the map)
- Press the prompt key to interact with the shop
- Select a chest type to purchase
- You can pay with money or gold depending on your preference

### Placing the camera
- Use the chest item from your inventory
- Position the chest using your mouse, rotate with weapon wheel keys
- Initialize a 4-digit code to secure your chest
- Press enter to place the chest

### Using the camera
- Approach a chest and press the prompt key to interact
- Enter the correct code to unlock the chest
- Access the storage inventory once unlocked

### Removing the camera
- Approach a chest you own
- Hold the remove key to pick up the chest (chest must be empty)
- The chest will return to your inventory

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