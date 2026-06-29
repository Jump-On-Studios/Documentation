# Pricing

Pricing is a shared module to normalize and manipulate prices in your scripts.
It supports money, gold, roleplay money (`rol`) and item prices.

The module uses two table objects:

- `Price`: one payment expression. Multiple entries inside a `Price` are paid together.
- `Prices`: a list of `Price` options, with `operator = "or"` for alternatives or `operator = "and"` for a single merged option.

:::tip
`OR` is never implicit. Only a root `operator = "or"` creates payment alternatives.
Every other price shape is treated as an `AND` price.
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

## Functions

Documentation for the [Both](./shared.md) side.
