# UI

Ui is a module to provide functions to interact with specific native UI elements.

## Include UI in your script

1. To use the UI library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```
2. Add the UI module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'ui',
}
```
You can now use the library inside of your resource with the `jo.ui` global variable.

## Functions

Documentation for the [Client](./client.md) side.  