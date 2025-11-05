# Camera

Camera is a module to handle camera in a more easy way.

## Include Camera in your script

1. To use the Camera library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the camera module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'camera',
}

```
You can now use the library inside of your resource with the `camera` global variable.
This module has an alias: `jo.cam`.

## Functions

Documentation for the [Client](./client.md) side.