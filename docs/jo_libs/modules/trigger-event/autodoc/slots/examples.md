<!-- #region server|jo.triggerEvent.server -->
#### Example
```lua
RegisterNetEvent('myServerEvent', function(value)
  local source = source
  print(source,data)
end)

local source = 4
local value = "My value"
jo.triggerEvent.server(source, 'myServerEvent', value)
-- Expected output: `4  My value`

```
<!-- #endregion server|jo.triggerEvent.server -->

