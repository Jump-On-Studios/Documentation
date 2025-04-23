<!-- #region client|jo.light.create -->
#### Example
```lua
-- Create a red light at coordinates (100, 200, 30)
local myLight = jo.light.create(
    vec3(100.0, 200.0, 30.0), -- position
    0.8,                      -- intensity
    { 255, 0, 0 },            -- RGB (red)
    10.0,                     -- range
    500                       -- ease time (ms)
)

```
<!-- #endregion client|jo.light.create -->


<!-- #region client|LightClass:delete -->
#### Example
```lua
-- Create a light
local myLight = jo.light.create(vec3(100.0, 200.0, 30.0))

-- Later, remove the light with a fade-out effect
myLight:delete()

```
<!-- #endregion client|LightClass:delete -->


<!-- #region client|LightClass:setCoords -->
#### Example
```lua
local myLight = jo.light.create(vec3(100.0, 200.0, 30.0))

-- Move the light to a new position with smooth transition
myLight:setCoords(vec3(110.0, 210.0, 35.0))

```
<!-- #endregion client|LightClass:setCoords -->


<!-- #region client|LightClass:setIntensity -->
#### Example
```lua
local myLight = jo.light.create(vec3(100.0, 200.0, 30.0))

-- Dim the light to half brightness
myLight:setIntensity(0.5)

```
<!-- #endregion client|LightClass:setIntensity -->


<!-- #region client|LightClass:update -->
#### Example
```lua
-- Note: This method is generally used internally
-- but can be called manually if needed
local myLight = jo.light.create(vec3(100.0, 200.0, 30.0))
myLight:update(16) -- Update with 16ms delta time

```
<!-- #endregion client|LightClass:update -->