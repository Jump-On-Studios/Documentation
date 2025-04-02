# Debugger

Debugger is a module to help you debug your scripts

## Include Debugger in your script

1. To use the Debugger library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```
2. Add the Debugger module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'debugger',
}
```
You can now use the library inside of your resource with the `jo.debugger` global variable.

## Functions

Documentation for the [Client](./client.md) side.  
Documentation for [Both](./shared.md) sides.  

