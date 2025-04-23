---
outline: [2,3]
---
# Framework Class

A powerfull library to build a script compatible with all Frameworks.  
::: info
The class is automatically initiated when you load the library under the `jo.framework` global variable.
:::
::: tip
If you have a custom framework, you can overwrite methods by added them in the overwrite-functions.lua file.  
<!-- Read more about [OWFramework](./OWFramework.md). -->
#### Syntax
```lua
function OWFramework.<MethodName>()
```
#### Example
```lua
--Overwrite the getUser method
function OWFramework.getUser(source)
  return yourFramework:getUser(source)
end

```
:::
:::details List of compatible frameworks
* VORP
* RedEM:RP old
* RedEM:RP 2023 (reboot)
* QBR
* QR
* RSG
* RPX
:::


<!--@include: ./autodoc/autodoc_framework_bridge_functions.md#group_3-->



---



# UserClass Methods
Documentation for the [User](./user.md) 