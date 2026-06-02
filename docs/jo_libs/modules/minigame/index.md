# Minigame

Minigame is a module to run interactive minigames in your scripts.

## Include Minigame in your script

1. To use the Minigame library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the Minigame module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'minigame',
}

```
3. Add the NUI inside the `fxmanifest.lua`
```lua
ui_page "nui://jo_libs/nui/index.html"

```
You can now use the library inside of your resource with the `jo.minigame` global variable.

## Functions

Documentation for the [Client](./client.md) side.  

