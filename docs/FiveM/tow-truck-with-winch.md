---
outline: 2
---

# <img src='/images/towtruck.webp'/> Tow Truck with WINCH
Documentation relating to the kd_towtruck.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/fivem/tow-truck-with-winch)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/derm4LaiuGo?si=3PLcRE8vNp_iTgrN" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
Tow Truck with WINCH is a standalone script. So you don't need a specific framework to use it. It's also mean it works with all framework (Esx, QBCore, VRP, DRP, …).

- Drag and drop this 3 resources in your resources folder
  - kd_custom_native
  - kd_hud-event
  - kd_towtruck
- Add this 3 ensures in your server.cfg
  - `ensure kd_custom-native`
  - `ensure kd_hud-event`
  - `ensure kd_towtruck`
- Congratulation, the Tow Truck with WINCH script is ready to be use !
- 
## 2. Usage
By default, the script is configured to work with a custom flatbed : `flatbed3`. Use your admin menu (or other scripts) to spawn it. 

A help message with key will appears at the top left of your screen every time action is available. Please read them to know what keys are usable. 
1. Enter the truck to lower the bed. Wait the bed is fully down to get out of the truck.
2. Go to the top of bed to take the winch.
3. Go to the front of the car you want to tow to attach the winch.
4. Go near the rear wheel of tow truck to roll up the winch
5. If you need to detach the winch, go back to the front of car and take the winch. You can store it by go back to the top of bed. 
6. Once the car on the bed. You have the possibility to attach the car on it. Go near the rear wheel of the truck to have this option. It will automatically store the winch if you didn't do it before. 
7. Enter the truck to upper the bed.

## 3. Config.lua
```lua
Config = {}

-- Display helpfull information to setup a new truck
Config.Debug = false
-- Max length of the winch
Config.MaxLengthRope = 19.0
-- Can push the car with rope ? (unrealistic but useful to get off the vehicle of the bed)
Config.pushWithRope = true
-- Duration to synchronize the rope between players
Config.ResyncRopeFrenquency = 10000 --ms
-- Keys
Config.DefaultKeys = {
  tow = "j",
  winch = "h",
  unwind = "g"
}
-- Model name of the hook object
Config.HookModel = 'prop_rope_hook_01'

-- List of truck available for this script (you can add more)
Config.ValidModel = {
  -- Copy this array to add vehicle.
  [`flatbed3`] = {
    -- Set bedUp & bedDown to 0 if you don't need to move the bed to use the winch
    referenceBone = "bodyshell",                 --optional, by default: bodyshell
    --referenceBone <-> attachVehBone is the distance to define if the bed is up or down
    bedUp = 3.7,                                 -- Distance between bodyshell bone and attachVehBone when the bed is up
    bedDown = 8.1,                               -- Distance between bodyshell bone and attachVehBone when the bed is down
    ropeBone = "misc_b",                         -- Bone where the rope is attached
    ropeOffset = vector3(0, 0, 0.3),             -- offset from ropeBone to adjust the position of the rope
    ropeDistancetake = 1.5,                      -- Max distance to take the winch
    attachVehBone = "misc_a",                    -- Bone where the vehicle is attached
    attachLocationOffset = vector3(0.0, 0.0, 0.0), --optional: offset from the attachVehBone bone
    attachOffset = vector4(0.0, 0.0, 0.0, 0.0)   -- for the vehicle location when attach (w value is the tilt)
  },
  [`slamtruck`] = {
    bedUp = 0,
    bedDown = 0,
    ropeBone = "bodyshell",
    ropeOffset = vector3(0.0, 0.7, 0.5),
    ropeDistancetake = 1.5,
    attachVehBone = "bodyshell",
    attachOffset = vector4(0, 0.0, 0.0, 10.0)
  },
}

```
## 4. Add a new vehicle

**All tow trucks with movable bed are compatible with the script.**

To add it, just copy the `flatbed3` array in the Config.ValidModel variable and change the modelname. Sometime, you will have to change the configuration of the vehicle to make it more usable. 

:::details Video Tutorial
<iframe width="560" height="315" src="https://www.youtube.com/embed/fIqxunMiysM?si=7FMDnCkC36rRvS8i" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
:::

:::details Written tutorial

### 1. Preparation

* **Spawn** the truck you want to configure (example: `lgc9` flatbed).
* **Open** the script's `overwriteConfig.lua` file.

### 2. Enable Debug Mode

* Add `Config.Debug = true` into the `overwriteConfig.lua` file.
* This will show useful markers and values in-game to help with setup.

### 3. Add Your Vehicle to the script's configuration

* Add the default value into the `overwriteConfig.lua` file
```lua
[`lgc9`] = {
  referenceBone = "bodyshell",                   -- Reference bone
  ropeBone = "misc_bone",                           -- Bone where the rope is attached
  attachVehBone = "misc_attach",                      -- Bone where the vehicle is attached
  bedUp = 0.0,                                   -- Distance between bodyshell bone and attachVehBone when the bed is up
  bedDown = 30.0,                                 -- Distance between bodyshell bone and attachVehBone when the bed is down
  bedSpeed = 0.3,                                -- Speed of the bed movement 0.0 <> 1.0
  ropeOffset = vector3(0, 0, 0.0),               -- offset from ropeBone to adjust the position of the rope
  ropeDistancetake = 1.5,                        -- Max distance to take the winch
  attachLocationOffset = vector3(0.0, 0.0, 0.0), --optional: offset from the attachVehBone bone
  attachOffset = vector4(0.0, 0.0, 0.0, 0.0)     -- for the vehicle location when attach (w value is the tilt)
},
```

### 4. Set the bones values

