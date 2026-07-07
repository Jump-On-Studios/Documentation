# Pricing

Pricing is a shared module to normalize, compare, and manipulate prices in your scripts.
It supports money, gold, roleplay money (`rol`), and item prices.

The module uses two normalized pricing objects:

- `PriceClass`: one payment expression. All costs inside a price are required together.
- `PriceGroupClass`: a list of prices joined by `operator = "or"` for alternatives or `operator = "and"` for grouped requirements.

:::tip
A `PriceClass` is always an implicit `AND` between its costs.
Use `jo.pricing.newGroup()` when you need explicit `"or"` alternatives or an explicit `"and"` group.
:::

:::tip
You can use the [Price Generator](/DeveloperResources/price-generator) to build price tables and paste the generated Lua code into your config files.
:::

## Include Pricing in your script

1. To use the Pricing library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the Pricing module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'pricing',
}

```
You can now use the library inside of your resource with the `jo.pricing` global variable.


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

## Functions

Documentation for the [Both](./shared.md) side.
