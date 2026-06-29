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
local price = jo.pricing.formatPrice({
  money = 5,
  item = "acid"
})

price:add({ gold = 1 })

local prices = jo.pricing.formatPrices({
  operator = "or",
  { money = 10 },
  { gold = 1 }
})
```

`Price` and `Prices` remain classic Lua numeric tables, so existing table access is still valid:

```lua
print(price[1].item)
print(prices[1][1].money)
```

<!--@include: ./autodoc/autodoc_shared_functions.md-->
