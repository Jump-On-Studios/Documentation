<!-- #region shared|PriceClass.new -->
#### Example
```lua
local price = jo.pricing.new({ money = 12, item = "water" })

log(price:getCosts())
-- Expected output:
-- {
--   { money = 12 },
--   { item = "water", quantity = 1, keep = false }
-- }
```
<!-- #endregion shared|PriceClass.new -->


<!-- #region shared|PriceClass:add -->
#### Example
```lua
local price = jo.pricing.new({ money = 10 })
price:add({ money = 5, gold = 2 })

log(price:getCosts())
-- Expected output:
-- {
--   { money = 15 },
--   { gold = 2 }
-- }
```
<!-- #endregion shared|PriceClass:add -->


<!-- #region shared|PriceClass:clear -->
#### Example
```lua
local price = jo.pricing.new({ money = 10, item = "water" })
price:clear()

log(price:getCosts())
-- Expected output: {}

print(price:isFree())
-- Expected output: true
```
<!-- #endregion shared|PriceClass:clear -->


<!-- #region shared|PriceClass:copy -->
#### Example
```lua
local price = jo.pricing.new({ money = 10 })
local copy = price:copy()

copy:add({ gold = 2 })

log(price:getCosts())
-- Expected output: { { money = 10 } }

log(copy:getCosts())
-- Expected output: { { money = 10 }, { gold = 2 } }
```
<!-- #endregion shared|PriceClass:copy -->


<!-- #region shared|PriceClass:equals -->
#### Example
```lua
local price = jo.pricing.new({ money = 10, item = "water" })

print(price:equals({ item = "water", money = 10 }))
-- Expected output: true

print(price:equals("invalid"))
-- Expected output: false
```
<!-- #endregion shared|PriceClass:equals -->


<!-- #region shared|PriceClass:get -->
#### Example
```lua
local price = jo.pricing.new({ money = 10, gold = 2 })
local costs = price:getCosts()

log(costs)
-- Expected output:
-- {
--   { money = 10 },
--   { gold = 2 }
-- }
```
<!-- #endregion shared|PriceClass:get -->


<!-- #region shared|PriceClass:getGold -->
#### Example
```lua
local price = jo.pricing.new({ money = 10, gold = 2 })
local gold = price:getGold()

log(gold)
-- Expected output: 2
```
<!-- #endregion shared|PriceClass:getGold -->


<!-- #region shared|PriceClass:getItem -->
#### Example
```lua
local price = jo.pricing.new({
  { item = "water", quantity = 2, keep = false },
  { item = "permit", quantity = 1, keep = true }
})

local consumedWater = price:getItem("water", false)
local keptPermit = price:getItem("permit", true)

log(consumedWater)
-- Expected output: { item = "water", quantity = 2, keep = false }

log(keptPermit)
-- Expected output: { item = "permit", quantity = 1, keep = true }
```
<!-- #endregion shared|PriceClass:getItem -->


<!-- #region shared|PriceClass:getItems -->
#### Example
```lua
local price = jo.pricing.new({ money = 10, item = "water" })
local items = price:getItems()

log(items)
-- Expected output:
-- {
--   { item = "water", quantity = 1, keep = false }
-- }
```
<!-- #endregion shared|PriceClass:getItems -->


<!-- #region shared|PriceClass:getMoney -->
#### Example
```lua
local price = jo.pricing.new({ money = 10, gold = 2 })
local money = price:getMoney()

log(money)
-- Expected output: 10
```
<!-- #endregion shared|PriceClass:getMoney -->


<!-- #region shared|PriceClass:getRol -->
#### Example
```lua
local price = jo.pricing.new({ rol = 3 })
local rol = price:getRol()

log(rol)
-- Expected output: 3
```
<!-- #endregion shared|PriceClass:getRol -->


<!-- #region shared|PriceClass:hasCurrency -->
#### Example
```lua
local price = jo.pricing.new({ money = 10, item = "water" })

print(price:hasCurrency("money"))
-- Expected output: true

print(price:hasCurrency("gold"))
-- Expected output: false
```
<!-- #endregion shared|PriceClass:hasCurrency -->


<!-- #region shared|PriceClass:hasItem -->
#### Example
```lua
local price = jo.pricing.new({ item = "water", quantity = 2 })

print(price:hasItem("water", false))
-- Expected output: true

print(price:hasItem("water", true))
-- Expected output: false
```
<!-- #endregion shared|PriceClass:hasItem -->


