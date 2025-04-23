# Raw Keys

The **Raw Keys** module provides functionality to listen for key press and release events. This module allows you to register key listeners that trigger custom callbacks when a specified key is pressed or released.

## Why Use the Raw Keys Module?

- It is faster, simpler, optimized and more compact to write.
- You can directly specify the key as a string (e.g., "E") instead of using a native control constant like "INPUT_LOOT".
- The key "E" will always be the "E" key, even if the player has modified their key settings.

### Comparison Example

**Native Implementation:**

```lua
CreateThread(function()
  local key = `INPUT_LOOT` -- "E" key if the player didn't edit their key settings
  while true do
    if IsControlJustPressed(0, key) then
      print('Key E pressed')
    end
    if IsControlJustReleased(0, key) then
      print('Key E released')
    end
    Wait(0)
  end
end)
```

**Using the Module:**

```lua
jo.rawKeys.listen("E", function(isPressed)
  if isPressed then
   print('Key E pressed')
  else
   print('Key E released')
  end
end)
```

## Include Raw Keys in your script

1. To use the Raw Keys library, just add the initiator as a shared script inside of your `fxmanifest.lua` file.

```lua
shared_scripts {
  '@jo_libs/init.lua'
}
```

2. Add the Raw Keys module inside the `fxmanifest.lua` (in lowercase)

```lua
jo_libs {
  'raw-keys',
}
```

You can now use the library inside of your resource with the `jo.rawKeys` global variable.

## Functions

Documentation for the [Client](./client.md) side.
