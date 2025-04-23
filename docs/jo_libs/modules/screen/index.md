# Screen

Screen module is a module to control screen effects such as fades, transitions, and visual displays. It provides simple functions for creating smooth visual transitions in your game.

## Include Screen in your script

1. To use the Screen library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the Screen module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'screen',
}

```
You can now use the library inside of your resource with the `jo.screen` global variable.

## Functions

Documentation for the [Client](./client.md) side.  