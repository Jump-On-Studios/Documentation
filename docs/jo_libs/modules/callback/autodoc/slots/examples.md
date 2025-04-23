<!-- #region g_client|jo.callback.register -->
#### Example
```lua
jo.callback.register('testClientCallback', function(value1, value2)
  print(value1, value2)
  return value1 + value2
end)

```
<!-- #endregion g_client|jo.callback.register -->


<!-- #region g_client|jo.callback.triggerClient -->
#### Example
```lua
local value1 = 10
local value2 = 5
jo.callback.triggerClient('testClientCallback', function(returnValue)
  print(returnValue)
end, value1, value2)
--OR--
local value1 = 10
local value2 = 5
local returnValue = jo.callback.triggerClient('testClientCallback', value1, value2)

```
<!-- #endregion g_client|jo.callback.triggerClient -->


<!-- #region g_client|jo.callback.triggerServer -->
#### Example
```lua
local value1 = 10
local value2 = 5
jo.callback.triggerServer('testServerCallback', function(returnValue)
  print(returnValue)
end, value1, value2)
--OR--
local value1 = 10
local value2 = 5
local returnValue = jo.callback.triggerServer('testServerCallback', value1, value2)

```
<!-- #endregion g_client|jo.callback.triggerServer -->


<!-- #region g_server|jo.callback.register -->
#### Example
```lua
jo.callback.register('testServerCallback', function(source, value1, value2)
  print(source, value1, value2)
  return value1 + value2
end)

```
<!-- #endregion g_server|jo.callback.register -->


<!-- #region g_server|jo.callback.triggerClient -->
#### Example
```lua
local value1 = 5
local value2 = 10
local source = 1
jo.callback.triggerClient('testClientCallback', source, function(returnValue)
  print(returnValue)
end, value1, value2)
--OR--
local value1 = 10
local value2 = 5
local returnValue = jo.callback.triggerClient('testClientCallback', source, value1, value2)

```
<!-- #endregion g_server|jo.callback.triggerClient -->


<!-- #region g_server|jo.callback.triggerServer -->
#### Example
```lua
local value1 = 5
local value2 = 10
jo.callback.triggerServer('testServerCallback', function(returnValue)
  print(returnValue)
end, value1, value2)
--OR--
local value1 = 10
local value2 = 5
local returnValue = jo.callback.triggerServer('testServerCallback', source, value1, value2)

```
<!-- #endregion g_server|jo.callback.triggerServer -->

