# Emit

Emit is a module to optimize your trigger events server <> client. It's especially usefull for large data or sending data to specific players.

## Include Emit in your script

1. To use the Emit library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the Emit module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'emit',
}

```
You can now use the library inside of your resource with the `jo.emit` global variable.

## Functions

Documentation for the [Client](./client.md) side.  
Documentation for the [Server](./server.md) side  