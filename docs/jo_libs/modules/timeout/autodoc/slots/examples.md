<!-- #region shared|TimeoutClass:clear -->
#### Example
```lua
local timeout = jo.timeout.set(1000, function() print("Done") end)
timeout:clear()
-- Expected output : Nothing because the function was canceled

```
<!-- #endregion shared|TimeoutClass:clear -->


<!-- #region shared|TimeoutClass:execute -->
#### Example
```lua
local timeout = TimeoutClass:set(1000, function() print('Done') end)
timeout:execute()
-- Expected output: 'Done' after 1000 ms

```
<!-- #endregion shared|TimeoutClass:execute -->


<!-- #region shared|TimeoutClass:set -->
#### Example
```lua
local msec = 1000
local function callback()
  print("Timeout completed")
end
local args = { name = "Test", value = 100 }

-- Initialize a new timeout without starting it
local timeout = TimeoutClass:set(msec, callback, args)
print("Timeout created with ID: " .. timeout.id)

-- The timeout has been created but won't execute until start() is called
-- Expected output: Just prints the timeout ID, callback won't run automatically

```
<!-- #endregion shared|TimeoutClass:set -->


<!-- #region shared|TimeoutClass:setCb -->
#### Example
```lua
local timeout = jo.timeout.set(1000, function() print('Done') end)
timeout:setCb(function()
    print('Done overwrited')
end)
-- Expected output: "Done overwrited" printed after 1000ms

```
<!-- #endregion shared|TimeoutClass:setCb -->


<!-- #region shared|TimeoutClass:setMsec -->
#### Example
```lua
local timeout = jo.timeout.set(1000, function(), print('Done') end)
timeout:setMsec(2000)
-- Executed output: 'Done' printed after 2000ms
```
<!-- #endregion shared|TimeoutClass:setMsec -->


<!-- #region shared|TimeoutClass:start -->
#### Example
```lua
-- Create a timeout without starting it
local timeout = TimeoutClass:set(1500, function()
  print("Timeout triggered after manual start")
end)

-- Later in the code, decide when to start the timeout
print("Starting the timeout now...")
timeout:start()

-- Expected output:
-- "Starting the timeout now..." immediately
-- "Timeout triggered after manual start" after 1500ms

```
<!-- #endregion shared|TimeoutClass:start -->


<!-- #region shared|jo.timeout.delay -->
#### Example
```lua
local id = "TheUniqueID"
local delay = jo.timeout.delay(id, 1000, function() print('Done') end)
Wait(500)
local delay2 = jo.timeout.delay(id, 1000, function() print('Done 2') end)
-- Expected output : "Done 2" printed after 1500ms (500 + 1000). delay function was canceled by delay2 because it's the same id

```
<!-- #endregion shared|jo.timeout.delay -->

<!-- #region shared|jo.timeout.noSpam -->
#### Example
```lua
local id = "TheUniqueID"
local noSpam = jo.timeout.noSpam(id, 1000, function() print('Done') end)
Wait(500)
local noSpam2 = jo.timeout.noSpam(id, 1000, function() print('Done 2') end)
local noSpam3 = jo.timeout.noSpam(id, 1000, function() print('Done 3') end)
-- Expected output : "Done" printed after 1000ms and "Done 3" printed after 1500ms (500 + 1000). noSpam2 is canceled by noSpam3 because it's the same id
```
<!-- #endregion shared|jo.timeout.noSpam -->


<!-- #region shared|jo.timeout.loop -->
#### Example
```lua
jo.timeout.loop(1000, function()
    print(GetGameTimer())
end)
-- Expected output: The GetGameTimer() will be printed every 1000 msec

```
<!-- #endregion shared|jo.timeout.loop -->


<!-- #region shared|jo.timeout.set -->
#### Example
```lua
local waiter = 1000
local cb = function()
    print('Fired')
end
jo.timeout.set(waiter, cb)
-- Expected output: 'Fired' after 1000 ms

```
<!-- #endregion shared|jo.timeout.set -->

