# Trigger-Event

Trigger-event is a module to offer a simplified way to trigger events.

## Include Trigger-Event in your script

1. To use the Trigger-Event library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the Trigger-Event module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'trigger-event',
}

```
You can now use the library inside of your resource with the `jo.triggerEvent` global variable.

## Functions

Documentation for the [Server](./server.md) side.  