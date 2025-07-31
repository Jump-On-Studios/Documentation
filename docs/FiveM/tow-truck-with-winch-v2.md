---
outline: 2
---

# <img src='/images/towtruck.webp'/> Tow Truck with Winch v2
Documentation relating to the v2 of the jo_towtruck.



:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/fivem/tow-truck-with-winch-v2)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/rYBLHAjOhUo?si=A4vYDHI1xTMBUal-" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

*([Documentation relating to the v1](/FiveM/tow-truck-with-winch))*

## 1. Installation
Tow Truck with Winch v2 is a standalone script. So you don't need a specific framework to use it. It's also mean **it works with all framework** (Esx, QBCore, VRP, DRP, …).

- Drag and drop the resource in your resources folder
  - jo_towtruck
- Add it to your server.cfg
  - `ensure jo_towtruck`

Congratulation, the **Tow Truck with Winch v2** script is ready to be use !
## 2. Usage
By default, the script is configured to work with a custom flatbed : `flatbed3` and with the native `slamtruck`. Use your admin menu (or other scripts) to spawn it. 

A help message with key will appears at the bottom right of your screen every time action is available. Please read them to know what keys are usable. 
1. Move the bed down from inside the vehicle or near the rear wheels
2. Go to the top of bed to take the winch.
3. Go to the front of the car you want to tow to attach the winch.
4. Go near the rear wheel of tow truck to roll up the winch
5. If you need to detach the winch, go back to the front of car and take the winch. You can store it by go back to the top of bed.
6. You can also store the winch directly from prompts near the rear wheels. 
7. Once the car on the bed. You have the possibility to attach the car on it. Go near the rear wheel of the truck to have this option. It will automatically store the winch if you didn't do it before. 
8. Move the bed up from inside the vehicle or near the rear wheels.

## 3. Config.lua
```lua
Config = {}

-------------
-- SCRIPT VALUES
-------------

Config.debug = false                  -- Display helpfull information to setup a new truck
Config.maxLengthWinch = 15.0          -- Max length of the winch
Config.maxDistanceToAttachABike = 3.0 -- Distance from the attach location to auto attach a bike
Config.autoAttach = true              -- Auto attach the vehicle when getting close to the attach location
Config.pushWithWinch = true           -- Can push the car with winch
Config.keepPressedToMoveBed = false   -- Need to keep the key pressed to move the bed
Config.winchSpeed = 1.0               -- Speed of the winch
Config.winchType = 4                  -- Type of the winch

Config.keys = {
  rollUp = "UP",
  rollDown = "DOWN",
  windWinch = "LEFT",
  unwindWinch = "RIGHT",
  detachVehicle = "BACK",
  attachVehicle = "LMENU",
  attachHook = "E",
  takeHook = "E",
  storeHook = "E",
  dropHook = "E",
}

-------------
-- VEHICLE BONES
-------------

Config.validBonesToAttachHook = { --list of valid bones for the vehicles
  "neon_f",
  "neon_l",
  "neon_r",
  "neon_b",
  "engine",
  "bodyshell"
}

Config.validBonesToAttachVehicle = { --list of valid bones for the vehicles
  "bodyshell"
}

-------------
-- VALID TRUCKS
-------------

Trucks = {}

Trucks[`flatbed3`] = {
  winchBone = "misc_b",                       -- The bone where the winch is attached
  winchOffset = vector3(0.3, 0.0, 0.3),       -- <optional> The origin of the winch
  attachVehBone = "misc_a",                   -- The bone where the vehicle is attached
  attachOffset = vector4(0.0, 1.5, 0.0, 0.0), -- <optional> The origin of the attachment
  minBedPosition = 0.025,                     -- <optional> The min bed rollings
  maxBedPosition = 14.0,                      -- <optional> The max bed rollings
  minWinchLength = 1.2                        -- <optional> The min winch length when wind it (default 1.0)
}
Trucks[`slamtruck`] = {
  winchBone = "bodyshell",
  winchOffset = vector3(0., 0.6, 0.6),
  attachVehBone = "bodyshell",
  attachOffset = vector4(0.0, -1.0, 0.3, 10.0),
  minWinchLength = 0.5
}

-------------
-- HUD Functions
-------------

Config.functions = {
  popupMessage = function(message, color)
    PopupMessage(message, color)
  end,
  hideHelpMessage = function()
    HideHelpMessage()
  end,
  drawButtons = function(buttons)
    DrawButtons(buttons)
  end,
  vehicleAttached = function(truck, vehicle)
    PopupMessage(__("vehicleAttached"), 141)
  end,
  vehicleDetached = function(truck, vehicle)
    PopupMessage(__("vehicleDetached"), 141)
  end,
  vehicleHooked = function(truck, vehicle)
    PopupMessage(__("vehicleHooked"), 141)
  end,
}

```
## 4. Add a new vehicle

