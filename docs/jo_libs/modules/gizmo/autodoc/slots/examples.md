<!-- #region client|jo.gizmo.cancel -->
<!-- #endregion client|jo.gizmo.cancel -->


<!-- #region client|jo.gizmo.moveEntity -->
#### Example
```lua
local entity = 1234566
local cfg = {
  enableCam = true,
  maxDistance = 5.0,
  maxCamDistance = 10.0,
  minY = -20.0,
  maxY = 20.0,
  movementSpeed = 0.1
}
local function allowPlace(position)
  log("Position:", position)
  return true
end
local result = jo.gizmo.moveEntity(entity, cfg, allowPlace)
log(result)

```
<!-- #endregion client|jo.gizmo.moveEntity -->