* Restart the script with the server command: `ensure kd_towtruck`.
* **In-game, you can see the vehicle's bones by aiming at it with right-click while standing outside.**
1. Define the `referenceBone`: Use a bone at the front of the truck (like "engine").
2. Define the `ropeBone`: Use a bone near the winch reel.
3. Define the `attachVehBone`: The bone must be attached to the bed and follow its movement.

### 5. Define the bedUp value

1. Restart the script
2. Go inside the truck
3. Be sure the bed is at its normal position.
4. (If not, respawn the truck)
5. Get the `bedUp/bedDown` value displayed above the bed when the bed is at its normal position.
6. Increase it by 0.01.
  * Example: `bedUp/bedDown: 3.229874923`. Use `bedUp = 3.24`

### 6. Define the bedDown value

1. Restart the script
2. Stay inside the truck
3. Use the `Config.DefaultKeys.tow` key (**J** by default) to lower the bed.
4. Get the new `bedUp/bedDown` value displayed above the bed.
5. (If the bed doesn't move enough, increase the default value of bedDown)
6. Decrease it by 0.01. 
  * Example: `bedUp/bedDown: 7.78729384`. Use `bedDown = 7.77`

Done ! You can restart the script and test the bed movement.
It should move right from the start to the end. If not, adjust the `bedUp` and `bedDown` values.

*You can adjust the bed movement speed by edit the `bedSpeed` value*

#### 5. Configure Rope and Attachment Points

* Exit the truck — debug markers will show up.
* Use the `ropeOffset` to fine-tune the position of the rope.
* Use the `attachLocationOffset` to fine-tune the position of the attachment — it should align with the surface of the bed.

### 6. Test Your Setup

**To tow a vehicle:**
* Spawn the truck.
* Go inside the vehicle.
* Press `J` to lower the bed.
* Go to the winch reel location.
* Press `E` to take the rope.
* Go near the vehicle you want tow.
* Press `E` to attach the rope.
* Go near the truck's rear wheels.
* Press `H` to wind the winch and release when the vehicle is on the truck.
* Press `E` to attach the vehicle to the bed. 
   * If the `E` prompt is not show, reduce your `bedDown` value. The prompt is only displayed when the bed is fully down.
* Go inside the truck.
* Press `J` to upper the bed.
* **Done, the vehicle is towed!**


**To untow a vehicle:**
* Go inside the vehicle.
* Press `J` to lower the bed.
* Go near the truck's rear wheels.
* Press `E` to detach the vehicle.
* Go to the winch reel location.
* Press `E` to take the rope.
* Go near the vehicle.
* Press `E` to attach the rope.
* Go near the truck's rear wheels.
* Press `G` to unwind the rope and release `G` when the vehicle is fully off.
* Go near the vehicle.
* Press `E` to take the rope.
* Go to the winch reel location.
* Press `E` to store the rope.
* Go inside the vehicle.
* Press `J` to upper the bed.
* **Done, the vehicle is untowed!**

---

### 7. Finalize

* Once everything is working think to **Disable the debug mode** by setting `Config.Debug = false`.
:::


## 5. For developer
You can turn off the script for a specific player by using this client event
```lua
TriggerClientEvent('kd_towtruck:CanUse', source, false)

```
You can turn on the script again with the same client event
```lua
TriggerClientEvent('kd_towtruck:CanUse', source, true)

```

You can overwrite the notification function by added these functions in the `overwriteConfig.lua` file:
```lua
---@param texts table
---Warning : Execute every frame
function Config.DisplayHelp(texts)
  for _, text in pairs(texts) do
    print(text)
  end
end

---@param text string the content of the notification
---@param color integer the color of the notification
function Config.Notif(text, color)
  print(text, color)
end

```

## 6. Some Towtrucks configuration
### cortowmfd4
```lua
Config.ValidModel[`cortowmfd4`] = {
  bedUp = 1.901,
  bedDown = 6.0,
  ropeBone = "attach_male",
  ropeDistancetake = 1.5,
  attachVehBone = "misc_z",
}

```
### lgc19flatbed
```lua
Config.ValidModel[`lgc19flatbed`] = {
  bedUp = 3.235,
  bedDown = 7.7,
  ropeBone = "misc_b",
  ropeDistancetake = 1.5,
  attachVehBone = "misc_a",
}

```
### 20ramrbc
```lua
Config.ValidModel[`20ramrbc`] = {
  bedUp = 4.449,
  bedDown = 6.87,
  ropeBone = "attach_male",
  ropeDistancetake = 1.5,
  attachVehBone = "misc_z",
}

```
### c3navistar
```lua
Config.ValidModel[`c3navistar`] = {
  bedUp = 4.603,
  bedDown = 9.8,
  ropeBone = "misc_a",
  ropeOffset = vector3(0.0, 0.0, -0.2),
  ropeDistancetake = 1.5,
  attachVehBone = "misc_b",
}

```
### BFGWBerg
```lua
Config.ValidModel[`BFGWBerg`] = {
  bedUp = 2.31,
  bedDown = 6.45,
  ropeBone = "misc_b",
  ropeOffset = vector3(-0.20, 0.00, 0.0),
  ropeDistancetake = 1.3,
  attachVehBone = "misc_a",
}

```
### Mercedes Atego
[Download](https://www.gtainside.com/en/gta5/cars/185943-mercedes-benz-atego-adac-flatbed/)
```lua
Config.ValidModel[`flatbed4`] = {
  referenceBone = "misc_d",
  bedUp = 1.92,
  bedDown = 6.310,
  ropeBone = "misc_b",
  ropeOffset = vector3(0, -0.9, -0.1),
  ropeDistancetake = 1.5,
  attachVehBone = "misc_b",
  attachLocationOffset = vector3(0.0, -3.0, -1.0),
}

```
