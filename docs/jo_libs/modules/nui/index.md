# NUI

NUI is a module to provide basic utilities for managing NUI interfaces.
With NUI module, you can load multiples nui page inside the same resource.

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
3. Load the NUI page inside the `fxmanifest.lua` (don't worry, you can load other nui in the resource)
```lua
ui_page "nui://jo_libs/nui/index.html"
```
You can now use the library inside of your resource with the `jo.nui` global variable.

## Functions

Documentation for the [Client](./client.md) side.