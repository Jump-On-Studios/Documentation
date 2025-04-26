# Gizmo

Gizmo is a module to implement an interactive 3D gizmo tool for precisely moving and rotating entities within the game world.

## Include Gizmo in your script

1. To use the Gizmo library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the Gizmo module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'gizmo',
}
```
3. Add the NUI inside the the `fxmanifest.lua`
```lua
ui_page "nui://jo_libs/nui/index.html"
```

You can now use the library inside of your resource with the `jo.gizmo` global variable.

## Functions

Documentation for the [Client](./client.md) side.  
