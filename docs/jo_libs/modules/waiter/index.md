# Waiter

The Waiter module provides timing utilities to handle code execution with timeout conditions. It's particularly useful when you need to wait for specific conditions to be met before proceeding with code execution.

## Include Waiter in your script

1. To use the Waiter library, add the initiator as a shared script inside your `fxmanifest.lua` file:
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```

2. Add the Waiter module inside the `fxmanifest.lua` (in lowercase):
```lua
jo_libs {
  'waiter',
}

```

You can now use the library inside your resource with the `jo.waiter` global variable.

## Functions

Documentation for the [Both](./shared.md) side.  