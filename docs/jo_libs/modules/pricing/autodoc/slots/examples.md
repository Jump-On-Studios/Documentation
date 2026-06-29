<!-- #region shared|jo.pricing.formatPrice -->
#### Example
```lua
local moneyPrice = jo.pricing.formatPrice(10)
print(moneyPrice[1].money) -- 10

local currencyPrice = jo.pricing.formatPrice({
  money = 2.75,
  gold = 2
})
-- $2.75 AND 2 gold

local itemPrice = jo.pricing.formatPrice({
  item = "water",
  quantity = 2
})
-- 2 water items

local mixedPrice = jo.pricing.formatPrice({
  money = 5,
  item = "acid"
})
-- $5 AND 1 acid item

local mixedWithQuantity = jo.pricing.formatPrice({
  money = 2,
  { item = "acid", quantity = 3 }
})
-- $2 AND 3 acid items

```
<!-- #endregion shared|jo.pricing.formatPrice -->


<!-- #region shared|jo.pricing.formatPrices -->
#### Example
```lua
local andPrices = jo.pricing.formatPrices({
  money = 2,
  gold = 1
})
-- One option: $2 AND 1 gold

local alsoAndPrices = jo.pricing.formatPrices({
  { money = 2 },
  { gold = 1 }
})
-- One option: $2 AND 1 gold

local orPrices = jo.pricing.formatPrices({
  operator = "or",
  { money = 2 },
  { gold = 1 }
})
-- Option 1: $2
-- Option 2: 1 gold

local complexOrPrices = jo.pricing.formatPrices({
  operator = "or",
  { money = 5, item = "acid" },
  { gold = 5 },
  { money = 2, { item = "acid", quantity = 3 } }
})
-- Option 1: $5 AND 1 acid
-- Option 2: 5 gold
-- Option 3: $2 AND 3 acid

print(orPrices.operator)     -- "or"
print(orPrices[1][1].money)  -- 2

```
<!-- #endregion shared|jo.pricing.formatPrices -->


<!-- #region shared|jo.pricing.isPriceFree -->
#### Example
```lua
print(jo.pricing.isPriceFree(0))           -- true
print(jo.pricing.isPriceFree({ money = 1 })) -- false

local prices = jo.pricing.formatPrices({ money = 0 })
print(jo.pricing.isPriceFree(prices)) -- true

```
<!-- #endregion shared|jo.pricing.isPriceFree -->


<!-- #region shared|jo.pricing.mergePrices -->
#### Example
```lua
local price = jo.pricing.mergePrices(
  { money = 10 },
  { gold = 1 },
  { item = "water", quantity = 2 }
)

-- $10 AND 1 gold AND 2 water
```
<!-- #endregion shared|jo.pricing.mergePrices -->


<!-- #region shared|jo.pricing.tax -->
#### Example
```lua
local price = jo.pricing.tax({
  money = 10,
  item = "water",
  quantity = 3
}, 0.5)

-- $5 AND 1 water, because item quantities are rounded down by default

local roundedUpPrice = jo.pricing.tax({
  item = "water",
  quantity = 3
}, 0.5, true)

-- 2 water, because roundUpItems is true
```
<!-- #endregion shared|jo.pricing.tax -->


<!-- #region shared|PriceClass:add -->
#### Example
```lua
local price = jo.pricing.formatPrice({ money = 10 })

price:add({ gold = 1 })
price:add({ item = "water", quantity = 2 })

-- price is now: $10 AND 1 gold AND 2 water
```
<!-- #endregion shared|PriceClass:add -->


<!-- #region shared|PriceClass:copy -->
#### Example
```lua
local original = jo.pricing.formatPrice({ money = 10 })
local copy = original:copy()

copy:add({ gold = 1 })

print(original[1].money) -- 10
```
<!-- #endregion shared|PriceClass:copy -->


<!-- #region shared|PriceClass:isFree -->
#### Example
```lua
local freePrice = jo.pricing.formatPrice(0)
local paidPrice = jo.pricing.formatPrice(10)

print(freePrice:isFree()) -- true
print(paidPrice:isFree()) -- false
```
<!-- #endregion shared|PriceClass:isFree -->


<!-- #region shared|PriceClass:remove -->
#### Example
```lua
local price = jo.pricing.formatPrice({
  money = 10,
  item = "water",
  quantity = 2
})

price:remove({ money = 5 })
-- price is now: $5 AND 2 water

local success, reason = price:remove({ money = 15 })

if not success then
  print(reason) -- "not_enough_money"
end
```
<!-- #endregion shared|PriceClass:remove -->


<!-- #region shared|PriceClass:tax -->
#### Example
```lua
local price = jo.pricing.formatPrice({
  money = 10,
  item = "water",
  quantity = 3
})

price:tax(0.5)
-- price is now: $5 AND 1 water
```
<!-- #endregion shared|PriceClass:tax -->


<!-- #region shared|PriceClass:toTable -->
#### Example
```lua
local price = jo.pricing.formatPrice({
  money = 10,
  item = "water"
})

local plainPrice = price:toTable()
print(plainPrice[1].money or plainPrice[2].money)
```
<!-- #endregion shared|PriceClass:toTable -->


<!-- #region shared|PricesClass:addPrice -->
#### Example
```lua
local prices = jo.pricing.formatPrices({
  operator = "or",
  { money = 10 }
})

prices:addPrice({ gold = 1 })
-- prices now has two options

local andPrices = jo.pricing.formatPrices({ money = 10 })
andPrices:addPrice({ gold = 1 })
-- andPrices still has one option: $10 AND 1 gold
```
<!-- #endregion shared|PricesClass:addPrice -->


<!-- #region shared|PricesClass:copy -->
#### Example
```lua
local prices = jo.pricing.formatPrices({
  operator = "or",
  { money = 10 },
  { gold = 1 }
})

local copy = prices:copy()
copy:addPrice({ rol = 5 })

print(#prices) -- 2
print(#copy)   -- 3
```
<!-- #endregion shared|PricesClass:copy -->


<!-- #region shared|PricesClass:removePrice -->
#### Example
```lua
local prices = jo.pricing.formatPrices({
  operator = "or",
  { money = 10 },
  { gold = 1 }
})

prices:removePrice(1)
-- only the gold option remains
```
<!-- #endregion shared|PricesClass:removePrice -->


<!-- #region shared|PricesClass:toTable -->
#### Example
```lua
local prices = jo.pricing.formatPrices({
  operator = "or",
  { money = 10 },
  { gold = 1 }
})

local plainPrices = prices:toTable()

print(plainPrices.operator) -- "or"
```
<!-- #endregion shared|PricesClass:toTable -->
