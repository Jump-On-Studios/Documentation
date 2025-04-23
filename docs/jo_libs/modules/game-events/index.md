# Game Events

Game-events is a module to allow scripts to listen for and react to specific game events.

## Include Game Events in your script

1. To use the Game Events library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```
2. Add the game-events module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'game-events',
}
```
You can now use the library inside of your resource with the `jo.gameEvents` global variable.

## Functions

Documentation for the [Client](./client.md) side.