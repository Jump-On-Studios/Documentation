
<!-- #region shared|jo.waiter.exec -->
#### Example
```lua
local i = 1

local condition = function() return i > 100 end
local executable = function() i+=1 print(i) end
local loopSpeed = 100
local maxDuration = 1000
local success = jo.waiter.exec(condition, executable, loopSpeed, maxDuration)
print('Is a success:', success)
-- Expected output:
-- 2
-- 3
-- ..
-- 10
-- Is a success: false
```
<!-- #endregion shared|jo.waiter.exec -->

