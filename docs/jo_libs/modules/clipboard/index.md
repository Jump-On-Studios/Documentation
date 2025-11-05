# Clipboard

Clipboard is a module to handle the windows clipboard *CTRL+C/CTRL+V*.

## Include Clipboard in your script

1. To use the Clipboard library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the clipboard module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'clipboard',
}

```
You can now use the library inside of your resource with the `clipboard` global variable.

## Functions

Documentation for the [Client](./client.md) side.