<!-- #region shared|PriceClass:isCurrencyOnly -->
#### Example
```lua
print(jo.pricing.new({ money = 10, gold = 2 }):isCurrencyOnly())
-- Expected output: true

print(jo.pricing.new({ money = 10, item = "water" }):isCurrencyOnly())
-- Expected output: false
```
<!-- #endregion shared|PriceClass:isCurrencyOnly -->


<!-- #region shared|PriceClass:isFree -->
#### Example
```lua
print(jo.pricing.new():isFree())
-- Expected output: true

print(jo.pricing.new({ money = 0 }):isFree())
-- Expected output: true

print(jo.pricing.new({ item = "water" }):isFree())
-- Expected output: false
```
<!-- #endregion shared|PriceClass:isFree -->


<!-- #region shared|PriceClass:isItemOnly -->
#### Example
```lua
print(jo.pricing.new({ item = "water" }):isItemOnly())
-- Expected output: true

print(jo.pricing.new({ money = 10, item = "water" }):isItemOnly())
-- Expected output: false
```
<!-- #endregion shared|PriceClass:isItemOnly -->


<!-- #region shared|PriceClass:removeCurrency -->
#### Example
```lua
local price = jo.pricing.new({ money = 10, gold = 2 })
price:removeCurrency("money")

log(price:getCosts())
-- Expected output: { { gold = 2 } }
```
<!-- #endregion shared|PriceClass:removeCurrency -->


<!-- #region shared|PriceClass:removeItem -->
#### Example
```lua
local price = jo.pricing.new({
  { item = "water", quantity = 2, keep = false },
  { item = "permit", keep = true }
})

price:removeItem("water", false)

log(price:getCosts())
-- Expected output:
-- {
--   { item = "permit", quantity = 1, keep = true }
-- }
```
<!-- #endregion shared|PriceClass:removeItem -->


<!-- #region shared|jo.pricing.tax -->
#### Example
```lua
local price = jo.pricing.new({ money = 10, item = "water", quantity = 3 })

-- With roundUpItems = false, item quantities in the tax are rounded down.
local taxPrice, remainingPrice = jo.pricing.tax(price, 0.5, false)

log(taxPrice:getCosts()) -- Tax PriceClass
-- Expected output:
-- {
--   { money = 5 },
--   { item = "water", quantity = 1, keep = false }
-- }

log(remainingPrice:getCosts()) -- Remaining PriceClass
-- Expected output:
-- {
--   { money = 5 },
--   { item = "water", quantity = 2, keep = false }
-- }

-- With roundUpItems = true, item quantities in the tax are rounded up.
local roundedTaxPrice, roundedRemainingPrice = jo.pricing.tax(price, 0.5, true)

log(roundedTaxPrice:getCosts()) -- Tax PriceClass
-- Expected output:
-- {
--   { money = 5 },
--   { item = "water", quantity = 2, keep = false }
-- }

log(roundedRemainingPrice:getCosts()) -- Remaining PriceClass
-- Expected output:
-- {
--   { money = 5 },
--   { item = "water", quantity = 1, keep = false }
-- }
```
<!-- #endregion shared|jo.pricing.tax -->


<!-- #region shared|PriceGroupClass.new -->
#### Example
```lua
local group = jo.pricing.newGroup({
  operator = "or",
  prices = {
    { money = 10 },
    { gold = 2 }
  }
})

print(group.operator)
-- Expected output: "or"

print(group:count())
-- Expected output: 2
```
<!-- #endregion shared|PriceGroupClass.new -->


<!-- #region shared|PriceGroupClass:clear -->
#### Example
```lua
local group = jo.pricing.newGroup({ { money = 10 }, { gold = 2 } })
group:clear()

print(group:count())
-- Expected output: 0

print(group:isEmpty())
-- Expected output: true
```
<!-- #endregion shared|PriceGroupClass:clear -->


<!-- #region shared|PriceGroupClass:compact -->
#### Example
```lua
local group = jo.pricing.newGroup({
  operator = "and",
  prices = {
    { money = 10 },
    { money = 5 },
    { item = "water", quantity = 2, keep = false  },
    { item = "water", quantity = 5 },
    { item = "water", quantity = 2, keep = true }
  }
})

local price = group:compact()
log(price:getCosts())
-- Expected output:
-- {
--   { money = 15 },
--   { item = "water", quantity = 7, keep = false },
--   { item = "water", quantity = 2, keep = true }
-- }
```
<!-- #endregion shared|PriceGroupClass:compact -->