### 1. Preparation

* **Spawn** the truck you want to configure (example: `lgc9` flatbed).
* **Open** the script's `config.lua` file.

### 2. Enable Debug Mode

* Edit `Config.debug = true` into the `config.lua` file.
* This will show useful markers and values in-game to help with setup.

### 3. Add Your Vehicle to the script's configuration

* Add the default value into the `config.lua` file
```lua
Trucks[`lgc9`] = {
  winchBone = "misc_b",                       -- The bone where the winch is attached
  winchOffset = vector3(0.3, 0.0, 0.3),       -- <optional> The origin of the winch
  attachVehBone = "misc_a",                   -- The bone where the vehicle is attached
  attachOffset = vector4(0.0, 1.5, 0.0, 0.0), -- <optional> The origin of the attachment
}
```

### 4. Set the bones values

* Restart the script with the server command: `ensure jo_towtruck`.
* **In-game, you can see the vehicle's bones by aiming at it with right-click while standing outside.**
1. Define the `winchBone`: Use a bone near the winch reel.
2. Define the `attachVehBone`: The bone must be attached to the bed and follow its movement.

#### 5. Configure winch and Attachment Points

* Restart the script with the server command: `ensure jo_towtruck`.
* Exit the truck — debug markers will show up.
* Use the `winchOffset` to fine-tune the position of the winch.
* Use the `attachOffset` to fine-tune the position of the attachment — it should align with the surface of the bed.

### 6. Test Your Setup

**To tow a vehicle:**
* Spawn the truck.
* Go near the rear wheels.
* Press `↓` to lower the bed.
* Go to the winch reel location.
* Press `E` to take the winch.
* Go near the vehicle you want tow.
* Press `E` to attach the winch.
* Go near the truck's rear wheels.
* Press `←` to wind the winch and release when the vehicle is on the truck.
* Press `Alt` to attach the vehicle to the bed.
* Press `↑` to upper the bed.
* **Done, the vehicle is towed!**


**To untow a vehicle:**
* Go near the rear wheels.
* Press `↓` to lower the bed.
* Press `E` to attach the winch.
* Go near the vehicle.
* Press `E` to attach the winch.
* Go near the truck's rear wheels.
* Press `G` to unwind the winch and release `G` when the vehicle is fully off.
* Go near the vehicle.
* Press `E` to take the winch.
* Go to the winch reel location.
* Press `E` to store the winch.
* Go inside the vehicle.
* Press `J` to upper the bed.
* **Done, the vehicle is untowed!**

---

### 7. Optional parameters

