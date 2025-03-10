---
outline: [2, 3]
---

# Prompt Nui

A library to manage NUI-based prompts. This module allows you to create and manage prompt groups with customizable prompts, key bindings, key hold durations, pagination, and visibility controls.

:::tip
You can find the complete list of valid key inputs, including special and function keys, in the [Keyboard keys mapping](../../raw-keys/client#keyboard-keys-mapping) section of the Raw Keys module.
:::

## JO Functions

### jo.promptNui.createGroup()

Creates a new prompt group.

#### Syntax

```lua
jo.promptNui.createGroup(title, position)
```

#### Parameters

- `title` : _string_  
  The title for the new prompt group. This parameter can also be `false` or `nil`. If provided and not `false`/`nil`, it can include HTML tags (e.g., `<img>`) to display an icon before the title.

- `position` : _string_ <BadgeOptional />  
  (Optional) The screen position for the group. Accepted values are: `"top-left"`, `"top-right"`, `"center-left"`, `"center-right"`, `"bottom-left"`, and `"bottom-right"`. Defaults to `"bottom-right"` if not specified.

#### Return Value

_GroupClass_  
Returns a new prompt group instance that you can use to add and manage prompts.

#### Examples

```lua
-- Example 1: Create a group with a standard title and a specified position
local group1 = jo.promptNui.createGroup("Main Menu", "top-left")

-- Example 2: Create a group with an icon in the title using HTML tags
local group2 = jo.promptNui.createGroup("<img src='icon.png'> Options", "center-right")

-- Example 3: Create a group without a title by passing nil
local group3 = jo.promptNui.createGroup(nil)

-- Example 4: Create a group with a false title (no title) and a custom position
local group4 = jo.promptNui.createGroup(false, "top-right")
```

---

### jo.promptNui.isCompleted()

Checks whether a specified key has been held for the required duration to trigger an action.

#### Syntax

```lua
jo.promptNui.isCompleted(key, fireMultipleTimes)
```

#### Parameters

- `key` : _string_  
  The key identifier to check. Refer to [Keyboard keys mapping](../../raw-keys/client#keyboard-keys-mapping).

- `fireMultipleTimes` : _boolean_ <BadgeOptional />  
  (Optional) If true, allows the key to trigger multiple times; defaults to false.

#### Return Value

_boolean_  
Returns true if the key press is complete and valid; otherwise, false.

#### Example

```lua
CreateThread(function()
  while true do
    if jo.promptNui.isCompleted("A", true) then
      print("G IS COMPLETED")
    end

    if jo.promptNui.isCompleted("K") then
      print("K IS COMPLETED")
    end
    Wait(0)
  end
end)
```

---

## Prompt Group Methods

The prompt group instance returned by `jo.promptNui.createGroup()` supports several methods to manage prompts within the group.

### group:setTitle()

Sets the title for the prompt group.

#### Syntax

```lua
group:setTitle(title)
```

#### Parameters

- `title` : _string_  
  The title to assign to the group. This parameter can also be falsey (e.g., `false` or `nil`) to clear or disable the title.

#### Example

```lua
local group = jo.promptNui.createGroup()

-- Example 1: Set a normal title
group:setTitle("Options")

-- Example 2: Clear the title by passing false
group:setTitle(false)

-- Example 3: Set a title with an icon using HTML tags
group:setTitle("<img src='icon.png'> Options")
```

---

### group:setPosition()

Sets the display position of the prompt group.

#### Syntax

```lua
group:setPosition(position)
```

#### Parameters

- `position` : _string_  
  The screen position. Accepted values are: `"top-left"`, `"top-right"`, `"center-left"`, `"center-right"`, `"bottom-left"`, and `"bottom-right"`. Defaults to `"bottom-right"` if not specified.

#### Example

```lua
local group = jo.promptNui.createGroup()
group:setPosition("center-left")
```

---

### group:setNextPageKey()

Sets the key used for navigating to the next page of prompts.

#### Syntax

```lua
group:setNextPageKey(key)
```

#### Parameters

- `key` : _string_  
  The key to be used for pagination. Refer to [Keyboard keys mapping](../../raw-keys/client#keyboard-keys-mapping).

#### Example

```lua
local group = jo.promptNui.createGroup()
group:setNextPageKey("N")
```

---

### group:addPrompt()

Adds a new prompt to the group.

#### Syntax

```lua
group:addPrompt(key, label, holdTime, page)
```

#### Parameters

- `key` : _string_ or _table_  
  A key string or table of key strings for the prompt. Refer to [Keyboard keys mapping](../../raw-keys/client#keyboard-keys-mapping).

- `label` : _string_  
  The descriptive label for the prompt.

- `holdTime` : _number_ or _boolean_ <BadgeOptional />  
  (Optional) Duration (in milliseconds) the key must be held before activation; use `false` if not applicable.

- `page` : _number_ <BadgeOptional />  
  (Optional) The page number to add the prompt to; defaults to 1.

#### Return Value

_PromptClass_  
Returns the newly created prompt object.

#### Example

```lua
-- Example 1: Add a prompt using a single key with a hold time, defaults to page 1.
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt1 = group:addPrompt("E", "Interact")

-- Example 2: Add a prompt using a table of keys and specifying page 2.
local prompt2 = group:addPrompt({"W", "A"}, "Move", false, 2)

-- Example 3: Add a prompt with no hold time (using false) on the default page.
local prompt3 = group:addPrompt("Q", "Quick Action", false)

-- Example 4: Add multiple prompts with different configurations.
local prompt4 = group:addPrompt("F", "Fire", 1000)
local prompt5 = group:addPrompt({"R", "T"}, "Reload", 750, 1)
```

---

### group:display()

Displays the prompt group on the NUI interface and sets up key listeners for the active page.

#### Syntax

```lua
group:display(page)
```

#### Parameters

- `page` : _number_ <BadgeOptional />  
  (Optional) The page number to display; defaults to the group's current page.

#### Example

```lua
local group = jo.promptNui.createGroup()
group:display()
```

---

### group:hide()

Hides the prompt group from the NUI interface and removes its active key listeners.

#### Syntax

```lua
group:hide()
```

#### Example

```lua
local group = jo.promptNui.createGroup()
group:hide()
```

---

## Prompt Methods

The prompt object returned by `group:addPrompt()` provides methods to manage individual prompt properties.

### prompt:setLabel()

Sets the label text for the prompt.

#### Syntax

```lua
prompt:setLabel(label)
```

#### Parameters

- `label` : _string_  
  The text label to assign to the prompt.

#### Example

```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setLabel("Press E to interact")
```

---

### prompt:setEnabled()

Enables or disables the prompt and updates its associated key listeners.

#### Syntax

```lua
prompt:setEnabled(enabled)
```

#### Parameters

- `enabled` : _boolean_  
  True to enable the prompt, false to disable it.

#### Example

```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setEnabled(false)
```

---

### prompt:setVisible()

Sets the visibility of the prompt and updates its enabled state accordingly.

#### Syntax

```lua
prompt:setVisible(visible)
```

#### Parameters

- `visible` : _boolean_  
  True to show the prompt, false to hide it.

#### Example

```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setVisible(false)
```

---

### prompt:setKeyboardKeys()

Configures the keyboard keys for the prompt.

#### Syntax

```lua
prompt:setKeyboardKeys(keys)
```

#### Parameters

- `keys` : _table_ or _string_  
  A table of key strings or a single key string. Refer to [Keyboard keys mapping](../../raw-keys/client#keyboard-keys-mapping).

#### Example

```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setKeyboardKeys("A")
-- or
prompt:setKeyboardKeys({"E", "F"})
```

---

### prompt:setHoldTime()

Sets the key hold duration for the prompt.

#### Syntax

```lua
prompt:setHoldTime(holdTime)
```

#### Parameters

- `holdTime` : _number_ or _boolean_  
  Duration (in milliseconds) the key must be held before activation; use false if not applicable.

#### Example

```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setHoldTime(500)
```
