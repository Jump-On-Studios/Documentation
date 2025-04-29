<!-- #region shared|string:compareVersionWith -->
#### Example
```lua
-- Basic version comparison examples
local currentVersion = "1.2.3"

-- Compare with older version
local olderVersion = "1.1.9"
print(currentVersion:compareVersionWith(olderVersion))
-- Expected output: 1 (current version is newer)

-- Compare with same version
local sameVersion = "1.2.3"
print(currentVersion:compareVersionWith(sameVersion))
-- Expected output: 0 (same version)

-- Compare with newer version
local newerVersion = "1.3.0"
print(currentVersion:compareVersionWith(newerVersion))
-- Expected output: -1 (current version is older)

```
<!-- #endregion shared|string:compareVersionWith -->


<!-- #region shared|string:convertVersion -->
#### Example
```lua
local versionString = "1.2.3"
local numericVersion = versionString:convertVersion()
print(versionString .. " converted to number: " .. numericVersion)
-- Expected output: 1.2.3 converted to number: 3002001
-- (3*1 + 2*1000 + 1*1000000)

-- This can be useful for version comparison
local newVersion = "1.3.0"
if newVersion:convertVersion() > versionString:convertVersion() then
    print("New version is greater than current version")
end

```
<!-- #endregion shared|string:convertVersion -->


<!-- #region shared|string:firstToUpper -->
#### Example
```lua
local text = "hello world"
local capitalized = text:firstToUpper()
print(capitalized)
-- Expected output: Hello world

-- Useful for formatting names
local playerName = "john"
print("Welcome, " .. playerName:firstToUpper() .. "!")
-- Expected output: Welcome, John!

```
<!-- #endregion shared|string:firstToUpper -->


<!-- #region shared|string:split -->
#### Example
```lua
local csvData = "apple,banana,cherry,date"
local fruits = csvData:split(",")
for i, fruit in ipairs(fruits) do
    print(i .. ": " .. fruit)
end
-- Expected output:
-- 1: apple
-- 2: banana
-- 3: cherry
-- 4: date

-- Limit the number of splits
local limitedSplit = csvData:split(",", 2)
for i, item in ipairs(limitedSplit) do
    print(i .. ": " .. item)
end
-- Expected output:
-- 1: apple
-- 2: banana,cherry,date

```
<!-- #endregion shared|string:split -->


<!-- #region shared|string:toHex -->
#### Example
```lua
local hexColor = "0xFF5733"
local colorValue = hexColor:toHex()
print("Hex " .. hexColor .. " converted to number: " .. colorValue)
-- Expected output: Hex 0xFF5733 converted to number: 16733747

-- Handle negative values (signed hex)
local signedHex = "0x80000000"
local signedValue = signedHex:toHex()
print("Signed hex " .. signedHex .. " converted to number: " .. signedValue)
-- Expected output: Signed hex 0x80000000 converted to number: -2147483648

```
<!-- #endregion shared|string:toHex -->


<!-- #region shared|string:trim -->
#### Example
```lua
local paddedText = "   Hello, world!   "
local trimmed = paddedText:trim()
print("Original: '" .. paddedText .. "'")
print("Trimmed: '" .. trimmed .. "'")
-- Expected output:
-- Original: '   Hello, world!   '
-- Trimmed: 'Hello, world!'

-- Useful for cleaning user input
local userInput = "  search term   "
local cleanInput = userInput:trim()
print("Searching for: '" .. cleanInput .. "'")
-- Expected output: Searching for: 'search term'

```
<!-- #endregion shared|string:trim -->

<!-- #region shared|string.spaceNumber -->
#### Example
```lua
local number = 123456.123456
local spaced = string.spaceNumber(number, 3)
-- Expected output: "123 456.123"
```
<!-- #endregion shared|string.spaceNumber -->
