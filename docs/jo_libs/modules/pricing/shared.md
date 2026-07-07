---
outline: [2,3]
---
# Pricing <BadgeShared/>

Pricing is a shared module to normalize and manipulate prices in your scripts.

:::tip
You can use the [Price Generator](/DeveloperResources/price-generator) to build price tables and paste the generated Lua code into your config files.
:::

## Quick usage

```lua
-- Create a price with $5 and 1 acid item.
local price = jo.pricing.new({
  money = 5,
  item = "acid"
})

-- Add 1 gold to the existing price.
price:add({ gold = 1 })

-- Create a group where the player can pay either $10 or 1 gold.
local group = jo.pricing.newGroup({
  { money = 10 },
  { gold = 1 }
})
```

Prices are normalized into canonical cost tables:

```lua
log(price:get())
-- Expected output:
-- {
--   { money = 5 },
--   { gold = 1 },
--   { item = "acid", quantity = 1, keep = false }
-- }

print(group.operator)
-- Expected output: "or"
```

## Mathematical Operations

### Addition

Use the `+` operator to combine two prices into a new `PriceClass`.

```lua
local priceA = jo.pricing.new({ money = 10 })
local priceB = jo.pricing.new({ money = 5, item = "water" })

local total = priceA + priceB

log(total:get())
-- Expected output:
-- {
--   { money = 15 },
--   { item = "water", quantity = 1, keep = false }
-- }

log(priceA:get())
-- Expected output: { { money = 10 } }
```

### Multiplication

Use the `*` operator to multiply a price into a new `PriceClass`.
Currencies keep their multiplied value, while item quantities are rounded to the nearest integer.

```lua
local price = jo.pricing.new({
  money = 10,
  item = "water",
  quantity = 3
})

local multiplied = price * 1.5

log(multiplied:get())
-- Expected output:
-- {
--   { money = 15 },
--   { item = "water", quantity = 5, keep = false }
-- }

log(price:get())
-- Expected output:
-- {
--   { money = 10 },
--   { item = "water", quantity = 3, keep = false }
-- }
```

The reversed order also works:

```lua
local multiplied = 2 * jo.pricing.new({ money = 5 })

log(multiplied:get())
-- Expected output: { { money = 10 } }
```

### Division

Use the `/` operator to divide a price by a number into a new `PriceClass`.
It reuses the multiplication behavior internally, so currencies keep their divided value and item quantities are rounded to the nearest integer.

```lua
local price = jo.pricing.new({
  money = 15,
  item = "water",
  quantity = 5
})

local divided = price / 2

log(divided:get())
-- Expected output:
-- {
--   { money = 7.5 },
--   { item = "water", quantity = 3, keep = false }
-- }

log(price:get())
-- Expected output:
-- {
--   { money = 15 },
--   { item = "water", quantity = 5, keep = false }
-- }
```

Only `price / number` is supported. Division by zero raises an error.

### Length

Use the `#` operator to count canonical entries.
For a `PriceClass`, it returns the number of costs.
For a `PriceGroupClass`, it returns the number of prices in the group.

```lua
local price = jo.pricing.new({ money = 10, item = "water" })
local group = jo.pricing.newGroup({
  { money = 10 },
  { gold = 2 }
})

print(#price)
-- Expected output: 2

print(#group)
-- Expected output: 2
```

### Equality

Use the `==` operator to compare two prices by value. Cost order does not matter.

```lua
local priceA = jo.pricing.new({ money = 10, item = "water" })
local priceB = jo.pricing.new({
  { item = "water", quantity = 1, keep = false },
  { money = 10 }
})

print(priceA == priceB)
-- Expected output: true
```

<!--@include: ./autodoc/autodoc_shared_functions.md-->
