---
outline: 2
title: "FiveM Lockpick Script (GTA 6 Style): Install and Config"
description: "Free FiveM lockpick minigame inspired by GTA 6: find the hidden sweet spot with one or two sticks. Standalone UI for doors, safes and vehicles, gamepad and keyboard."
head:
  - - meta
    - property: og:type
      content: article
  - - meta
    - property: og:title
      content: "FiveM Lockpick Script (GTA 6 Style): Install and Config"
  - - meta
    - property: og:description
      content: "Free FiveM lockpick minigame inspired by GTA 6: find the hidden sweet spot with one or two sticks. Standalone UI for doors, safes and vehicles, gamepad and keyboard."
  - - meta
    - property: og:url
      content: https://docs.jumpon-studios.com/FiveM/lockpick
  - - meta
    - property: og:image
      content: https://jumpon-studios.com/images/thumbnails/lockpick.webp
  - - meta
    - name: twitter:card
      content: summary_large_image
  - - meta
    - name: twitter:image
      content: https://jumpon-studios.com/images/thumbnails/lockpick.webp
---

# 🔓 Lockpick
Documentation of jo_lockpick, the free **FiveM lockpick script** with a **GTA 6 (GTA VI) style** minigame: players move the stick to find a hidden sweet spot and fill the circle to pick the lock. It runs on FiveM (GTA V) and is inspired by GTA VI, not an official Rockstar Games product.

<BuyScript script="fivem/lockpick" title="Free" free />

## 1. Installation
Lockpick is a standalone script. So you don't need a specific framework to use it. It also means **it works with all frameworks** (ESX, QBCore, QBox, VRP, …). It only requires **OneSync**.

- [Get it for free on the store](https://jumpon-studios.com/fivem/lockpick?utm_source=docs&utm_medium=referral&utm_campaign=installation&utm_content=lockpick), then download it from the Cfx.re portal
- Drag and drop the resource in your resources folder
  - jo_lockpick
- Add it to your server.cfg
  - `ensure jo_lockpick`

Congratulation, the **Lockpick** script is ready to be used!

::: tip Only the minigame
Lockpick is **only the minigame interface**: there is no door, vehicle, safe or item logic inside. Your scripts start it with an export and decide what happens on success or failure. This keeps it compatible with every door lock, vehicle key, robbery and inventory script.
:::

## 2. Usage
The minigame always shows in the center of the screen:
1. A sweet spot is hidden around each circle, in one of 8 directions by default.
2. The circle fills slowly on its own, even without touching the stick, and **10 times faster** when the stick points inside the sweet spot.
3. The center badge takes the circle color as the stick gets closer to the spot, and vibrates once inside it. On a gamepad, the vibration grows as you get closer.
4. A full circle locks. The lock is picked when every circle is full.

| Input | Left circle | Right circle |
| --- | --- | --- |
| Gamepad | Left stick | Right stick |
| Keyboard & mouse | Movement keys (8 directions) | Mouse |

With **1 circle**, only the right one is shown (right stick or mouse). With **2 circles**, both sweet spots must be found.

Cancel the attempt with `F`, `Escape` or `Backspace` (`Y` or `B` on a gamepad).

### Fail mode
With `failMode.enabled`, a timer runs below the circles and the circle **drains** when the stick is out of its sweet spot, even at rest. When the timer is over, the attempt fails. With `failMode.holdCompleted` and 2 circles, a full circle must also stay in its sweet spot while the player looks for the other one.

## 3. Configuration

<ScriptConfig scriptPath="fivem/lockpick" />

| Option | Use |
| --- | --- |
| `circles` | `1` (right stick or mouse) or `2` (both sticks) |
| `scale` | Size of the UI: `1.5` by default, `1.0` for circles of 116 px, `2.0` for 232 px |
| `zoneSize` | Width of the sweet spot in degrees: smaller is harder |
| `fillDuration` | Time (ms) to fill a circle out of the sweet spot |
| `zoneMultiplier` | Fill speed inside the sweet spot |
| `angleSteps` | Possible directions of the sweet spot: `8` matches the 8 keyboard directions, `0` is any angle |
| `targetDrift` | Rotation speed of the sweet spot (degrees/s), `0` = static |
| `failMode` | Timer, drain out of the sweet spot and failure |
| `color` | A CSS color for every circle (`"#4fd1ff"`), or a list to pick a random one per circle |
| `border` | Border of the circles and badges, `false` for none |

::: warning Keyboard and small sweet spots
The keyboard only has 8 directions. Keep `zoneSize` at 45 or more when `angleSteps` is not `8` or when `targetDrift` is used, else the sweet spot can fall between two directions.
:::

## 4. Integration with your scripts
Call the export from a client script. It waits for the end of the attempt and returns `"success"`, `"failed"` or `"cancelled"`. The `options` table is optional and overrides `Config.minigame` for this call only.

### Pick a locked vehicle door
```lua
local vehicle = GetVehiclePedIsTryingToEnter(PlayerPedId())
if vehicle ~= 0 and GetVehicleDoorLockStatus(vehicle) == 2 then
  ClearPedTasks(PlayerPedId())
  local result = exports.jo_lockpick:StartLockpick()

  if result == "success" then
    SetVehicleDoorsLocked(vehicle, 1)
  end
end
```

### A harder safe with both sticks and a time limit
```lua
local result = exports.jo_lockpick:StartLockpick({
  circles = 2,                   -- both sweet spots must be found
  zoneSize = 30,                 -- smaller sweet spots
  failMode = { enabled = true }, -- timer, and the circles drain out of the sweet spots
})

if result == "success" then
  -- open the safe
elseif result == "failed" then
  -- timer over: alert the police, break the lockpick...
else -- "cancelled"
  -- the player gave up, nothing happens
end
```

### Difficulty per lock
```lua
local difficulties = {
  easy = { zoneSize = 70 },
  medium = { zoneSize = 50 },
  hard = { zoneSize = 30, targetDrift = 20, failMode = { enabled = true } },
}

local result = exports.jo_lockpick:StartLockpick(difficulties.hard)
```

## 5. For developers
### Exports
```lua
-- @side : Client side
exports.jo_lockpick:StartLockpick(options) -- Run the minigame, returns "success", "failed" or "cancelled"
exports.jo_lockpick:IsLockpickRunning()
```
Calling `StartLockpick` while a minigame is already running returns `"cancelled"` immediately.

### Events
Each event receives the final minigame config of the attempt.
```lua
-- @side : Client side
AddEventHandler("jo_lockpick:client:started", function(config) end)
AddEventHandler("jo_lockpick:client:succeeded", function(config) end)
AddEventHandler("jo_lockpick:client:failed", function(config) end)
AddEventHandler("jo_lockpick:client:cancelled", function(config) end)
```

### Debug command
With `Config.debugMode = true`, the sweet spots are shown and `/lockpick [1|2] [fail]` runs the minigame with 1 or 2 circles, optionally with the fail mode.
