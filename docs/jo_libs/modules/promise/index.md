# Promise

Promise is a module to transform callback-style functions into Promise-based operations, allowing for more elegant handling of asynchronous code.

## Include Promise in your script

1. To use the Promise library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```
2. Add the math module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'promise',
}
```
You can now use the library inside of your resource with the `jo.promise` global variable.

## Functions

Documentation for [Both](./shared.md) side.