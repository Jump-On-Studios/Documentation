# Framework

Framework is a powerful module to act as a compatibility layer, allowing scripts to interact with various RedM frameworks using a standardized set of functions.

## Include Framework in your script

1. To use the Framework library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. Add the Framework module inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'framework',
}

```
You can now use the library inside of your resource with the `jo.framework` global variable.

## Compatible Frameworks
The **framework bridge** module is compatible with these frameworks:
* VORP  
* RedEM:RP (old/new)  
* RSG  
* QBR  
* QR  
  
## Functions

Documentation for the [Framework](./framework.md)  
Documentation for the [User](./user.md) 

