---
outline: [1,2]
---
# Framework Class

A powerfull library to build a script compatible with all Frameworks.  
::: info
The class is automatically initiated when you load the library under the `jo.framework` global variable.
:::
::: tip
If you have a custom framework, you can overwrite methods by added them in the overwrite-functions.lua file.  
Read more about [OWFramework](./OWFramework.md).
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

## jo.framework:addItemInInventory
Add a specific item in a custom inventory
### Syntax
```lua
jo.framework:addItemInInventory(source,id,item,quantity,metadata,needWait)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  
`id` : *string*
> The unique ID of the inventory
  
`item` : *string*
> The name of the item
  
`quantity` : *integer*
> The quantity of the item
  
`metadata` : *table*
> The metadata of the item
  
`needWait` : *boolean* <BadgeOptional />
> If the function need to wait the MySQL injected to ending  
> default: false
  

### Example
```lua
local source = 1
local id = "locker:sheriff"
local item = "mdt_report"
local quantity = 1
local metadata = {id:321}
jo.framework:addItemInInventory(source,id,item,quantity,metadata)
```

## jo.framework:canUseItem()
If the user has enough quantity of a specific item in his inventory
### Syntax
```lua
jo.framework:canUseItem(source,item,amount,meta,remove)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  
`item` : *string*
> The name of the item need to use
  
`amount` : *integer*
> The quantity of the item
  
`meta` : *table*  <BadgeOptional />
> The metadata of the item
  
`remove` : *boolean* <BadgeOptional />
> If the item has to be removed  
> default: false
  

#### Return value
Type: *boolean*
> Return `true` if the player has enough quantity of the item
  

### Example
```lua
local source = 1
local item = "water"
local amount = 1
local canUseWater = jo.framework:canUseItem(source, item, amount, nil, nil)
print(canUseWater)
```

## jo.framework:createInventory()
Function to create an inventory
### Syntax
```lua
jo.framework:createInventory(id,label,definition)
```
#### Parameters
`id` : *string*
> Unique id of the inventory
  
`label` : *string*
> Label of the inventory
  
`definition` : *table*
> `definition.maxSlots` : *integer* - Max slot of the inventory  
> `definition.maxWeight` : *float* - Max weight of the inventory  
> `definition.acceptWeapons` : *boolean* (default: false) - If the inventory accept weapons <BadgeOptional />  
> `definition.shared` : *boolean* (default: true) - If the inventory is shared between players <BadgeOptional />  
> `definition.ignoreStackLimit` : *boolean* (default: true) - If the inventory can overcoming stack limits <BadgeOptional />  
> `definition.whitelist` : *table* - Restrict the list of item can be put in the inventory <BadgeOptional />  
>> `definition.whitelist[..].item` : *string* - name of the whitelisted item  
>> `definition.whitelist[..].limit` : *string* - stack limit of this item  
>
> Configuration of the inventory  

### Example
```lua
local id = "locker:sheriff"
local label = "Sheriff's locker"
local definition = {
  maxSlots = 100,
  maxWeight = 1000.0,
  acceptWeapons = false,
  shared = true,
  whitelist = {
    { item = "mdt_report", limit = 1000 }
  }
}
jo.framework:createInventory(id,label,definition)
```

## jo.framework:canUserBuy()
A function to know if a specific user has enough money
### Syntax
```lua
jo.framework:canUserBuy(source,amount,moneyType)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  
`amount` : *float*
> The amount of money the player need to have
  
`moneyType` : *integer* <BadgeOptional />
> moneyType = 0 > dollar  
> moneyType = 1 > gold  
> moneyType = 2 > rol  
> default : 1

#### Return value
Type: *boolean*
> Return `true` if the player has more money than `amount`
  
### Example
```lua
local price = 103
local source = 1
print(jo.framework:canUserBuy(source,103))
-- Expected output : true if the player has more than $103
```

## jo.framework:get()
Get the framework name
### Syntax
```lua
jo.framework:get()
```
#### Return value
Type: *string*
> Return the name of the framework   
  
### Example
```lua
local frameworkName = jo.framework:get()
print(frameworkName)
```

## jo.framework:getItemsFromInventory()
Get the list of items included in a custom inventory
### Syntax
```lua
jo.framework:getItemsFromInventory(source,id)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  
`id` : *string*
> The unique ID of the inventory
  

#### Return value
Type: *table*
> Return the list of items  

> The item structure:  
> `item.amount` : *integer* - The amount of the item  
> `item.id` : *integer* - The id of the item  
> `item.item` : *string* - The name of the item  
> `item.metadata` : *table* - The metadata of the item  
  
### Example
```lua
local source = 1
local id = "locker:sheriff"
local items = jo.framework:getItemsFromInventory(source,id)
for key,item in pairs (items) do
  print(item.item)
end
```

## jo.framework:getJob()
Return the playe rjob
### Syntax
```lua
jo.framework:getJob(source)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  

#### Return value
Type: *string*
> Return the job name
  

### Example
```lua
local source = 1
print(jo.framework:getJob(source))
```


## jo.framework:getRPName()
Return the first & last name of tha player
### Syntax
```lua
jo.framework:getRPName(source)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  

#### Return value
Type: *string*
> Return the first & last name of a player 
  
### Example
```lua
local source = 1
print(jo.framework:getRPName(source))
```

## jo.framework:getUser()
Get the user data
### Syntax
```lua
jo.framework:getUser(source)
```
#### Parameters
`source` : *integer*
> The source ID of the player  
  

#### Return value
type: *User*
> Return a [User](./user/) class
  