<!-- #region shared|PriceGroupClass:copy -->
#### Example
```lua
local group = jo.pricing.newGroup({ { money = 10 }, { gold = 2 } })
local copy = group:copy()

copy:insert({ rol = 1 })

print(group:count())
-- Expected output: 2

print(copy:count())
-- Expected output: 3
```
<!-- #endregion shared|PriceGroupClass:copy -->


<!-- #region shared|PriceGroupClass:count -->
#### Example
```lua
local group = jo.pricing.newGroup({ { money = 10 }, { gold = 2 } })

print(group:count())
-- Expected output: 2
```
<!-- #endregion shared|PriceGroupClass:count -->


<!-- #region shared|PriceGroupClass:get -->
#### Example
```lua
local group = jo.pricing.newGroup({ { money = 10 }, { gold = 2 } })
local firstPrice = group:get(1)

log(firstPrice:getCosts())
-- Expected output: { { money = 10 } }
```
<!-- #endregion shared|PriceGroupClass:get -->


<!-- #region shared|PriceGroupClass:insert -->
#### Example
```lua
local group = jo.pricing.newGroup({ { money = 10 } })
group:insert({ gold = 2 })
group:insert({ rol = 1 }, 1)

print(group:count())
-- Expected output: 3

log(group:get(1):getCosts())
-- Expected output: { { rol = 1 } }
```
<!-- #endregion shared|PriceGroupClass:insert -->


<!-- #region shared|PriceGroupClass:isEmpty -->
#### Example
```lua
local group = jo.pricing.newGroup()

print(group:isEmpty())
-- Expected output: true

group:insert({ money = 10 })

print(group:isEmpty())
-- Expected output: false
```
<!-- #endregion shared|PriceGroupClass:isEmpty -->


<!-- #region shared|PriceGroupClass:remove -->
#### Example
```lua
local group = jo.pricing.newGroup({ { money = 10 }, { gold = 2 } })
local removed = group:remove(1)

log(removed:getCosts())
-- Expected output: { { money = 10 } }

print(group:count())
-- Expected output: 1
```
<!-- #endregion shared|PriceGroupClass:remove -->


<!-- #region shared|PriceGroupClass:set -->
#### Example
```lua
local group = jo.pricing.newGroup({ { money = 10 }, { gold = 2 } })
group:set(2, { item = "water", quantity = 2 })

log(group:get(2):getCosts())
-- Expected output:
-- {
--   { item = "water", quantity = 2, keep = false }
-- }
```
<!-- #endregion shared|PriceGroupClass:set -->


<!-- #region shared|jo.pricing.get -->
#### Example
```lua
local costs = jo.pricing.get({ money = 10, item = "water" })

log(costs)
-- Expected output:
-- {
--   { money = 10 },
--   { item = "water", quantity = 1, keep = false }
-- }
```
<!-- #endregion shared|jo.pricing.get -->


<!-- #region shared|jo.pricing.isPrice -->
#### Example
```lua
local price = jo.pricing.new({ money = 10 })
local plainTable = { costs = { { money = 10 } } }

print(jo.pricing.isPrice(price))
-- Expected output: true

print(jo.pricing.isPrice(plainTable))
-- Expected output: false
```
<!-- #endregion shared|jo.pricing.isPrice -->


<!-- #region shared|jo.pricing.isPriceGroup -->
#### Example
```lua
local group = jo.pricing.newGroup({ { money = 10 }, { gold = 2 } })
local plainTable = { operator = "or", prices = {} }

print(jo.pricing.isPriceGroup(group))
-- Expected output: true

print(jo.pricing.isPriceGroup(plainTable))
-- Expected output: false
```
<!-- #endregion shared|jo.pricing.isPriceGroup -->


<!-- #region shared|jo.pricing.new -->
#### Example
```lua
local price = jo.pricing.new({
  money = 5,
  { money = 10 },
  { item = "water", quantity = 2 }
})

log(price:getCosts())
-- Expected output:
-- {
--   { money = 15 },
--   { item = "water", quantity = 2, keep = false }
-- }
```
<!-- #endregion shared|jo.pricing.new -->


<!-- #region shared|jo.pricing.newGroup -->
#### Example
```lua
local group = jo.pricing.newGroup({
  operator = "and",
  money = 10,
  gold = 2
})

print(group.operator)
-- Expected output: "and"

print(group:count())
-- Expected output: 2

log(group:compact():getCosts())
-- Expected output:
-- {
--   { money = 10 },
--   { gold = 2 }
-- }
```
<!-- #endregion shared|jo.pricing.newGroup -->
