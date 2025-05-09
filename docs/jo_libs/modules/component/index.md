# Component

Component is a module to offer tools for managing ped appearance, including applying, removing, and querying clothing components and skin attributes.

## Include Component in your script

1. To use the Component library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the component module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'component',
}

```
You can now use the library inside of your resource with the `jo.component` global variable.

## Functions

Documentation for the [Client](./client.md) side.  
Documentation for the [Server](./server.md) side.  