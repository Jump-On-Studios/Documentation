<!-- #region shared|table.clearForNui -->
#### Example
```lua
local tbl = {
  a = 4,
  b = function()
    print('go')
  end,
  c = 10
}
local tbl2 = table.clearForNui(tbl)
print(json.encode(tbl2))
-- Expected output: tbl2 = {a = 4, c = 10}

```
<!-- #endregion shared|table.clearForNui -->


<!-- #region shared|table.copy -->
#### Example
```lua
local tbl = {
  value = 5,
  children = {
    value = 6
  }
}
local tbl2 = table.copy(tbl)

```
<!-- #endregion shared|table.copy -->


<!-- #region shared|table.count -->
#### Example
```lua
local tbl = { a = 3, b = 4 }
local count = table.count(tbl)
-- Expected output : 2

```
<!-- #endregion shared|table.count -->


<!-- #region shared|table.extract -->
#### Example
```lua
local tbl = {
  name = "John",
  age = 30,
  city = "New York"
}
local name = table.extract(tbl, "name")
print(name)
-- Expected output: "John"
print(json.encode(tbl))
-- Expected output: {age = 30, city = "New York"}

```
<!-- #endregion shared|table.extract -->


<!-- #region shared|table.filter -->
#### Example
```lua
local tbl = {
  a = 1,
  b = 2,
  c = 3
}
local filter = function(element, key, tble)
  if element < 2 then
    return false --remove tbl.a
  end
  if key == "c" then
    return false --remove tbl.c
  end
  return true
end
local tbl2 = table.filter(tbl, filter)
print(json.encode(tbl2))
-- Expected output : tbl = {b=2}

```
<!-- #endregion shared|table.filter -->


<!-- #region shared|table.find -->
#### Example
```lua
local tbl = [5, 12, 8, 130, 44];
local cb = function(element)
  return element > 10
end
local found = table.find(tbl,cb)
print(found)
-- Expected output : 12
```
<!-- #endregion shared|table.find -->


<!-- #region shared|table.isEgal -->
#### Example
```lua
local table1 = { a = 1, b = 2, c = { d = 3 } }
local table2 = { a = 1, b = 2, c = { d = 3 } }
local table3 = { a = 1, b = 2 }

print(table.isEgal(table1, table2))
-- Expected output: true (tables are identical)

print(table.isEgal(table1, table3))
-- Expected output: false (strict comparison by default, table3 is missing key 'c')

print(table.isEgal(table1, table3, true, false, true))
-- Expected output: false (strict but allowing table1 keys to be missing in table3)

print(table.isEgal(table3, table1, true, true, false))
-- Expected output: true (strict but allowing table3 keys to be missing in table1)

```
<!-- #endregion shared|table.isEgal -->


<!-- #region shared|table.isEmpty -->
#### Example
```lua
local tbl = { a = 10 }
print(table.isEmpty(tbl))
-- Expected output : false

```
<!-- #endregion shared|table.isEmpty -->


<!-- #region shared|table.map -->
#### Example
```lua
local tbl = { 1, 4, 9, 16 }
local cb = function(element)
  return element * 2
end
local tbl2 = table.map(tbl, cb)
print(json.encode(tbl2))
-- Expected output : tbl2 = {2,8,18,32}

```
<!-- #endregion shared|table.map -->


<!-- #region shared|table.merge -->
#### Example
```lua
local tbl1 = {
  a = 5,
  b = 2
}
local tbl2 = {
  a = 10,
  c = 3
}
local tbl3 = table.merge(tbl1, tbl2)
-- Expected output: tbl3 = { a=10, b=2, c=3 }

```
<!-- #endregion shared|table.merge -->


<!-- #region shared|table.mergeAfter -->
#### Example
```lua
local array1 = { 1, 2, 3 }
local array2 = { 4, 5, 6 }
local result = table.mergeAfter(array1, array2)
print(json.encode(result))
-- Expected output: [1, 2, 3, 4, 5, 6]

-- Unlike table.merge which merges by keys
local tbl1 = { a = 1, b = 2 }
local tbl2 = { c = 3, d = 4 }
local mergeAfterResult = table.mergeAfter(tbl1, tbl2)
print(json.encode(mergeAfterResult))
-- Expected output: {a = 1, b = 2, 1 = 3, 2 = 4}

```
<!-- #endregion shared|table.mergeAfter -->

<!-- #region shared|table.addMultiLevels -->
#### Example
```lua
-- Injected inside a value
local value = {x=1}
table.addMultiLevels(value,"key","otherKey")
log(value)
-- Expected output: {"x":1,"key":{"otherKey": {}}}

-- Create a new value
local value = table.addMultiLevels("key","otherKey")
log(value)
-- Expected output: {"key":{"otherKey": {}}
```
<!-- #endregion shared|table.addMultiLevels -->