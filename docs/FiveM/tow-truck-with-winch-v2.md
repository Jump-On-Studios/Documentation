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

<ScriptConfig scriptPath="fivem/tow-truck-with-winch-v2" />
## 4. Add a new vehicle

### 1. Preparation

* **Spawn** the truck you want to configure (example: `lgc9` flatbed).
* **Open** the script's `config.lua` file.

### 2. Enable Debug Mode

* Edit `Config.debug = true` into the `config.lua` file.
* This will show useful markers and values in-game to help with setup.
* Use `/towtruckcalibrate <model>` to check the truck compatibility, its configured bones and its bed values in the F8 console.

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

### 5. Configure winch and Attachment Points

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
* Press `E` to attach the winch to the vehicle.
* Press `→` to unwind the winch and release `→` when the vehicle is fully off.
* Go near the vehicle.
* Press `E` to take the winch.
* Go to the winch reel location.
* Press `E` to store the winch.
* Go near the rear wheels or inside the truck.
* Press `↑` to upper the bed.
* **Done, the vehicle is untowed!**

---

### 7. Optional parameters

`minBedPosition` and `maxBedPosition` are distances in meters between the front of the truck and the `attachVehBone`. In debug mode, `/towtruckcalibrate <model>` spawns the truck on you (stand on a flat ground), prints both values in the F8 console and plays the bed movement with them: adjust `bedSpeed` if it's too slow or too fast.

:::details The bed movement is too slow or too fast.  
You can increase/decrease the bed movement by adding the `bedSpeed` value into your truck configuration.
```lua
Trucks[`flatbed3`].bedSpeed = 2.0 
```
:::
:::details The bed doesn't lower enough or lower too much.  
You can edit the maximum of bed movement by adding the `maxBedPosition` value into your truck configuration.
```lua
Trucks[`flatbed3`].maxBedPosition = 6.0 
```
:::
:::details My truck goes in the sky when I lower the bed.  
You can have to reduce the maximum of bed movement by editing/adding the `maxBedPosition` value into your truck configuration.
```lua
Trucks[`flatbed3`].maxBedPosition = 6.0 
```
:::
:::details The bed move in the cab or doesn't raise enough.  
You can edit the minimum of bed position by adding the `minBedPosition` value into your truck configuration.
```lua
Trucks[`flatbed3`].minBedPosition = 3.0
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

### Integration with other resources
The state of every tow truck is stored in [state bags](https://docs.fivem.net/docs/scripting-manual/networking/state-bags/) on the truck entity. They are readable from any resource (client and server) with `Entity(truck).state` and you can listen to their changes with `AddStateBagChangeHandler`. You don't need to edit the script to integrate it.

| State bag | Value | Description |
| --- | --- | --- |
| `jo_towtruck_vehicleAttached` | `netId` \| `nil` | Network ID of the vehicle secured on the bed |
| `jo_towtruck_bedPosition` | `number` \| `nil` | Position of the bulldozer arm moving the bed, from `0.0` to `1.0` |
| `jo_towtruck_rolling` | `number` \| `nil` | Speed of the bed while it's moving (`> 0` lowering, `< 0` raising). `nil` when the bed doesn't move |
| `jo_towtruck_fullDown` | `boolean` \| `nil` | `true` when the bed is fully lowered (`maxBedPosition` reached) |
| `jo_towtruck_fullUp` | `boolean` \| `nil` | `true` when the bed is fully raised (`minBedPosition` reached), `false` when it's lowered. `nil` if the bed never moved |
| `jo_towtruck_winchAttachedTo` | `table` \| `nil` | Where the winch hook is: `{ player = serverId }` (in hand), `{ hook = netId }` (on the ground), `{ vehicle = netId, bone = boneName }` (hooked to a vehicle). `nil` when the winch is stored |
| `jo_towtruck_windWinch` | `table` \| `nil` | `{ player = serverId, speed = number }` while the winch is winding (`speed > 0`) or unwinding (`speed < 0`) |

#### Get the configuration of a truck
Available on client and server side. Returns the `Trucks` entry of the model from the `config.lua`, or `nil` if the model isn't a configured tow truck. Optional values not set in the configuration are `nil` (defaults: `minBedPosition = 0.0`, `minWinchLength = 1.0`, `bedSpeed = 1.0`).
```lua
local truckConfig = exports.jo_towtruck:GetTruckConfig(GetEntityModel(truck))
-- or with the model name
local truckConfig = exports.jo_towtruck:GetTruckConfig("flatbed3")
```

:::details Detect when a vehicle is attached/detached from the bed
```lua
-- Server side
AddStateBagChangeHandler("jo_towtruck_vehicleAttached", nil, function(bagName, _, vehNetId)
  local truck = GetEntityFromStateBagName(bagName)
  if truck == 0 then return end
  if vehNetId then
    print("Vehicle attached", NetworkGetNetworkIdFromEntity(truck), vehNetId)
  else
    -- The state bag is not updated yet when the handler is called: it still contains the previous vehicle
    local oldVehNetId = Entity(truck).state.jo_towtruck_vehicleAttached
    print("Vehicle detached", NetworkGetNetworkIdFromEntity(truck), oldVehNetId)
  end
end)
```
:::

:::details Check the bed and the winch state
```lua
local function isBedLowered(truck)
  local state = Entity(truck).state
  return not state.jo_towtruck_rolling and state.jo_towtruck_fullUp == false
