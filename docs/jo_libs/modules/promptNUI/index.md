# PromptNUI

PromptNUI module is a module to manage prompts.

## Include PromptNUI in your script

1. To use the PromptNUI library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.

```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```

2. Add the PromptNUI module inside the `fxmanifest.lua` (in lowercase)

```lua
jo_libs {
  'prompt-nui',
}
```

You can now use the library inside of your resource with the `jo.promptNui` global variable.

## Functions

Documentation for the [Client](./client.md) side.
