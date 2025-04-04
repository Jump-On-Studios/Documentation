# String

The String module extends Lua's native string capabilities by adding powerful utility functions for enhanced string manipulation. It seamlessly integrates with the standard string library by augmenting the string metatable, providing developers with a comprehensive toolkit for case conversion, string splitting, whitespace trimming, version number handling, and hexadecimal conversions.


## Include String in your script

1. To use the String library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```
2. Add the String module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'string',
}
```
You can now use the library inside of your resource with the `string` global variable.

## Functions

Documentation for the [Both](./shared.md) side.  