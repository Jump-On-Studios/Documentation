<!-- #region client|jo.screen.fadeIn -->
#### Example
```lua
local duration = 1000 -- fade in over 1 second
local needWait = true -- wait until fade is complete
jo.screen.fadeIn(duration, needWait)

```
<!-- #endregion client|jo.screen.fadeIn -->


<!-- #region client|jo.screen.fadeOut -->
#### Example
```lua
local duration = 2000 -- fade out over 2 seconds
local needWait = true -- wait until fade is complete
jo.screen.fadeOut(duration, needWait)

-- You can also use it with default values
jo.screen.fadeOut() -- Uses 500ms duration and waits for completion

```
<!-- #endregion client|jo.screen.fadeOut -->