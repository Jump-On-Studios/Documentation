---
outline: 2
---
# Prompt

A library to manage prompts in the game.  
:::tip
The list of the input HashName for keys is available in the [rdr3 discoveries github](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls)
:::

## jo.prompt.create()
A function to create a new prompt
### Syntax
```lua
jo.prompt.create(group,label,key,holdTime,page)
```
#### Parameters
`group` : *string*
> The name of the group.  
> Use "interaction" for display the prompt without need to call jo.prompt.displayGroup every frame.
  
`label` : *string*
> The label of the key
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
`holdTime` : *integer* <BadgeOptional />
> Duration to complete the prompt in ms. Use `false` for classic prompt without holding timer  
> default : false
  
`page` : *integer* <BadgeOptional />
> The page of the prompt  
> default: 0
  

### Example
```lua
local group = "interaction"
local keyLabel = "The key"
local key = "INPUT_JUMP"
local duration = 1000
jo.prompt.create(group,keyLabel,key, duration)
```

## jo.prompt.deleteAllGroups()
A function to delete all prompts created in the script
### Syntax
```lua
jo.prompt.deleteAllGroups()
```
#### Parameters
None.
### Example
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

## jo.prompt.deleteGroup()
A function to delete a group and all its prompts
### Syntax
```lua
jo.prompt.deleteGroup(group)
```
#### Parameters
`group` : *string*
> The name of the group.  
> Use "interaction" for display the prompt without need to call jo.prompt.displayGroup every frame.
  

### Example
```lua
local group = "shop"
jo.prompt.deleteGroup(group)
```

## jo.prompt.delete()
A function to delete a prompt
### Syntax
```lua
jo.prompt.deletePrompt(group,key)
```
#### Parameters
`group` : *string*
> The name of the group.  
> Use "interaction" for display the prompt without need to call jo.prompt.displayGroup every frame.
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  

### Example
```lua
local group = "interaction"
local key = "INPUT_JUMP"
jo.prompt.deletePrompt(group,key)
```

## jo.prompt.displayGroup()
Display the group of prompt during.
Need to be call each frame.
### Syntax
```lua
jo.prompt.displayGroup(group,title)
```
#### Parameters
`group` : *string*
> The name of the prompt group to display this frame
  
`title` : *string*
> The title to display for this prompt group
  

### Example
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

## jo.prompt.doesLastCompletedIs()
Return true if it's the last prompt completed
### Syntax
```lua
jo.prompt.doesLastCompletedIs(group,key)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
#### Return value
Type: *boolean*
> Return `true` if key is the last input completed
  

### Example
```lua
local group = "shop"
local key = "INPUT_ENTER"
print(jo.prompt.doesLastCompletedIs(group,key))
```

## jo.prompt.editKeyLabel()
A function to edit the label of a key
### Syntax
```lua
jo.prompt.editKeyLabel(group,key,label)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
`label` : *string*
> The label of the key
  

### Example
```lua
local group = "shop"
local key = "INPUT_JUMP"
local label = "The new label"
jo.prompt.editKeyLabel(group,key,label)
```

## jo.prompt.get()
Return the prompt ID
### Syntax
```lua
jo.prompt.get(group,key)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
#### Return value
Type: *integer*
> Return the prompt ID 
  
### Example
```lua
local group = "shop"
local key = "INPUT_JUMP"
print(jo.prompt.get(group,key))
```

## jo.prompt.getProgress()
A function to return the progress of a prompt
### Syntax
```lua
jo.prompt.getPromptProgress(group,key)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
#### Return value
Type: *float*
> Return the percent of the prompt progress
  
### Example
```lua
local group = "interaction"
local keyLabel = "The key"
local key = "INPUT_JUMP"
jo.prompt.create(group,keyLabel,key)
CreateThread(function()
  while true do
    print(jo.prompt.getPromptProgress(group,key))
    Wait(0)
  end
end)
```

## jo.prompt.isActive()
A function to know if a prompt is active or not
### Syntax
```lua
jo.prompt.isActive(group,key)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
#### Return value
Type: *boolean*
> Return `true` if the prompt is active
  
### Example
```lua
local group = "interaction"
local keyLabel = "The key"
jo.prompt.isActive(group,key)
-- Expected output : false
```

## jo.prompt.isCompleted()
A function to test if the prompt is pressed and completed
### Syntax
```lua
jo.prompt.isCompleted(group,key,fireMultipleTimes)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
`fireMultipleTimes` : *boolean* <BadgeOptional />
> Fire true if the prompt is completed and until another prompt is completed
> default : false
  

#### Return value
Type: *boolean*
> Return `true` if the key is pressed and completed
  

### Example
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

## jo.prompt.isEnabled()
A function to know if the prompt is enabled
### Syntax
```lua
jo.prompt.isEnabled(group,key)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
#### Return value
Type: *boolean*
> Return `true` if the prompt is enabled
  
### Example
```lua
local group = "interaction"
local keyLabel = "The key"
jo.prompt.isEnabled(group,key)
-- Expected output : false
```

## jo.prompt.isExist()
A function to know if a prompt group exist
### Syntax
```lua
jo.prompt.isPromptExist(group,key)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
#### Return value
Type: *boolean*
> Return `true` if the prompt exist
  
### Example
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

## jo.prompt.isGroupExist()
A function to know if a prompt group exist
### Syntax
```lua
jo.prompt.isGroupExist(group)
```
#### Parameters
`group` : *string*
> The name of the group
  

#### Return value
Type: *boolean*
> Return `true` if the group exist
  
### Example
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

## jo.prompt.isPressed()
A function to know if a key is pressed
### Syntax
```lua
jo.prompt.isPressed(key)
```
#### Parameters
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  

#### Return value
Type: *boolean*
> Return `true` if the key is pressed
  
### Example
```lua
local key =  "INPUT_FRONTEND_ACCEPT"
print(jo.prompt.isPressed(key))
```

## jo.prompt.setEnabled()
A function to define if the prompt is enabled or not
### Syntax
```lua
jo.prompt.setEnabled(group,key,value)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
`isVisible` : *boolean*
> If the prompt is enabled or not
  
### Example
```lua
local group = "shop"
local key = "INPUT_JUMP"
jo.prompt.setEnabled(group,key,false)
```

## jo.prompt.setGroups()
A function to overwrite the prompt groups value
### Syntax
```lua
jo.prompt.setGroups(groups)
```
#### Parameters
`groups` : *table*
> The prompt group value from other script get with jo.prompt.getAll()
  

### Example
```lua
local groups = exports.resourceName:getPrompt()
jo.prompt.setGroups(groups)
```

## jo.prompt.setVisible()
Turn on/off a prompt
### Syntax
```lua
jo.prompt.setVisible(group,key,isVisible)
```
#### Parameters
`group` : *string*
> The name of the group
  
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
`isVisible` : *boolean*
> If the prompt is visible or not
  

### Example
```lua
local group = "shop"
local key = "INPUT_JUMP"
local isVisible = false
jo.prompt.setVisible(group,key,isVisible)
```

## jo.prompt.waitRelease()
A function to wait the release of pressed key
### Syntax
```lua
jo.prompt.waitRelease(key)
```
#### Parameters
`key` : *string*
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
  
### Example
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