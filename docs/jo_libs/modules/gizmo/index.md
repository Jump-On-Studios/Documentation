# Gizmo

Gizmo module is a specialized tool for manipulating entities in 3D space within RedM. It provides a visual interface for moving, rotating, and precisely positioning objects with optional camera controls.

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
You can now use the library inside of your resource with the `jo.gizmo` global variable.

## Functions

Documentation for the [Client](./client.md) side.  
