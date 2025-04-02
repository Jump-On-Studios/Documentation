<!-- #region jo.entity.create -->
#### Example
```lua
local entity = jo.entity.create('re_kidnappedvictim_females_01',vec3(1294.0,-512.3, 30.0),90.0,true)
print(entity)
```
<!-- #endregion jo.entity.create -->


<!-- #region jo.entity.createWithMouse -->
#### Example
```lua
local entityId, position, heading = jo.entity.createWithMouse('p_armchair01x', true, false)
print("Created entity: " .. entityId)
print("Position: " .. tostring(position))
print("Heading: " .. heading)
```
<!-- #endregion jo.entity.createWithMouse -->


<!-- #region jo.entity.delete -->
#### Example
```lua
local entity = 23494
jo.entity.delete(entity)
```
<!-- #endregion jo.entity.delete -->


<!-- #region jo.entity.fadeAndDelete -->
#### Example
```lua
local entity = 32454
local duraiton = 1000
jo.entity.fadeAndDelete(entity,duration)
```
<!-- #endregion jo.entity.fadeAndDelete -->


<!-- #region jo.entity.fadeIn -->
#### Example
```lua
local entity = 12345 -- Assume this is a valid entity ID
local duration = 2000 -- 2 seconds fade in time
jo.entity.fadeIn(entity, duration)
```
<!-- #endregion jo.entity.fadeIn -->


<!-- #region jo.entity.fadeOut -->
#### Example
```lua
local entity = 12345 -- Assume this is a valid entity ID
local duration = 2000 -- 2 seconds fade out time
jo.entity.fadeOut(entity, duration)
```
<!-- #endregion jo.entity.fadeOut -->


<!-- #region jo.entity.requestControl -->
#### Example
```lua
local entity = 23494
jo.entity.requestControl(entity)
```
<!-- #endregion jo.entity.requestControl -->




