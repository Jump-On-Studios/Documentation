---
outline: [2,3]
---

# User class
A class to get all the user information.

::: tip
If you have a custom framework, you can overwrite methods by added them in the overwrite-functions.lua file
#### Syntax
```lua
function OWFramework.<MethodName>()
```
#### Example
```lua
--Overwrite the getUser method
function OWFramework.addMoney(source)
  return yourFramework:addMoney(source)
end
```
:::

<!--@include: ./autodoc/autodoc_framework_bridge_functions.md#group_1-->

<!--@include: ./autodoc/autodoc_framework_bridge_functions.md#group_2-->