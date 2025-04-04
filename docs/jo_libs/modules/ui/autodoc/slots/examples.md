<!-- #region client|jo.ui.finishTimer -->
#### Example
```lua
-- Initialize and start a timer
jo.ui.initTimer()
jo.ui.startTimer(30) -- 30 seconds timer

-- Later, when completely done with the timer and want to clean up resources
jo.ui.finishTimer()
```
<!-- #endregion client|jo.ui.finishTimer -->


<!-- #region client|jo.ui.initTimer -->
#### Example
```lua
-- Initialize the timer UI before using it
local stateMachine = jo.ui.initTimer()

-- Check if initialization was successful
if stateMachine then
    print("Timer UI successfully initialized")
    -- Now we can use startTimer, stopTimer or other timer functions
end
```
<!-- #endregion client|jo.ui.initTimer -->


<!-- #region client|jo.ui.startTimer -->
#### Example
```lua
local time = 60 -- 1 minute
local low = 10 -- Turn red at 10 seconds
jo.ui.initTimer()
jo.ui.startTimer(time, low)
```
<!-- #endregion client|jo.ui.startTimer -->


<!-- #region client|jo.ui.stopTimer -->
#### Example
```lua
-- Initialize and start a 2-minute timer
jo.ui.initTimer()
jo.ui.startTimer(120)

-- Later, when you need to stop the timer (e.g., when a mission is completed early)
Citizen.CreateThread(function()
    Citizen.Wait(30000) -- Wait 30 seconds
    jo.ui.stopTimer() -- Stop the timer before it naturally finishes
    print("Timer stopped early")
end)
```
<!-- #endregion client|jo.ui.stopTimer -->


<!-- #region client|jo.ui.updateRank -->
#### Example
```lua
local level = 325
local xp = 215
local xpRequired = 17400
jo.ui.updateRank(level,xp,xpRequired)
```
<!-- #endregion client|jo.ui.updateRank -->