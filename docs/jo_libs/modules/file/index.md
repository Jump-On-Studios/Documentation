# File

File is a module to work with files in both client and server side

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

