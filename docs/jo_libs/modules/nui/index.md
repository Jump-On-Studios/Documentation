# NUI

NUI is a module to provide basic utilities for managing NUI interfaces.

## Include NUI in your script

1. To use the NUI library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```
2. Add the NUI module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'nui',
}
```
You can now use the library inside of your resource with the `jo.nui` global variable.

## Functions

Documentation for the [Client](./client.md) side.