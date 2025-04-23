# Math

Math is a module to extend Lua's standard mathematical library with additional utility functions for common calculations and operations needed in game development. It provides helpful functions for interpolation, rounding with precision, and other mathematical operations that aren't available in the base Lua math library.

## Include Math in your script

1. To use the Math library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the math module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'math',
}

```
You can now use the library inside of your resource with the `math` global variable.

## Functions

Documentation for [Both](./shared.md) side.