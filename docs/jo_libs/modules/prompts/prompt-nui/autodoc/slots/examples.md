<!-- #region client|GroupClass:addPrompt -->
#### Example
```lua
-- Example 1: Add a prompt using a single key with a hold time, defaults to page 1.
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt1 = group:addPrompt("E", "Interact")

-- Example 2: Add a prompt using a table of keys and specifying page 2.
local prompt2 = group:addPrompt({ "W", "A" }, "Move", false, 2)

-- Example 3: Add a prompt with no hold time (using false) on the default page.
local prompt3 = group:addPrompt("Q", "Quick Action", false)

-- Example 4: Add multiple prompts with different configurations.
local prompt4 = group:addPrompt("F", "Fire", 1000)
local prompt5 = group:addPrompt({ "R", "T" }, "Reload", 750, 1)

-- Example 5: Add a prompt with a red title
local prompt6 = group:addPrompt("O", "<span style='color:red'>Set on Fire</span>")

```
<!-- #endregion client|GroupClass:addPrompt -->


<!-- #region client|GroupClass:display -->
#### Example
```lua
local group = jo.promptNui.createGroup()
group:display()

```
<!-- #endregion client|GroupClass:display -->


<!-- #region client|GroupClass:hide -->
#### Example
```lua
local group = jo.promptNui.createGroup()
group:hide()

```
<!-- #endregion client|GroupClass:hide -->


<!-- #region client|GroupClass:isVisible -->
#### Example
```lua
local group = jo.promptNui.createGroup()
group:display()
print(group:isVisible()) -- return true
group:hide()
print(group:isVisible()) -- return false

```
<!-- #endregion client|GroupClass:isVisible -->


<!-- #region client|GroupClass:refreshNUI -->
#### Example
```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
group:display() -- Make sure the group is visible before refreshing the NUI

-- Example 1: Update the title property directly via refreshNUI
group.title = "Updated Menu"
group:refreshNUI("title")

-- Example 2: Update the position property directly via refreshNUI
group.position = "top-right"
group:refreshNUI("position")

-- Note: Typically you would use setTitle() and setPosition() methods
-- which call refreshNUI internally, but this shows direct usage

```
<!-- #endregion client|GroupClass:refreshNUI -->


<!-- #region client|GroupClass:setNextPageKey -->
#### Example
```lua
local group = jo.promptNui.createGroup()
group:setNextPageKey("N")

```
<!-- #endregion client|GroupClass:setNextPageKey -->


<!-- #region client|GroupClass:setPosition -->
#### Example
```lua
local group = jo.promptNui.createGroup()
group:setPosition("top-left")

```
<!-- #endregion client|GroupClass:setPosition -->


<!-- #region client|GroupClass:setTitle -->
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
<!-- #endregion client|GroupClass:setTitle -->


<!-- #region client|PromptClass:refreshNUI -->
#### Example
```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
group:display() -- Make sure the group is visible

-- Example 1: Update the label property directly via refreshNUI
prompt.label = "Press E to use"
prompt:refreshNUI("label")

-- Example 2: Update the disabled property directly via refreshNUI
prompt.disabled = true
prompt:refreshNUI("disabled")

-- Example 3: Update the visibility property directly via refreshNUI
prompt.visible = false
prompt:refreshNUI("visible")

-- Note: Typically you would use setLabel(), setEnabled(), setVisible() methods
-- which call refreshNUI internally, but this shows direct usage

```
<!-- #endregion client|PromptClass:refreshNUI -->


<!-- #region client|PromptClass:setEnabled -->
#### Example
```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setEnabled(false)

```
<!-- #endregion client|PromptClass:setEnabled -->


<!-- #region client|PromptClass:setHoldTime -->
#### Example
```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setHoldTime(500)

```
<!-- #endregion client|PromptClass:setHoldTime -->


<!-- #region client|PromptClass:setKeyboardKeys -->
#### Example
```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setKeyboardKeys("A")
-- OR --
prompt:setKeyboardKeys({ "E", "F" })

```
<!-- #endregion client|PromptClass:setKeyboardKeys -->


<!-- #region client|PromptClass:setLabel -->
#### Example
```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setLabel("Press E to interact")
-- OR --
prompt:setLabel("Press E to <span style='color:red'>interact</span>")

```
<!-- #endregion client|PromptClass:setLabel -->


<!-- #region client|PromptClass:setVisible -->
#### Example
```lua
local group = jo.promptNui.createGroup("Main Menu", "bottom-right")
local prompt = group:addPrompt("E", "Interact")
prompt:setVisible(false)

```
<!-- #endregion client|PromptClass:setVisible -->


<!-- #region client|jo.promptNui.createGroup -->
#### Example
```lua
-- Example 1: Create a group with a standard title and a specified position
local group1 = jo.promptNui.createGroup("Main Menu", "top-left")

-- Example 2: Create a group with an icon in the title using HTML tags
local group2 = jo.promptNui.createGroup("<img src='icon.png'> Options", "center-right")

-- Example 3: Create a group without a title by passing nil
local group3 = jo.promptNui.createGroup(nil)

-- Example 4: Create a group with a false title (no title) and a custom position
local group4 = jo.promptNui.createGroup(false, "top-right")

-- Example 5: Create a group with a red title
local group4 = jo.promptNui.createGroup("<span style='color:red'>My Red Menu</span>")

```
<!-- #endregion client|jo.promptNui.createGroup -->


<!-- #region client|jo.promptNui.isCompleted -->
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
<!-- #endregion client|jo.promptNui.isCompleted -->

