<!-- #region client|jo.debugger.drawSphere -->
#### Example
```lua
local coords = vec3(1234.56, 789.01, 123.45)
local size = vec3(0.7, 0.7, 0.7)
local color = {r = 0, g = 255, b = 0, a = 150}
jo.debugger.drawSphere(coords, size, color)
```
<!-- #endregion client|jo.debugger.drawSphere -->


<!-- #region client|jo.debugger.drawText -->
#### Example
```lua
-- Drawing text at a specific position
jo.debugger.drawText("Player Health: 100", 0.5, 0.2)
```
<!-- #endregion client|jo.debugger.drawText -->


<!-- #region client|jo.debugger.resetText -->
#### Example
```lua
jo.debugger.drawText("First line")

jo.debugger.resetText()

jo.debugger.drawText("New first line")
```
<!-- #endregion client|jo.debugger.resetText -->


<!-- #region shared|jo.debugger.perfomance -->
#### Example
```lua
local duration = jo.debugger.perfomance("Array iteration", function()
    local array = {}
    for i = 1, 10000 do
        array[i] = i
    end
    
    local sum = 0
    for i = 1, #array do
        sum = sum + array[i]
    end
end)

print("The operation took " .. duration .. " microseconds")
```
<!-- #endregion shared|jo.debugger.perfomance -->


<!-- #region shared|jo.debugger.perfomanceRepeat -->
#### Example
```lua
local averageDuration = jo.debugger.perfomanceRepeat("Table lookup", 100, function()
    local testTable = {}
    for i = 1, 1000 do
        testTable[i] = "value_" .. i
    end
    
    -- Operation to measure
    for i = 1, 1000 do
        local value = testTable[i]
    end
end, 10)

print("Average execution time: " .. averageDuration .. " microseconds")
```
<!-- #endregion shared|jo.debugger.perfomanceRepeat -->

