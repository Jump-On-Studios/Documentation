# Player

Player is a module to provide optimized, cached access to common local player data.

## Include Player in your script

1. To use the Player library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the Player module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'player',
}

```
You can now use the library inside of your resource with the `jo.player` global variable.  
This module has an alias: `jo.pl`.

## Functions

Documentation for the [Client](./client.md) side.  