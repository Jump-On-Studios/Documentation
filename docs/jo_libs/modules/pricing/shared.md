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
local price = jo.pricing.new({
  money = 5,
  item = "acid"
})

price:add({ gold = 1 })

local group = jo.pricing.newGroup({
  operator = "or",
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