end

local function isVehicleSecured(truck, vehicle)
  return Entity(truck).state.jo_towtruck_vehicleAttached == NetworkGetNetworkIdFromEntity(vehicle)
end

local function isVehicleBeingWinched(truck, vehicle)
  local state = Entity(truck).state
  local winch = state.jo_towtruck_winchAttachedTo
  return winch and winch.vehicle == NetworkGetNetworkIdFromEntity(vehicle) and state.jo_towtruck_windWinch ~= nil
end
```
:::

:::details Detach or delete a transported vehicle
To detach the vehicle from the bed, clear the state bag from the server side:
```lua
Entity(truck).state.jo_towtruck_vehicleAttached = nil
```
If a resource deletes the transported vehicle (scrapyard, impound, …), the truck is automatically released.
:::

## 6. Some Tow trucks configuration
:::warning
This list is not exhaustive. In most of case, if the bed is animated = the truck is compatible with this script
:::

:::tip Make a bed movable by the script
The bed must be the `scoop` bone of the model (GTA bulldozer arm) with a limited rotation, like the `flatbed3`: its pivot is placed far below the truck, so the rotation looks like a slide. The `attachVehBone` (and the `winchBone` if the winch is on the bed) must be children of `scoop` to follow the bed.
:::

:::warning Trucks with a forklift bed
A bed using the forklift forks (`forks` bone) can't be moved by any script: this is a limitation of FiveM and GTA, not of this script. The driver moves it with `SHIFT`/`CTRL`, the winch and the attachment still work.
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
Trucks[`112towmfd2`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 11.25,
  wheelLift = { 5 }
}
Trucks[`112towmfd3`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 12.25,
  wheelLift = { 5 }
}
Trucks[`112towmfd4`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 12.5,
  wheelLift = { 5 }
}
Trucks[`112towmfd5`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 12.5,
  wheelLift = { 5 }
}
Trucks[`112towmfd6`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 12.25,
  wheelLift = { 5 }
}
Trucks[`389towmfd2`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 11.75,
  wheelLift = { 5 }
}
Trucks[`389towmfd3`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 12.5,
  wheelLift = { 5 },
}
Trucks[`389towmfd6`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
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
  maxBedPosition = 15.5,
  wheelLift = { 5 }
}
Trucks[`cortowmfd4`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 11.5,
  wheelLift = { 5 }
}
Trucks[`biftowmfd2`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  maxBedPosition = 11.75,
  wheelLift = { 5 }
}
```

### [20ramrbc](https://www.redneckmods.com/products/2020-5500-crew-single-cab-rollback-tow-trucks)
```lua
Trucks[`20ramrbc`] = {
  winchBone = "attach_male",
  winchOffset = vector3(0.0, 0.0, 0.0),
  attachVehBone = "misc_z",
  attachOffset = vector4(0.0, 0.75, 0.0, 0.0),
  maxBedPosition = 13.0,
  minWinchLength = 1.0
}
```

### [Lenand's shop](https://tebex.lenand.com/)
```lua
Trucks[`actschlepu1`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  attachOffset = vector4(0.0, 0.0, -0.5, 0.0),
  maxBedPosition = 10.0
}
Trucks[`actschlepu2`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  attachOffset = vector4(0.0, 0.0, -0.5, 0.0),
  maxBedPosition = 10.0
}
Trucks[`actschlepp`] = {
  winchBone = "attach_male",
  attachVehBone = "misc_z",
  attachOffset = vector4(0.0, 0.0, -0.5, 0.0),
  maxBedPosition = 10.0
}
```