<!-- #region client|jo.minigame.cancel -->
#### Example
```lua
CreateThread(function()
  -- Cancel the running minigame after 5 seconds
  Wait(5000)
  local canceled = jo.minigame.cancel()
  print(canceled)
end)

-- Start a minigame that can be canceled from another thread
local result = jo.minigame.lockpick()
print(result)

```
<!-- #endregion client|jo.minigame.cancel -->


<!-- #region client|jo.minigame.lockpick -->
#### Example
```lua
-- Start a lockpick minigame with custom difficulty settings
local result = jo.minigame.lockpick({
  pins = 3,
  pinHealth = 100,
  pinDamage = 25,
  solvePadding = 5,
  -- Called each time one lockpick breaks
  onPinBroken = function()
    print("A lockpick broke")
  end
})

-- Handle the final minigame status
if result == "success" then
  print("Lock opened")
elseif result == "failed" then
  print("Lockpick failed")
elseif result == "canceled" then
  print("Lockpick canceled")
end

```
<!-- #endregion client|jo.minigame.lockpick -->


<!-- #region client|jo.minigame.qte -->
#### Example
```lua
-- Start a QTE minigame with custom rounds, keys, and timing
local result = jo.minigame.qte({
  roundCount = 5,
  allowedKeys = { "A", "S", "D", "F" },
  rotationDuration = {
    min = 1500,
    max = 2500
  }
})

-- Handle success, failure, cancel, or busy statuses
if result == "success" then
  print("QTE completed")
else
  print("QTE result: " .. result)
end

```
<!-- #endregion client|jo.minigame.qte -->
