<!-- #region client|jo.animation.goToCoords -->
#### Example
```lua
local ped = PlayerPedId()
local destination = vec4(1324.0, 234.0, 50.0, 180.0)
local speed = 2.0
local waiter = true
local distanceToStop = 3.0
jo.animation.goToCoords(ped, destination, speed, waiter, distanceToStop)

```
<!-- #endregion client|jo.animation.goToCoords -->

<!-- #region client|jo.animation.load -->
#### Example
```lua
local dict = "cnv_camp@rchso@cnv@ccdtc33@player_karen"
local waiter = true
jo.animation.load(dict, waiter)

```
<!-- #endregion client|jo.animation.load -->

<!-- #region client|jo.animation.play -->
#### Example
```lua
local ped = PlayerPedId()
local dict = "cnv_camp@rchso@cnv@ccdtc33@player_karen"
local name = "arthur_dance_loop"
local duration = -1
local flag = 1
jo.animation.play(ped, dict, name, duration, flag)

```
<!-- #endregion client|jo.animation.play -->

<!-- #region client|jo.animation.setDesiredHeading -->
#### Example
```lua
local ped = PlayerPedId()
local heading = 180.0
local waiter = true
jo.animation.setDesiredHeading(ped, heading, waiter)

```
<!-- #endregion client|jo.animation.setDesiredHeading -->

