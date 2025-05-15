<!-- #region client|jo.utils.loadGameData -->
#### Example
```lua
local model = "A_C_Horse_Morgan_Bay"
jo.utils.loadGameData(model, true)

```
<!-- #endregion client|jo.utils.loadGameData -->


<!-- #region client|jo.utils.releaseGameData -->
#### Example
```lua
local model = "A_C_Horse_Morgan_Bay"
jo.utils.releaseGameData(model)

```
<!-- #endregion client|jo.utils.releaseGameData -->


<!-- #region client|jo.utils.waiter -->
#### Example
```lua
local value = 0
local cb = function()
  value = math.random(1, 10)
  return value == 5
end
local maxDuration = 2000
local timer = 10

local startWait = GetGamerTimer()
print
killer = jo.utils.waiter(cb, maxDuration, timer)
print("Killer: ", killer, "Value: ", value, "Duration: ", GetGamerTimer() - startWait)
-- Expected output: Killer: true, Value : 5, Duration: (duration < 2000)
--OR
-- Expected output: Killer: false, Value : (<> 5), Duration: 2000

```
<!-- #endregion client|jo.utils.waiter -->

<!-- #region shared|jo.utils.convertToTable -->
#### Example
```lua
local hash = 12345
local data = jo.utils.convertToTable(hash,"myHash")
print(json.encode(data))
-- Expected ouput: {"myHash":12345}
```
<!-- #endregion shared|jo.utils.convertToTable -->