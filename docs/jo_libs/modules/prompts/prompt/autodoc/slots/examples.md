<!-- #region client|jo.prompt.create -->

#### Example
```lua
local group = "interaction"
local keyLabel = "The key"
local key = "INPUT_JUMP"
local duration = 1000
jo.prompt.create(group,keyLabel,key, duration)
```
<!-- #endregion client|jo.prompt.create -->


<!-- #region client|jo.prompt.delete -->

#### Example
```lua
local group = "interaction"
local key = "INPUT_JUMP"
jo.prompt.deletePrompt(group,key)
```
<!-- #endregion client|jo.prompt.delete -->


<!-- #region client|jo.prompt.deleteAllGroups -->

#### Example
```lua
local group = "interaction"
local keyLabel = "The key"
local key = "INPUT_JUMP"
local duration = 1000
jo.prompt.create(group,keyLabel,key, duration)
jo.prompt.deleteAllGroups()
print(jo.prompt.isGroupExist('interaction'))
-- Expected output : false
```
<!-- #endregion client|jo.prompt.deleteAllGroups -->


<!-- #region client|jo.prompt.deleteGroup -->

#### Example
```lua
local group = "shop"
jo.prompt.deleteGroup(group)
```
<!-- #endregion client|jo.prompt.deleteGroup -->


<!-- #region client|jo.prompt.displayGroup -->

#### Example
```lua
CreateThread(function()
  local group = "shop"
  local title = "Stable shop"
  local keyLabel = "The key"
  local key = "INPUT_JUMP"
  jo.prompt.create(group,keyLabel,key)
  while true do
    jo.prompt.displayGroup(group,title)
    Wait(0)
  end
end)
```
<!-- #endregion client|jo.prompt.displayGroup -->


<!-- #region client|jo.prompt.doesLastCompletedIs -->

#### Example
```lua
local group = "shop"
local key = "INPUT_ENTER"
print(jo.prompt.doesLastCompletedIs(group,key))
```
<!-- #endregion client|jo.prompt.doesLastCompletedIs -->


<!-- #region client|jo.prompt.editKeyLabel -->

#### Example
```lua
local group = "shop"
local key = "INPUT_JUMP"
local label = "The new label"
jo.prompt.editKeyLabel(group,key,label)
```
<!-- #endregion client|jo.prompt.editKeyLabel -->


<!-- #region client|jo.prompt.get -->

#### Example
```lua
local group = "shop"
local key = "INPUT_JUMP"
print(jo.prompt.get(group,key))
```
<!-- #endregion client|jo.prompt.get -->


<!-- #region client|jo.prompt.getAll -->

#### Example
```lua
-- todo
```
<!-- #endregion client|jo.prompt.getAll -->


<!-- #region client|jo.prompt.getGroup -->

#### Example
```lua
-- todo
```
<!-- #endregion client|jo.prompt.getGroup -->


<!-- #region client|jo.prompt.getPage -->

#### Example
```lua
-- todo
```
<!-- #endregion client|jo.prompt.getPage -->


<!-- #region client|jo.prompt.getProgress -->

#### Example
```lua
local group = "interaction"
local keyLabel = "The key"
local key = "INPUT_JUMP"
jo.prompt.create(group,keyLabel,key)
CreateThread(function()
  while true do
    print(jo.prompt.getProgress(group,key))
    Wait(0)
  end
end)
```
<!-- #endregion client|jo.prompt.getProgress -->


<!-- #region client|jo.prompt.isActive -->

#### Example
```lua
local group = "interaction"
local keyLabel = "The key"
jo.prompt.isActive(group,key)
-- Expected output : false
```
<!-- #endregion client|jo.prompt.isActive -->


<!-- #region client|jo.prompt.isCompleted -->

#### Example
```lua
CreateThread(function()
  local group = "interaction"
  local keyLabel = "The key"
  local key = "INPUT_JUMP"
  local duration = 1000
  jo.prompt.create(group,keyLabel,key, duration)
  while true do
    if jo.prompt.isCompleted(group,key) then
      print('Key completed !')
    end
    jo.prompt.displayGroup(group,title)
    Wait(0)
  end
end)
```
<!-- #endregion client|jo.prompt.isCompleted -->


<!-- #region client|jo.prompt.isEnabled -->

#### Example
```lua
local group = "interaction"
local keyLabel = "The key"
jo.prompt.isEnabled(group,key)
-- Expected output : false
```
<!-- #endregion client|jo.prompt.isEnabled -->


<!-- #region client|jo.prompt.isExist -->

#### Example
```lua
local group = "interaction"
local keyLabel = "The key"
local key = "INPUT_JUMP"
jo.prompt.create(group,keyLabel,key)
print(jo.prompt.isPromptExist('interaction','INPUT_JUMP'))
-- Expected output : true
print(jo.prompt.isGroupExist('new_group','INPUT_RELOAD'))
-- Expected output : false
```
<!-- #endregion client|jo.prompt.isExist -->


<!-- #region client|jo.prompt.isGroupExist -->

#### Example
```lua
local group = "interaction"
local keyLabel = "The key"
local key = "INPUT_JUMP"
jo.prompt.create(group,keyLabel,key)
print(jo.prompt.isGroupExist('interaction'))
-- Expected output : true
print(jo.prompt.isGroupExist('new_group'))
-- Expected output : false
```
<!-- #endregion client|jo.prompt.isGroupExist -->


<!-- #region client|jo.prompt.isPressed -->

#### Example
```lua
local key =  "INPUT_FRONTEND_ACCEPT"
print(jo.prompt.isPressed(key))
```
<!-- #endregion client|jo.prompt.isPressed -->


<!-- #region client|jo.prompt.isVisible -->

#### Example
```lua
-- todo
```
<!-- #endregion client|jo.prompt.isVisible -->


<!-- #region client|jo.prompt.setEnabled -->

#### Example
```lua
local group = "shop"
local key = "INPUT_JUMP"
jo.prompt.setEnabled(group,key,false)
```
<!-- #endregion client|jo.prompt.setEnabled -->


<!-- #region client|jo.prompt.setGroups -->

#### Example
```lua
local groups = exports.resourceName:getPrompt()
jo.prompt.setGroups(groups)
```
<!-- #endregion client|jo.prompt.setGroups -->


<!-- #region client|jo.prompt.setVisible -->

#### Example
```lua
local group = "shop"
local key = "INPUT_JUMP"
local isVisible = false
jo.prompt.setVisible(group,key,isVisible)
```
<!-- #endregion client|jo.prompt.setVisible -->


<!-- #region client|jo.prompt.waitRelease -->

#### Example
```lua
CreateThread(function()
  local group = "interaction"
  local keyLabel = "The key"
  local key = "INPUT_JUMP"
  local duration = 1000
  jo.prompt.create(group,keyLabel,key, duration)
  while true do
    if jo.prompt.isCompleted(group,key) then
      print('Key completed !')
      jo.prompt.waitRelease(key)
      print('Key released !')
    end
    jo.prompt.displayGroup(group,title)
    Wait(0)
  end
end)
```
<!-- #endregion client|jo.prompt.waitRelease -->

