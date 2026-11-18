---
outline: 2
title: "Hotwire: installation and configuration"
description: "Install and configure the free FiveM Hotwire script (jo_hotwire): two-stick minigame, vehicles to hotwire, key, item and dispatch integration, exports and events."
---

# 🔌 Hotwire
Documentation relating to the jo_hotwire.

<BuyScript script="fivem/hotwire" title="Free and open source" free />

## 1. Installation
Hotwire is a standalone script. So you don't need a specific framework to use it. It also means **it works with all frameworks** (Esx, QBCore, VRP, DRP, …). It only requires **OneSync**.

- Download the resource from [GitHub](https://github.com/Jump-On-Studios/FiveM-Hotwire/releases/latest) or the Cfx.re portal
- Drag and drop the resource in your resources folder
  - jo_hotwire
- Add it to your server.cfg
  - `ensure jo_hotwire`

Congratulation, the **Hotwire** script is ready to be used!

## 2. Usage
When a player sits in the driver seat of a parked vehicle with its engine off, the minigame starts by itself:
1. Two half-circles appear above the vehicle. Their orientation changes at every attempt.
2. Each stick must point at the middle of its half-circle: the half-circle fills as the stick gets closer.
3. Both sticks must stay in their zone for a moment to start the engine.
4. If the time runs out, the attempt fails and the alarm may go off. Press `H` (D-pad right on a gamepad) to try again.

| Input | Left half-circle | Right half-circle |
| --- | --- | --- |
| Gamepad | Left stick | Right stick |
| Keyboard & mouse | Movement keys (8 directions) | Mouse |

Cancel the attempt with `F`, `Escape` or `Backspace` (`B` on a gamepad).

By default, only the parked ambient vehicles need to be hotwired:
- Vehicles spawned by scripts (garages, admin menus) are ignored: `Config.hotwireScriptVehicles`
- Vehicles taken from a driver with the engine running are ignored: `Config.hotwireRunningVehicles`
- Bicycles, boats, helicopters, planes and trains never need it: `Config.excludedClasses`

Once hotwired, a vehicle stays hotwired for every player.

## 3. Configuration

<ScriptConfig scriptPath="fivem/hotwire" />

## 4. Integration with your scripts
All the integration points are functions of `config/_default.lock/functions.lua`. Copy the file into `config/custom` to edit them.

| Function | Side | Use |
| --- | --- | --- |
| `Config.needsHotwire(vehicle)` | Client | Return `false` to skip the minigame (e.g. the player has the keys) |
| `Config.canStartHotwire(vehicle)` | Client | Return `false` to block an attempt (e.g. missing item) |
| `Config.notify(message, type)` | Client | Use your own notification system |
| `Config.onHotwireSuccess(vehicle)` | Client | Give the keys with your key script |
| `Config.onHotwireFailed(vehicle, alarmTriggered)` | Client | Send a police alert with your dispatch script |
| `Config.onVehicleHotwiredServer(source, vehicle)` | Server | The server validated a hotwire |
| `Config.onHotwireFailedServer(source, vehicle, alarmTriggered)` | Server | A player failed a hotwire |

### <Badge type="qb" text="QBcore" /> Skip the minigame with the vehicle keys
```lua
Config.needsHotwire = function(vehicle)
  return not exports["qb-vehiclekeys"]:HasKeys(GetVehicleNumberPlateText(vehicle))
end
```

## 5. For developers
### Exports
```lua
-- @side : Client side
exports.jo_hotwire:StartHotwire(vehicle)        -- Run an attempt on the vehicle driven by the player, returns true on success
exports.jo_hotwire:IsVehicleHotwired(vehicle)
exports.jo_hotwire:SetVehicleHotwired(vehicle)  -- e.g. when the player gets the keys
exports.jo_hotwire:StartMinigame()              -- Use the minigame alone, returns true on success
exports.jo_hotwire:IsMinigameRunning()
```
```lua
-- @side : Server side
exports.jo_hotwire:SetVehicleHotwired(vehicle)  -- or (netId, true)
exports.jo_hotwire:IsVehicleHotwired(vehicle)
```

### Events
```lua
-- @side : Client side
AddEventHandler("jo_hotwire:client:hotwireStarted", function(vehicle) end)
AddEventHandler("jo_hotwire:client:hotwireSucceeded", function(vehicle) end)
AddEventHandler("jo_hotwire:client:hotwireFailed", function(vehicle, alarmTriggered) end)
AddEventHandler("jo_hotwire:client:hotwireCancelled", function(vehicle) end)
```
```lua
-- @side : Server side
AddEventHandler("jo_hotwire:server:vehicleHotwired", function(source, vehicle) end)
AddEventHandler("jo_hotwire:server:hotwireFailed", function(source, vehicle, alarmTriggered) end)
```

### Debug commands
With `Config.debugMode = true`:
- `/hotwire`: force an attempt on the current vehicle
- `/hotwireMinigame`: run the minigame alone
- `/resetHotwire`: forget the hotwired state of the current vehicle, or of the closest one within 6 m when on foot
