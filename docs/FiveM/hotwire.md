---
outline: 2
title: "GTA 6 Hotwire Script for FiveM: Install and Config"
description: "Free FiveM hotwire script with a GTA 6 style two-stick minigame to steal parked cars. Standalone for ESX, QBCore and QBox, gamepad and keyboard."
head:
  - - meta
    - property: og:type
      content: article
  - - meta
    - property: og:title
      content: "GTA 6 Hotwire Script for FiveM: Install and Config"
  - - meta
    - property: og:description
      content: "Free FiveM hotwire script with a GTA 6 style two-stick minigame to steal parked cars. Standalone for ESX, QBCore and QBox, gamepad and keyboard."
  - - meta
    - property: og:url
      content: https://docs.jumpon-studios.com/FiveM/hotwire
  - - meta
    - property: og:image
      content: https://jumpon-studios.com/images/thumbnails/hotwire.webp
  - - meta
    - name: twitter:card
      content: summary_large_image
  - - meta
    - name: twitter:image
      content: https://jumpon-studios.com/images/thumbnails/hotwire.webp
---

# <img src='/images/hotwire.webp' class="icon-light" /><img src='/images/hotwire-dark.webp' class="icon-dark" /> GTA 6 Hotwire
jo_hotwire is a free and open source **FiveM hotwire script** with a **GTA 6 (GTA VI) style** two-stick minigame. Turn both sticks to the right spots to start a parked car without a key. Inspired by GTA VI, not an official Rockstar Games product.

The minigame comes from [Lockpick](/FiveM/lockpick), our free lockpick script. Hotwire starts it with its export, so it is also a full Lockpick integration example (see [how Hotwire calls it](/FiveM/lockpick#real-integration-hotwire)).

<BuyScript script="fivem/hotwire" title="Free and open source" free />

## 1. Installation
**Works with every framework** (ESX, QBCore, QBox, VRP, …). Requires **OneSync** and **[Lockpick](/FiveM/lockpick) 1.1.0 or later** (free).

- [Get Lockpick for free on the store](https://jumpon-studios.com/fivem/lockpick?utm_source=docs&utm_medium=referral&utm_campaign=installation&utm_content=hotwire) and [Hotwire](https://jumpon-studios.com/fivem/hotwire?utm_source=docs&utm_medium=referral&utm_campaign=installation&utm_content=hotwire), then download both from the Cfx.re portal
- Put `jo_lockpick` and `jo_hotwire` in your resources folder
- Add them to your server.cfg, Lockpick first:
  - `ensure jo_lockpick`
  - `ensure jo_hotwire`

::: tip GTA V Enhanced ready
Hotwire works on **FiveM for GTAV Enhanced** (tested in game) and on FiveM Legacy, with the same files.
:::

::: tip Lockpick missing or too old
If jo_lockpick is stopped or older than 1.1.0, every attempt is cancelled. The F8 console says why.
:::

::: warning Updating from Hotwire 1.x
Install jo_lockpick first. `config/minigame.lua` now holds the options passed to Lockpick. The cancel keys, sounds, gamepad vibration and mouse sensitivity moved to the config of jo_lockpick.
:::

## 2. Usage
The minigame starts by itself when a player sits at the wheel of a parked vehicle, engine off:
1. Two half-circles appear in the center of the screen, in the paint color of the vehicle. Each hides a zone, in a new direction every attempt.
2. A half-circle fills in about 1 second while its stick stays in the zone. It drains when the stick leaves. The part left to fill is paler.
3. A full half-circle must stay in its zone until the other one is full. Then the engine starts.
4. After 15 seconds, the attempt fails and the alarm may go off. Press `H` (D-pad right on a gamepad) to try again.

<img src="/images/hotwire/minigame.webp" alt="FiveM hotwire minigame: two half-circles in the paint color of the vehicle, with the timer below" class="preview" data-zoomable />

| Input | Left half-circle | Right half-circle |
| --- | --- | --- |
| Gamepad | Left stick | Right stick |
| Keyboard & mouse | Movement keys (8 directions) | Mouse |

Cancel with `F`, `Escape` or `Backspace` (`Y` or `B` on a gamepad). Keys, sounds, vibration and mouse sensitivity are set in jo_lockpick.

By default, only parked ambient vehicles need hotwiring:
- Vehicles spawned by scripts (garages, admin menus): ignored, see `Config.hotwireScriptVehicles`
- Vehicles taken from a driver, engine running: ignored, see `Config.hotwireRunningVehicles`
- Bicycles, boats, helicopters, planes and trains: never, see `Config.excludedClasses`

A hotwired vehicle stays hotwired for every player.

## 3. Configuration

<ScriptConfig scriptPath="fivem/hotwire" />

`config/minigame.lua` holds the options passed to `exports.jo_lockpick:StartLockpick`. They set the half-circles (`shape = 50`, `track = "pale"`), zone size, fill speed and time limit. You can add any option of the [Lockpick configuration](/FiveM/lockpick#_3-configuration), such as `scale` or `progressWidth`. They only change the hotwire minigame. `color = "vehicle"` uses the paint of the vehicle.

## 4. Integration with your scripts
Every integration point is a function in `config/_default.lock/functions.lua`. Copy the file into `config/custom` to edit it.

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
exports.jo_hotwire:StartMinigame()              -- The hotwire minigame alone (Lockpick with the hotwire options), returns true on success
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
- `/resetHotwire`: forget the hotwired state of the current vehicle (on foot: the closest one within 6 m)

To see the hidden zones, enable `Config.debugMode` of jo_lockpick.