### Example
```lua
local source = 1
local user = jo.framework:getUser(source)
print(user.data.firstname)
```


## jo.framework:getUserClothes()
Return the list of user's clothes with formated category names
### Syntax
```lua
jo.framework:getUserClothes(source)
```
#### Parameters
`source` : *integer*
> The source ID of the player

#### Return value
Type: *object*
> return the list of clothes
  

### Example
```lua
local source = 1
local clothes = jo.framework:getUserClothes(source)
print(json.encode(clothes))
```

## jo.framework:getUserIdentifiers()
Shortcut for [User:getIdentifiers()](./user/getIdentifiers.md) method
### Syntax
```lua
jo.framework:getUserIdentifiers(source)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  

#### Return value
Type: *table*
> Return the same value than [User:getIdentifiers()](./user/getIdentifiers.md) method
  

### Example
```lua
local source = 1
local identifiers = jo.framework:getUserIdentifiers(source)
print(identifiers.charid)
```


## jo.framework:getUserSkin()
Return the user's skin data with formated key name
### Syntax
```lua
jo.framework:getUserSkin(source)
```
#### Parameters
`source` : *integer*
> The source ID of the player

#### Return value
Type: *object*
> Return the skin data
  
### Example
```lua
local source = 1
local skin =  jo.framework:getUserSkin(source)
print(json.encode(skin))
```

## jo.framework:giveItem()
Give an item to the user
### Syntax
```lua
jo.framework:giveItem(source,item,amount,meta)
```
#### Parameters
`source` : *integer*
> The source ID of the player  

`item` : *string*
> The name of the item
  
`amount` : *integer*
> The amount of the item to give
  
`meta` : *table* <BadgeOptional />
> The metadata of the item
  

#### Return value
Type: *boolean*
> Return `true` if the item is successfully gave
  

### Example
```lua
local source = 1
local item = "water"
local amount = 1
local itemGave = jo.framework:giveItem(source,item,amount)
print(itemGave)
```

## jo.framework:is()
Test if the framework is a specific framework
### Syntax
```lua
jo.framework:is(name)
```
#### Parameters
`name` : *string*
> The name of the framework  
  
#### Return value
type: *boolean*
> Return `true` if the framework is `name`  
  
### Example
```lua
local isVORP = jo.framework:is('VORP')
print(isVORP)
```

## jo.framework:openInventory()
Open a specific inventory
### Syntax
```lua
jo.framework:openInventory(source,id)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  
`id` : *string*
> The unique ID of the inventory
  

### Example
```lua
local source = 1
local id = "locker:sheriff"
jo.framework:openInventory(source,id)
```

## jo.framework:registerUseItem()
Register an item has usable and attach a function to it
### Syntax
```lua
jo.framework:registerUseItem(item,closeAfterUsed,cb)
```
#### Parameters
`item` : *string*
> The name of the item
  
`closeAfterUsed` : *boolean* <BadgeOptional />
> If the inventory needs to be closed after using the item
> default: true
  
`cb` : *function*
> The function fired after use the item  
> 1st argument: source  
> 2nd argument: metadata of the item
  

### Example
```lua
jo.framework:registerUseItem('water',true, function(source, metadata)
  TriggerServerEvent('drinkWater',source)
  jo.framework:removeItem(source,'water',1,metadata)
end)
```

## jo.framework:removeInventory()
Remove the inventory from the **server cache**. Usefull to reload the inventory from the database
### Syntax
```lua
jo.framework:removeInventory(id)
```
#### Parameters
`id` : *string*
> Unique id of the inventory
  

### Example
```lua
local id = "locker:sheriff"
jo.framework:removeInventory(id)
```

## jo.framework:updateUserClothes()
Save new clothes.  
The function has two ways to works:
* With 2 argument to save multiples clothes
* With 3 argument to save one clothes
### Syntax
```lua
jo.framework:updateUserClothes(source,clothesArray)
-- OR --
jo.framework:updateUserClothes(source,category,clothes)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  
`clothesArray` : *object*
> The list of clothes to apply. The key is the category name and the value is the clothes data
  
`category` : *string*
> The category name of the clothes
  
`clothes` : *table*
> The clothes data
  

### Example
```lua
local source = 1
local clothes = {
  pants = {hash = 2450348132},
  boots = {hash = 3596743543}
}
jo.framework:updateUserClothes(source,clothes)
-- OR  --
local source = 1
local category = pants
local clothes = {hash = 2450348132}
jo.framework:updateUserClothes(source,category,clothes)
```


## jo.framework:updateUserSkin()
Save new skin values.
The function has two ways to works:
* With 3 arguments to save multiple skin datas
* With 4 argument to save only one skin data
### Syntax
```lua
jo.framework:updateUserSkin(source, skinData, overwrite)
-- OR --
jo.framework:updateUserSkin(source,category, data, overwrite)
```
#### Parameters
`source` : *integer*
> The source ID of the player
  
`skinData` : *object*
> The list of skin datas with category for key skin data for value
  
`category` : *string*
> The category of the skin data
  
`data` : *table*
> The skin data
  
`overwrite` : *boolean*
> If `true`, the new value overwrites the previous skin. Else, it's merged.
  

### Example
```lua
local source = 1
local skin = {
  head = 394785690,
  torso = 345823423
}
local overwrite = false
jo.framework:updateUserSkin(source,skin,overwrite)
-- OR --
local source = 1
local category = "head"
local data = 394785690
local overwrite = false
jo.framework:updateUserSkin(source,category,data,overwrite)
```

# User class
Go to the User class documentation : [link](./user/)