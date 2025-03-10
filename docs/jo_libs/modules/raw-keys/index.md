# Raw Keys

The **Raw Keys** module provides functionality to listen for key press and release events. This module allows you to register key listeners that trigger custom callbacks when a specified key is pressed or released.

## Include Raw Keys in your script

1. To use the Raw Keys library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.

```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```

2. Add the Raw Keys module inside the `fxmanifest.lua` (in lowercase)

```lua
jo_libs {
  'raw-keys',
}
```

You can now use the library inside of your resource with the `jo.rawKeys` global variable.

## Functions

Documentation for the [Client](./client.md) side.
