---
outline: [2,3]
---
# i18n <BadgeShared/>

i18n module is a specialized tool for internationalization within RedM.

## Setup

Create a `locales` folder in your resource and add your locale files there.
::: code-group
```lua [locales/en.lua]
return {
    "helloWorld": "Hello World",
    "goodbyeWorld": "Goodbye World"
}
```
```lua [locales/fr.lua]
return {
    "helloWorld": "Bonjour le monde",
    "goodbyeWorld": "Au revoir le monde"
}
```
:::

Load them in your fxmanifest.lua:
::: code-group
```lua [fxmanifest.lua]
files {
    "locales/*.lua"
}
```

Done, you're all set!
:::

<!--@include: ./autodoc/convars/autodoc_shared_convars.md-->

<!--@include: ./autodoc/autodoc_shared_functions.md-->

