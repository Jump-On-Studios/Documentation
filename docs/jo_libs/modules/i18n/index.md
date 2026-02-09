# i18n

i18n is a module to implement an internationalization system for your resource.

## Include i18n in your script

1. To use the i18n library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the i18n module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'i18n',
}
```
3. Set the default locale in your `server.cfg` file:
```cfg
setr jo_libs:i18n:locale "en"
```

You can now use the library inside of your resource with the `jo.i18n` global variable.

## Functions

Documentation for the [Both Sides](./shared.md) side.  
