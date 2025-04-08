# File

File is a module to provide basic file operations for checking file existence and loading Lua files on both client and server.

## Include File in your script

1. To use the File library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```
2. Add the File module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'file',
}
```
You can now use the library inside of your resource with the `jo.file` global variable.

## Functions

Documentation for the [Both](./shared.md) side.  

