<!-- #region client|jo.emit.isEventInProgress -->
#### Example
```lua
print(jo.emit.isEventInProgress('YourEventName'))
-- Expected outfit : `true` if the event is not fully received yet.
```
<!-- #endregion client|jo.emit.isEventInProgress -->


<!-- #region client|jo.emit.triggerServer -->
#### Example
```lua
local data = "MyData"
jo.emit.triggerServer('YourEventName', data)
```
<!-- #endregion client|jo.emit.triggerServer -->


<!-- #region client|jo.emit.triggerServer.latent -->
#### Example
```lua
local data = {}
for i=1, 100000 do
  data[i] = i
end
jo.emit.triggerServer.latent("YourEventName",data)
```
<!-- #endregion client|jo.emit.triggerServer.latent -->


<!-- #region client|jo.emit.updateBps -->
#### Example
```lua
jo.emit.updateBps(3000)
```
<!-- #endregion client|jo.emit.updateBps -->


<!-- #region server|jo.emit.triggerClient -->

<!-- #endregion server|jo.emit.triggerClient -->


<!-- #region server|jo.emit.triggerClient.latent -->

<!-- #endregion server|jo.emit.triggerClient.latent -->


<!-- #region server|jo.emit.updateBps -->

<!-- #endregion server|jo.emit.updateBps -->

