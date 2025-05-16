<!-- #region client|jo.entity.create -->
#### Example
```lua
local entity = jo.entity.create('re_kidnappedvictim_females_01', vec3(1294.0, -512.3, 30.0), 90.0, true)
print(entity)

```
<!-- #endregion client|jo.entity.create -->


<!-- #region client|jo.entity.createWithMouse -->
#### Example
```lua
local entityId, position, heading = jo.entity.createWithMouse('p_armchair01x', true, false)
print("Created entity: " .. entityId)
print("Position: " .. tostring(position))
print("Heading: " .. heading)

```
<!-- #endregion client|jo.entity.createWithMouse -->


<!-- #region client|jo.entity.delete -->
#### Example
```lua
local entity = 23494
jo.entity.delete(entity)

```
<!-- #endregion client|jo.entity.delete -->


<!-- #region client|jo.entity.fadeAndDelete -->
#### Example
```lua
local entity = 32454
local duraiton = 1000
jo.entity.fadeAndDelete(entity, duration)

```
<!-- #endregion client|jo.entity.fadeAndDelete -->


<!-- #region client|jo.entity.fadeIn -->
#### Example
```lua
local entity = 12345  -- Assume this is a valid entity ID
local duration = 2000 -- 2 seconds fade in time
jo.entity.fadeIn(entity, duration)

```
<!-- #endregion client|jo.entity.fadeIn -->


<!-- #region client|jo.entity.fadeOut -->
#### Example
```lua
local entity = 12345  -- Assume this is a valid entity ID
local duration = 2000 -- 2 seconds fade out time
jo.entity.fadeOut(entity, duration)

```
<!-- #endregion client|jo.entity.fadeOut -->


<!-- #region client|jo.entity.requestControl -->
#### Example
```lua
local entity = 23494
jo.entity.requestControl(entity)

```
<!-- #endregion client|jo.entity.requestControl -->


<!-- #region client|jo.entity.getEntityInCrosshair -->
#### Example
```lua
CreateThread(function()
    while true do
        local hit, coords, entityHit = jo.entity.getEntityInCrosshair()
        Wait(0)
    end
end)
```
<!-- #endregion client|jo.entity.getEntityInCrosshair -->


<!-- #region server|jo.entity.delete -->
#### Example
```lua
local entity = 23494
jo.entity.delete(entity)

```
<!-- #endregion server|jo.entity.delete -->