:::details The bed movement is too slow or too fast.  
You can increase/decrease the bed movement by adding the `bedSpeed` value into your truck configuration.
```lua
Trucks[`flatbed3`].bedSpeed = 2.0 
```
:::
:::details The bed doesn't move enough.  
You can edit the maximum of bed movement by adding the `maxBedPosition` value into your truck configuration.
```lua
Trucks[`flatbed3`].maxBedPosition = 6.0 
```
:::
:::defails The bed move in the cab
You can edit the minimum of bed position by adding the `minBedPosition` value into your truck configuration.
```lua
Trucks[`flatbed3`].minBedPosition = 0.025
```
:::
:::details The winch doesn't wind enough or wind too much.  
You can edit the minimum of winch length by adding the `minWinchLength` value into your truck configuration.
```lua
Trucks[`flatbed3`].minWinchLength = 0.65
```
:::
:::details My truck has a wheel lift that I have to move down
You can use the `wheelLift` key to move the wheel lift up/down when the bed move.
```lua
Trucks[`flatbed3`].wheelLift = { 5 } -- list of doors index
```
:::
### 8. Finalize

* Once everything is working think to **Disable the debug mode** by setting `Config.debug = false`.



## 5. For developer

### Restrict the tow truck script to a specific job
You can turn off the script for a specific player by using this client event
```lua
TriggerClientEvent('jo_towtruck:canUseTheScript', source, false)
```
You can turn on the script again with the same client event
```lua
TriggerClientEvent('jo_towtruck:canUseTheScript', source, true)
```
:::details Job lock on Esx
Inside the ```config.lua```:
```lua
if not IsDuplicityVersion() then
  -- Set the valid jobs
  local validJobs = {"police", "mechanical"}
  
  -- Disable the script for everyone
  TriggerEvent('jo_towtruck:canUseTheScript', false)
  
  -- Listening of the job changer
  RegisterNetEvent('esx:setJob', function(job,lastJob)
    for i = 1, #validJobs do
      if job.name == validJobs[i] then
        --Enable the script
        TriggerEvent('jo_towtruck:canUseTheScript', true)
        return
      end
    end
    TriggerEvent('jo_towtruck:canUseTheScript', false)
  end)
end
```
:::

:::details Job lock on QBCore
Inside the ```config.lua```:
```lua
if not IsDuplicityVersion() then
  -- Set the valid jobs
  local validJobs = {"police", "mechanical"}
  
  -- Disable the script for everyone
  TriggerEvent('jo_towtruck:canUseTheScript', false)
  
  -- Listening of the job changer
  RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    for i = 1, #validJobs do
      if job.name == validJobs[i] then
        --Enable the script
        TriggerEvent('jo_towtruck:canUseTheScript', true)
        return
      end
    end
    TriggerEvent('jo_towtruck:canUseTheScript', false)
  end)
end
```
:::

## 6. Some Tow trucks configuration
:::warning
This list is not exhaustive. In most of case, if the bed is animated = the truck is compatible with this script
:::

### independent389
```lua
Trucks[`independent389`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 16.0,
  wheelLift = { 5 },
}
```

### [Maoam Fahrzeug Design](https://mfd.tebex.io/category/2147272)
```lua
Trucks[`389towmfd3`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 12.5,
  minBedPosition = 0.0001,
  wheelLift = { 5 },
}
Trucks[`106towmfd1`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 11.25,
  wheelLift = { 5 }
}
Trucks[`106towmfd2`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 11.,
  wheelLift = { 5 }
}
Trucks[`106towmfd3`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 11.5,
  wheelLift = { 5 }
}
Trucks[`389towmfd6`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  minBedPosition = 0.04,
  maxBedPosition = 11.75,
  wheelLift = { 5 }
}
Trucks[`440towmfd2`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 15.0,
  wheelLift = { 5 }
}
Trucks[`440towmfd4`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  minBedPosition = 0.03,
  maxBedPosition = 15.5,
  wheelLift = { 5 }
}
Trucks[`cortowmfd4`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  minBedPosition = 0.03,
  maxBedPosition = 11.5,
  wheelLift = { 5 }
}
Trucks[`112towmfd3`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 12.25,
  wheelLift = { 5 }
}
```