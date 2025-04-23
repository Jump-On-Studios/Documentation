# Light

Light is a module to enable the creation and dynamic management of light sources in the game world.

## Include Light in your script

1. To use the Light library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the light module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'light',
}

```
You can now use the library inside of your resource with the `jo.light` global variable.

## Functions

Documentation for the [Client](./client.md) side.