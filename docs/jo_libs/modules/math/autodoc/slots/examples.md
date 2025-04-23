<!-- #region shared|math.lerp -->
#### Example
```lua
local startValue = 0
local endValue = 100
local factor = 0.5 -- 50% between start and end

local result = math.lerp(startValue, endValue, factor)
print(result) -- Output: 50

```
<!-- #endregion shared|math.lerp -->


<!-- #region shared|math.round -->
#### Example
```lua
-- Round to nearest whole number (no precision parameter)
local value1 = 3.7
local rounded1 = math.round(value1)
print(rounded1) -- Output: 4

-- Round to specific decimal places
local value2 = 3.14159
local rounded2Decimal = math.round(value2, 2)
print(rounded2Decimal) -- Output: 3.14

local price = 19.9567
local formattedPrice = math.round(price, 2)
print("$" .. formattedPrice) -- Output: $19.95

```
<!-- #endregion shared|math.round -->