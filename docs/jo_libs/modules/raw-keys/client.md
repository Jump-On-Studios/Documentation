---
outline: 2
---

# Raw Keys

The **Raw Keys** module allows you to register and remove key listeners for raw keyboard events. It supports multiple keyboard layouts (QWERTY and AZERTY) by checking the `jo_libs:keyboard_layout` convar, which defaults to "qwerty". Callbacks will be triggered when a key is pressed or released.

## jo.rawKeys.listen(key, callback)

Registers a listener for a specific key. When the key is pressed or released, the provided callback function is executed with a boolean value indicating the event state (true for pressed, false for released).

### Syntax

```lua
jo.rawKeys.listen(key, callback)
```

#### Parameters

- `key` : _string_  
  The identifier of the key to listen for. This should correspond to one of the keys defined in the [keyboard mappings](#keyboard-keys-mapping)(e.g., "A", "B", "F1", etc.).

- `callback` : _function_  
  The function to be executed when the key event occurs. It receives one parameter:
  - _boolean_ — `true` when the key is pressed, `false` when it is released.

#### Return value

None

### Example

```lua
jo.rawKeys.listen("A", function(pressed)
  if pressed then
    print("Key A pressed")
  else
    print("Key A released")
  end
end)
```

## jo.rawKeys.remove(key)

Removes the listener associated with the specified key. Use this function to stop listening for events on a key when it is no longer needed.

### Syntax

```lua
jo.rawKeys.remove(key)
```

#### Parameters

- `key` : _string_  
  The identifier of the key for which the listener should be removed.

#### Return value

None

### Example

```lua
jo.rawKeys.remove("A")
```

## Setting Keyboard Layout

- **Keyboard Layouts:**  
  The module supports both QWERTY and AZERTY layouts. The layout in use is determined by the `jo_libs:keyboard_layout` convar. If set to "azerty", the corresponding key mappings are applied automatically.  
  You can set the keyboard layout in your server configuration by adding the following line to your `server.cfg`:

  ```cfg
  setr jo_libs:keyboard_layout "AZERTY"
  ```

## Keyboard keys mapping

| Input Parameter     | Input Description                                                |
| ------------------- | ---------------------------------------------------------------- |
| BACK                | Backspace key                                                    |
| TAB                 | Tab key                                                          |
| CLEAR               | Clear key                                                        |
| RETURN              | Enter/Return key                                                 |
| SHIFT               | Shift key                                                        |
| CTRL                | Control key                                                      |
| MENU                | Alt/Menu key                                                     |
| PAUSE               | Pause key                                                        |
| CAPITAL             | Caps Lock key                                                    |
| Esc                 | Escape key                                                       |
| SPACE               | Space bar                                                        |
| PAGEUP              | Page Up key                                                      |
| PAGEDOWN            | Page Down key                                                    |
| END                 | End key                                                          |
| HOME                | Home key                                                         |
| LEFT                | Left arrow key                                                   |
| UP                  | Up arrow key                                                     |
| RIGHT               | Right arrow key                                                  |
| DOWN                | Down arrow key                                                   |
| PRINT               | Print Screen key                                                 |
| INSERT              | Insert key                                                       |
| DELETE              | Delete key                                                       |
| LWIN                | Left Windows/OS key                                              |
| RWIN                | Right Windows/OS key                                             |
| NUMLOCK             | Num Lock key                                                     |
| L SHIFT             | Left Shift key                                                   |
| R SHIFT             | Right Shift key                                                  |
| L CTRL              | Left Control key                                                 |
| R CTRL              | Right Control key                                                |
| L ALT               | Left Alt key                                                     |
| R ALT               | Right Alt key                                                    |
| 0                   | Number key 0                                                     |
| 1                   | Number key 1                                                     |
| 2                   | Number key 2                                                     |
| 3                   | Number key 3                                                     |
| 4                   | Number key 4                                                     |
| 5                   | Number key 5                                                     |
| 6                   | Number key 6                                                     |
| 7                   | Number key 7                                                     |
| 8                   | Number key 8                                                     |
| 9                   | Number key 9                                                     |
| NUMPAD0             | Numpad key 0                                                     |
| NUMPAD1             | Numpad key 1                                                     |
| NUMPAD2             | Numpad key 2                                                     |
| NUMPAD3             | Numpad key 3                                                     |
| NUMPAD4             | Numpad key 4                                                     |
| NUMPAD5             | Numpad key 5                                                     |
| NUMPAD6             | Numpad key 6                                                     |
| NUMPAD7             | Numpad key 7                                                     |
| NUMPAD8             | Numpad key 8                                                     |
| NUMPAD9             | Numpad key 9                                                     |
| NUMPAD_MULTIPLY     | Numpad Multiply key                                              |
| NUMPAD_ADD          | Numpad Add key                                                   |
| NUMPAD_SUBTRACT     | Numpad Subtract key                                              |
| NUMPAD_DECIMAL      | Numpad Decimal key                                               |
| A                   | Letter key A                                                     |
| B                   | Letter key B                                                     |
| C                   | Letter key C                                                     |
| D                   | Letter key D                                                     |
| E                   | Letter key E                                                     |
| F                   | Letter key F                                                     |
| G                   | Letter key G                                                     |
| H                   | Letter key H                                                     |
| I                   | Letter key I                                                     |
| J                   | Letter key J                                                     |
| K                   | Letter key K                                                     |
| L                   | Letter key L                                                     |
| M                   | Letter key M                                                     |
| N                   | Letter key N                                                     |
| O                   | Letter key O                                                     |
| P                   | Letter key P                                                     |
| Q                   | Letter key Q                                                     |
| R                   | Letter key R                                                     |
| S                   | Letter key S                                                     |
| T                   | Letter key T                                                     |
| U                   | Letter key U                                                     |
| V                   | Letter key V                                                     |
| W                   | Letter key W                                                     |
| X                   | Letter key X                                                     |
| Y                   | Letter key Y                                                     |
| Z                   | Letter key Z                                                     |
| F1                  | Function key F1                                                  |
| F2                  | Function key F2                                                  |
| F3                  | Function key F3                                                  |
| F4                  | Function key F4                                                  |
| F5                  | Function key F5                                                  |
| F6                  | Function key F6                                                  |
| F7                  | Function key F7                                                  |
| F8                  | Function key F8                                                  |
| F9                  | Function key F9                                                  |
| F10                 | Function key F10                                                 |
| F11                 | Function key F11                                                 |
| F12                 | Function key F12                                                 |
| F13                 | Function key F13                                                 |
| F14                 | Function key F14                                                 |
| F15                 | Function key F15                                                 |
| F16                 | Function key F16                                                 |
| F17                 | Function key F17                                                 |
| F18                 | Function key F18                                                 |
| F19                 | Function key F19                                                 |
| F20                 | Function key F20                                                 |
| F21                 | Function key F21                                                 |
| F22                 | Function key F22                                                 |
| F23                 | Function key F23                                                 |
| F24                 | Function key F24                                                 |
| ;                   | Semicolon key (OEM_1 punctuation)                                |
| +                   | Plus/Equals key                                                  |
| ,                   | Comma key                                                        |
| -                   | Minus key                                                        |
| ;                   | Period key                                                       |
| /                   | Slash key                                                        |
| `                   | Grave accent/Tilde key                                           |
| [                   | Left bracket key                                                 |
| \                   | Backslash key                                                    |
| ]                   | Right bracket key                                                |
| '                   | Apostrophe/Quote key                                             |
| BROWSER_BACK        | Browser Back key                                                 |
| BROWSER_FORWARD     | Browser Forward key                                              |
| BROWSER_REFRESH     | Browser Refresh key                                              |
| BROWSER_STOP        | Browser Stop key                                                 |
| BROWSER_SEARCH      | Browser Search key                                               |
| BROWSER_FAVORITES   | Browser Favorites key                                            |
| BROWSER_HOME        | Browser Home key                                                 |
| VOLUME_MUTE         | Volume Mute key                                                  |
| VOLUME_DOWN         | Volume Down key                                                  |
| VOLUME_UP           | Volume Up key                                                    |
| MEDIA_NEXT_TRACK    | Media Next Track key                                             |
| MEDIA_PREV_TRACK    | Media Previous Track key                                         |
| MEDIA_STOP          | Media Stop key                                                   |
| MEDIA_PLAY_PAUSE    | Media Play/Pause key                                             |
| LAUNCH_MAIL         | Launch Mail key                                                  |
| LAUNCH_MEDIA_SELECT | Launch Media Select key                                          |
| LAUNCH_APP1         | Launch Application 1 key                                         |
| LAUNCH_APP2         | Launch Application 2 key                                         |
| OEM_8               | OEM specific key                                                 |
| OEM_102             | OEM specific key (often <> or extra backslash on some keyboards) |
| PROCESSKEY          | Process key (for handling input methods)                         |
| PACKET              | Packet key (IME related)                                         |
| ATTN                | Attn key (Attention)                                             |
| CRSEL               | Crsel key (Cursor Select)                                        |
| EXSEL               | Exsel key (Execute Select)                                       |
| EREOF               | Erase EOF key                                                    |
| PLAY                | Play key                                                         |
| ZOOM                | Zoom key                                                         |
| NONAME              | Unnamed key (undefined)                                          |
| PA1                 | PA1 key                                                          |
| OEM_CLEAR           | Clear key (often on the numeric keypad)                          |
