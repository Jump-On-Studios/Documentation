# <img src='/images/wheelclamp.webp'/> Wheel clamp
Documentation relating to the jo_wheellock.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/fivem/wheel-clamp)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/rccp5TI9q6Y?si=E4muYL9-q__TX3os" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
jo_wheellock is a standalone script. So you don't need a specific framework to use it. It's also mean it works with all framework (Esx, QBCore, VRP, DRP, …).

- Drag and drop the resource in your resources folder
  - jo_wheellock
- Add this ensure in your server.cfg
  - `ensure jo_wheellock`
- Congratulation, the Wheel lock script is ready to be use !

## 2. Usage
You have twos way to put/remove the wheel lock on the car in front of you :
- Use the command : /wheellock
- Use the client event : 'jo_wheellock:action'

## 3. Config.lua

<ScriptConfig scriptPath="fivem/wheel-clamp" />

## 4. For developer
Spawn the wheel lock on car without player animation :
```lua
-- @param vehNet : Server ID of the vehicle
-- @param boneName : Name of the bone where the wheel lock is
-- @side : Client side
TriggerEvent("jo_wheellock:addLockedCars", vehNet, 0, boneName)

```
Use event to put/remove the wheel lock :
```lua
-- @side : Client side
TriggerEvent('jo_wheellock:action')       -- Put or remove the wheel lock
TriggerEvent('jo_wheellock:actionPut')    -- Only Put the wheel lock
TriggerEvent('jo_wheellock:actionRemove') -- Only Remove the wheel lock

```

## 5. Snippets
### <Badge type="esx" text="ESX" /> Restrict the wheellock with job
Use this canUseWheellock function in the configuration
```lua
ESX = exports['es_extended']:getSharedObject()
Config.canUseWheellock = function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    return (xPlayer.getJob().name == "police")
end

```
### <Badge type="qb" text="QBcore" /> Restrict the wheellock with job
Use this canUseWheellock function in the configuration
```lua
QBCore = exports['qb-core']:GetCoreObject()
Config.canUseWheellock = function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    return (Player.PlayerData.job.type == "police" or Player.PlayerData.job.type == "mechanic")
end

```