<!-- #region group_1 -->
## Constructor

### jo.framework.UserClass:get()

<!-- @include: ./slots/headers.md#UserClass|jo.framework.UserClass:get -->

 <br>
 <br>
Creates and returns a new User instance for the specified player <br>

<!-- @include: ./slots/descriptions.md#UserClass|jo.framework.UserClass:get -->

#### Syntax

```lua
jo.framework.UserClass:get(source)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

#### Return Value

Type : _UserClass_

> Return a User class object containing player data and methods

<!-- @include: ./slots/examples.md#UserClass|jo.framework.UserClass:get -->

<!-- @include: ./slots/footers.md#UserClass|jo.framework.UserClass:get -->

<!-- #endregion group_1 -->

<!-- #region group_2 -->
## jo.framework Methods

### jo.framework:addItemInInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:addItemInInventory -->

Adds a specific item to a custom inventory with optional metadata and wait parameter <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:addItemInInventory -->

#### Syntax

```lua
jo.framework:addItemInInventory(source, invId, item, quantity, metadata, needWait)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`invId` : _string_
> The unique ID of the inventory
>

`item` : _string_
> The name of the item
>

`quantity` : _integer_
> The quantity of the item
>

`metadata` : _table_ <BadgeOptional />

> The metadata of the item
>


`needWait` : _boolean_ <BadgeOptional />
> If need to wait after the SQL insertion <br> default:`false`
>

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:addItemInInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:addItemInInventory -->

---

### jo.framework:addMoney()

<!-- @include: ./slots/headers.md#server|jo.framework:addMoney -->

Adds money to a player <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:addMoney -->

#### Syntax

```lua
jo.framework:addMoney(source, amount, moneyType)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`amount` : _number_
> The amount of money to add
>

`moneyType` : _integer_ <BadgeOptional />
> `0`: dollar, `1`: gold, `2`: rol <br> default:`0`
>

#### Return Value

Type : _boolean_

> Return `true` if the money is successfully added

<!-- @include: ./slots/examples.md#server|jo.framework:addMoney -->

<!-- @include: ./slots/footers.md#server|jo.framework:addMoney -->

---

### jo.framework:canUseItem()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:canUseItem -->

Checks if a player has the required quantity of a specific item in their inventory and optionally removes it <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:canUseItem -->

#### Syntax

```lua
jo.framework:canUseItem(source, item, amount, meta, remove)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`item` : _string_
> The name of the item need to use
>

`amount` : _integer_
> The quantity of the item
>

`meta` : _table_ <BadgeOptional />

> The metadata of the item
>


`remove` : _boolean_ <BadgeOptional />
> If the item has to be removed <br> default:`false`
>

#### Return Value

Type : _boolean_

> Return `true` if the player has enough quantity of the item

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:canUseItem -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:canUseItem -->

---

### jo.framework:canUserBuy()

<!-- @include: ./slots/headers.md#server|jo.framework:canUserBuy -->

Checks if a player has sufficient funds of a specified currency type <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:canUserBuy -->

#### Syntax

```lua
jo.framework:canUserBuy(source, amount, moneyType, removeIfCan)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`amount` : _number_
> The amount of money the player needs to have
>

`moneyType` : _integer_ <BadgeOptional />
> `0`: dollar, `1`: gold, `2`: rol <br> default:`1`
>

`removeIfCan` : _boolean_ <BadgeOptional />
> Remove the money if the player has enough <br> default:`false`
>

#### Return Value

Type : _boolean_

> Return `true` if the player has more money than the amount

<!-- @include: ./slots/examples.md#server|jo.framework:canUserBuy -->

<!-- @include: ./slots/footers.md#server|jo.framework:canUserBuy -->

---

### jo.framework:createInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:createInventory -->

Creates a custom inventory with configurable slots, weight limits, and item restrictions <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:createInventory -->

#### Syntax

```lua
jo.framework:createInventory(invName, name, invConfig)
```

#### Parameters

`invName` : _string_
> Unique id of the inventory
>

`name` : _string_
> Label of the inventory
>

`invConfig` : _table_

> Configuration of the inventory
>

> `invConfig.maxSlots` : _integer_ - Max slot of the inventory
> 
> `invConfig.maxWeight` : _float_ - Max weight of the inventory
> 
> `invConfig.acceptWeapons` : _boolean_ - Whether the inventory accepts weapons <BadgeOptional />
> 
> `invConfig.shared` : _boolean_ - If the inventory is shared between players <BadgeOptional />
> 
> `invConfig.ignoreStackLimit` : _boolean_ - If the inventory can overcoming stack limits <BadgeOptional />
> 
> `invConfig.whitelist` : _table_ - Restrict the list of items that can be put in the inventory <BadgeOptional />
> 
> `invConfig.whitelistˌ_x_ˌitem` : _string_ - Name of the whitelisted item
> 
> `invConfig.whitelistˌ_x_ˌlimit` : _integer_ - Stack limit of this item
> 

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:createInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:createInventory -->

---

### jo.framework:get()

<!-- @include: ./slots/headers.md#server|jo.framework:get -->

Returns the name of the current active framework being used <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:get -->

#### Syntax

```lua
jo.framework:get()
```

#### Return Value

Type : _string_

> Return the name of the current framework : <br> `"VORP"` or `"RedEM"` or `"RedEM2023"` or `"qbr"` or `"rsg"` or `"qr"` or `"rpx"`

<!-- @include: ./slots/examples.md#server|jo.framework:get -->

<!-- @include: ./slots/footers.md#server|jo.framework:get -->

---

### jo.framework:getFrameworkDetected()

<!-- @include: ./slots/headers.md#shared|jo.framework:getFrameworkDetected -->

<!-- @include: ./slots/descriptions.md#shared|jo.framework:getFrameworkDetected -->

#### Syntax

```lua
jo.framework:getFrameworkDetected()
```

<!-- @include: ./slots/examples.md#shared|jo.framework:getFrameworkDetected -->

<!-- @include: ./slots/footers.md#shared|jo.framework:getFrameworkDetected -->

---

### jo.framework:getItemsFromInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:getItemsFromInventory -->

Retrieves all items from a specific inventory with their quantities and metadata <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:getItemsFromInventory -->

#### Syntax

```lua
jo.framework:getItemsFromInventory(invId)
```

#### Parameters

`invId` : _string_
> The unique ID of the inventory
>

#### Return Value

Type : _table_

> Return the list of items with structure : <br> `item.amount` : *integer* - The amount of the item<br> `item.id` : *integer* - The id of the item<br>`item.item` : *string* - The name of the item<br>`item.metadata` : *table* - The metadata of the item<br>

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:getItemsFromInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:getItemsFromInventory -->

---

### jo.framework:getJob()

<!-- @include: ./slots/headers.md#server|jo.framework:getJob -->

Returns the current job assigned to a player <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:getJob -->

#### Syntax

```lua
jo.framework:getJob(source)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

#### Return Value

Type : _string_

> Return the job name of the player

<!-- @include: ./slots/examples.md#server|jo.framework:getJob -->

<!-- @include: ./slots/footers.md#server|jo.framework:getJob -->

---

### jo.framework:getRPName()

<!-- @include: ./slots/headers.md#server|jo.framework:getRPName -->

Returns the roleplay name (first and last name) of the player <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:getRPName -->

#### Syntax

```lua
jo.framework:getRPName(source)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

#### Return Value

Type : _string_

> Return the formatted first and last name of the player

<!-- @include: ./slots/examples.md#server|jo.framework:getRPName -->

<!-- @include: ./slots/footers.md#server|jo.framework:getRPName -->

---

### jo.framework:getUser()

<!-- @include: ./slots/headers.md#server|jo.framework:getUser -->

Retrieves a player's full UserClass object containing all player data and methods <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:getUser -->

#### Syntax

```lua
jo.framework:getUser(source)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

#### Return Value

Type : _UserClass_

> Return a User class object containing player data and methods

<!-- @include: ./slots/examples.md#server|jo.framework:getUser -->

<!-- @include: ./slots/footers.md#server|jo.framework:getUser -->

---

### jo.framework:getUserClothes()

<!-- @include: ./slots/headers.md#server|jo.framework:getUserClothes -->

Retrieves a player's clothing data with standardized category names <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:getUserClothes -->

#### Syntax

```lua
jo.framework:getUserClothes(source)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

#### Return Value

Type : _table_

> Return the list of clothes with standardized categories and properties

<!-- @include: ./slots/examples.md#server|jo.framework:getUserClothes -->

<!-- @include: ./slots/footers.md#server|jo.framework:getUserClothes -->

---

### jo.framework:getUserIdentifiers()

<!-- @include: ./slots/headers.md#server|jo.framework:getUserIdentifiers -->

Retrieves all identifiers associated with a player <br> Shortcut for [jo.framework.UserClass:getIdentifiers()](./user#jo.framework.UserClass-getidentifiers) method <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:getUserIdentifiers -->

#### Syntax

```lua
jo.framework:getUserIdentifiers(source)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

#### Return Value

Type : _table_

> Return the player's identifiers <br> `identifiers.identifier` - Unique identifier of the player <br> `identifiers.charid` - Unique id of the player

<!-- @include: ./slots/examples.md#server|jo.framework:getUserIdentifiers -->

<!-- @include: ./slots/footers.md#server|jo.framework:getUserIdentifiers -->

---

### jo.framework:getUserSkin()

<!-- @include: ./slots/headers.md#server|jo.framework:getUserSkin -->

Retrieves a player's skin data with standardized properties and formatting <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:getUserSkin -->

#### Syntax

```lua
jo.framework:getUserSkin(source)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

#### Return Value

Type : _table_

> Return the skin data

<!-- @include: ./slots/examples.md#server|jo.framework:getUserSkin -->

<!-- @include: ./slots/footers.md#server|jo.framework:getUserSkin -->

---

### jo.framework:giveItem()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:giveItem -->

Adds an item to a player's inventory with optional metadata <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:giveItem -->

#### Syntax

```lua
jo.framework:giveItem(source, item, quantity, meta)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`item` : _string_
> The name of the item
>

`quantity` : _integer_
> The amount of the item to give
>

`meta` : _table_ <BadgeOptional />

> The metadata of the item
>


#### Return Value

Type : _boolean_

> Return `true` if the item is successfully given

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:giveItem -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:giveItem -->

---

### jo.framework:is()

<!-- @include: ./slots/headers.md#server|jo.framework:is -->

Compares the current framework with a specified framework name <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:is -->

#### Syntax

```lua
jo.framework:is(name)
```

#### Parameters

`name` : _string_
> The name of the framework to check against <br> Supported frameworks : <br> `"VORP"` or `"RedEM"` or `"RedEM2023"` or `"qbr"` or `"rsg"` or `"qr"` or `"rpx"`
>

#### Return Value

Type : _boolean_

> Return `true` if the current framework matches the name

<!-- @include: ./slots/examples.md#server|jo.framework:is -->

<!-- @include: ./slots/footers.md#server|jo.framework:is -->

---

### jo.framework:loadFile()

<!-- @include: ./slots/headers.md#shared|jo.framework:loadFile -->

<!-- @include: ./slots/descriptions.md#shared|jo.framework:loadFile -->

#### Syntax

```lua
jo.framework:loadFile(...)
```

<!-- @include: ./slots/examples.md#shared|jo.framework:loadFile -->

<!-- @include: ./slots/footers.md#shared|jo.framework:loadFile -->

---

### jo.framework:onCharacterSelected()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:onCharacterSelected -->

Callback when a character is selected <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:onCharacterSelected -->

#### Syntax

```lua
jo.framework:onCharacterSelected(cb)
```

#### Parameters

`cb` : _function_
> The callback function triggered when the character is selected
>

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:onCharacterSelected -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:onCharacterSelected -->

---

### jo.framework:openInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:openInventory -->

Opens a specific inventory <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:openInventory -->

#### Syntax

```lua
jo.framework:openInventory(source, invName)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`invName` : _string_
> The unique ID of the inventory
>

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:openInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:openInventory -->

---

### jo.framework:registerUseItem()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:registerUseItem -->

Registers an item as usable and attaches a callback function that executes when the item is used <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:registerUseItem -->

#### Syntax

```lua
jo.framework:registerUseItem(item, closeAfterUsed, callback)
```

#### Parameters

`item` : _string_
> The name of the item
>

`closeAfterUsed` : _boolean_ <BadgeOptional />
> If the inventory needs to be closed after using the item <br> default:`true`
>

`callback` : _function_
> The function fired after use the item <br> 1st argument: source <br> 2nd argument: metadata of the item
>

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:registerUseItem -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:registerUseItem -->

---

### jo.framework:removeInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:removeInventory -->

Removes an inventory from the *server cache*, useful for reloading inventory data from the database <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:removeInventory -->

#### Syntax

```lua
jo.framework:removeInventory(invName)
```

#### Parameters

`invName` : _string_
> Unique id of the inventory
>

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:removeInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:removeInventory -->

---

### jo.framework:removeItem()

<!-- @include: ./slots/headers.md#server|jo.framework:removeItem -->

Removes an item from a player's inventory if they have enough quantity <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:removeItem -->

#### Syntax

```lua
jo.framework:removeItem(source, item, quantity, meta)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`item` : _string_
> The name of the item to remove
>

`quantity` : _integer_
> The quantity of the item to remove
>

`meta` : _table_ <BadgeOptional />

> The metadata of the item
>


#### Return Value

Type : _boolean_

> Return `true` if the item is successfully removed

<!-- @include: ./slots/examples.md#server|jo.framework:removeItem -->

<!-- @include: ./slots/footers.md#server|jo.framework:removeItem -->

---

### jo.framework:removeMoney()

<!-- @include: ./slots/headers.md#server|jo.framework:removeMoney -->

Removes money from a player's account <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:removeMoney -->

#### Syntax

```lua
jo.framework:removeMoney(source, amount, moneyType)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`amount` : _number_
> The amount of money to remove
>

`moneyType` : _integer_ <BadgeOptional />
> `0`: dollar, `1`: gold, `2`: rol <br> default:`0`
>

#### Return Value

Type : _boolean_

> Return `true` if the money is successfully removed

<!-- @include: ./slots/examples.md#server|jo.framework:removeMoney -->

<!-- @include: ./slots/footers.md#server|jo.framework:removeMoney -->

---

### jo.framework:revertClothes()

<!-- @include: ./slots/headers.md#server|jo.framework:revertClothes -->

Converts standardized clothing data back to framework-specific format <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:revertClothes -->

#### Syntax

```lua
jo.framework:revertClothes(standard)
```

#### Parameters

`standard` : _table_

> The standardized clothes data
>


#### Return Value

Type : _table_

> Return clothes data with framework-specific keys

<!-- @include: ./slots/examples.md#server|jo.framework:revertClothes -->

<!-- @include: ./slots/footers.md#server|jo.framework:revertClothes -->

---

### jo.framework:revertSkin()

<!-- @include: ./slots/headers.md#server|jo.framework:revertSkin -->

Converts standardized skin data back to framework-specific format <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:revertSkin -->

#### Syntax

```lua
jo.framework:revertSkin(standard)
```

#### Parameters

`standard` : _table_

> The standardized skin data
>


#### Return Value

Type : _table_

> Return skin data with framework-specific keys

<!-- @include: ./slots/examples.md#server|jo.framework:revertSkin -->

<!-- @include: ./slots/footers.md#server|jo.framework:revertSkin -->

---

### jo.framework:standardizeClothes()

<!-- @include: ./slots/headers.md#server|jo.framework:standardizeClothes -->

Converts framework-specific clothing data to a standardized format <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:standardizeClothes -->

#### Syntax

```lua
jo.framework:standardizeClothes(clothes)
```

#### Parameters

`clothes` : _table_

> The framework-specific clothes data
>


#### Return Value

Type : _table_

> Return clothes data with standardized keys and structure

<!-- @include: ./slots/examples.md#server|jo.framework:standardizeClothes -->

<!-- @include: ./slots/footers.md#server|jo.framework:standardizeClothes -->

---

### jo.framework:standardizeSkin()

<!-- @include: ./slots/headers.md#server|jo.framework:standardizeSkin -->

Converts framework-specific skin data to a standardized format <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:standardizeSkin -->

#### Syntax

```lua
jo.framework:standardizeSkin(skin)
```

#### Parameters

`skin` : _table_

> The framework-specific skin data
>


#### Return Value

Type : _table_

> Return skin data with standardized keys for components, overlays, and expressions

<!-- @include: ./slots/examples.md#server|jo.framework:standardizeSkin -->

<!-- @include: ./slots/footers.md#server|jo.framework:standardizeSkin -->

---

### jo.framework:updateUserClothes()

<!-- @include: ./slots/headers.md#server|jo.framework:updateUserClothes -->

Save new clothes. <br>
The function has two ways to work: <br>
- With 2 arguments to save multiple clothes <br>
- With 3 arguments to save one piece of clothing <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:updateUserClothes -->

#### Syntax

```lua
jo.framework:updateUserClothes(source, _clothes, value)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`_clothes` : _table_

> The list of clothes to apply or the category name
>


`value` : _table_ <BadgeOptional />

> The clothing data if updating a single category
>


<!-- @include: ./slots/examples.md#server|jo.framework:updateUserClothes -->

<!-- @include: ./slots/footers.md#server|jo.framework:updateUserClothes -->

---

### jo.framework:updateUserSkin()

<!-- @include: ./slots/headers.md#server|jo.framework:updateUserSkin -->

Save new skin values. <br>
The function has two ways to work: <br>
- With 3 arguments to save multiple skin data <br>
- With 4 arguments to save only one skin data <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework:updateUserSkin -->

#### Syntax

```lua
jo.framework:updateUserSkin(...)
```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`skinData` : _table_

> The list of skin data with category for key and skin data for value
>


`category` : _string_
> The category of the skin data
>

`data` : _table_

> The skin data
>


`overwrite` : _boolean_ <BadgeOptional />
> If `true`, the new value overwrites the previous skin. Else, it's merged
>

<!-- @include: ./slots/examples.md#server|jo.framework:updateUserSkin -->

<!-- @include: ./slots/footers.md#server|jo.framework:updateUserSkin -->

<!-- #endregion group_2 -->

<!-- #region group_3 -->
## jo.framework.UserClass Methods

### jo.framework.UserClass:addMoney()

<!-- @include: ./slots/headers.md#UserClass|jo.framework.UserClass:addMoney -->

Adds money to the player <br>

<!-- @include: ./slots/descriptions.md#UserClass|jo.framework.UserClass:addMoney -->

#### Syntax

```lua
jo.framework.UserClass:addMoney(amount, moneyType)
```

#### Parameters

`amount` : _number_
> The amount of money to add
>

`moneyType` : _integer_
> The type of currency: `0`: dollar, `1`: gold, `2`: rol
>

<!-- @include: ./slots/examples.md#UserClass|jo.framework.UserClass:addMoney -->

<!-- @include: ./slots/footers.md#UserClass|jo.framework.UserClass:addMoney -->

---

### jo.framework.UserClass:canBuy()

<!-- @include: ./slots/headers.md#server|jo.framework.UserClass:canBuy -->

Checks if a player has sufficient funds of a specified currency type <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework.UserClass:canBuy -->

#### Syntax

```lua
jo.framework.UserClass:canBuy(price, moneyType, removeIfCan)
```

#### Parameters

`price` : _number_
> The amount of money the player needs to have
>

`moneyType` : _integer_ <BadgeOptional />
> `0`: dollar, `1`: gold, `2`: rol <br> default:`1`
>

`removeIfCan` : _boolean_ <BadgeOptional />
> Remove the money if the player has enough <br> default:`false`
>

#### Return Value

Type : _boolean_

> Return `true` if the player has more money than the amount

<!-- @include: ./slots/examples.md#server|jo.framework.UserClass:canBuy -->

<!-- @include: ./slots/footers.md#server|jo.framework.UserClass:canBuy -->

---

### jo.framework.UserClass:getIdentifiers()

<!-- @include: ./slots/headers.md#UserClass|jo.framework.UserClass:getIdentifiers -->

Retrieves all identifiers associated with the player <br>

<!-- @include: ./slots/descriptions.md#UserClass|jo.framework.UserClass:getIdentifiers -->

#### Syntax

```lua
jo.framework.UserClass:getIdentifiers()
```

#### Return Value

Type : _table_

> Return the player's identifiers <br> `identifiers.identifier` - Unique identifier of the player <br> `identifiers.charid` - Unique id of the player

<!-- @include: ./slots/examples.md#UserClass|jo.framework.UserClass:getIdentifiers -->

<!-- @include: ./slots/footers.md#UserClass|jo.framework.UserClass:getIdentifiers -->

---

### jo.framework.UserClass:getJob()

<!-- @include: ./slots/headers.md#UserClass|jo.framework.UserClass:getJob -->

Returns the current job assigned to a player <br>

<!-- @include: ./slots/descriptions.md#UserClass|jo.framework.UserClass:getJob -->

#### Syntax

```lua
jo.framework.UserClass:getJob()
```

#### Return Value

Type : _string_

> Returns the job name of the player

<!-- @include: ./slots/examples.md#UserClass|jo.framework.UserClass:getJob -->

<!-- @include: ./slots/footers.md#UserClass|jo.framework.UserClass:getJob -->

---

### jo.framework.UserClass:getMoney()

<!-- @include: ./slots/headers.md#UserClass|jo.framework.UserClass:getMoney -->

Gets the amount of money a player has of the specified type <br>

<!-- @include: ./slots/descriptions.md#UserClass|jo.framework.UserClass:getMoney -->

#### Syntax

```lua
jo.framework.UserClass:getMoney(moneyType)
```

#### Parameters

`moneyType` : _integer_
> The type of currency: `0`: dollar, `1`: gold, `2`: rol
>

#### Return Value

Type : _number_

> Return the amount for this kind of money

<!-- @include: ./slots/examples.md#UserClass|jo.framework.UserClass:getMoney -->

<!-- @include: ./slots/footers.md#UserClass|jo.framework.UserClass:getMoney -->

---

### jo.framework.UserClass:getRPName()

<!-- @include: ./slots/headers.md#UserClass|jo.framework.UserClass:getRPName -->

Returns the roleplay name (first and last name) of the player <br>

<!-- @include: ./slots/descriptions.md#UserClass|jo.framework.UserClass:getRPName -->

#### Syntax

```lua
jo.framework.UserClass:getRPName()
```

#### Return Value

Type : _string_

> Returns the formatted first and last name of the player

<!-- @include: ./slots/examples.md#UserClass|jo.framework.UserClass:getRPName -->

<!-- @include: ./slots/footers.md#UserClass|jo.framework.UserClass:getRPName -->

---

### jo.framework.UserClass:giveGold()

<!-- @include: ./slots/headers.md#server|jo.framework.UserClass:giveGold -->

Adds gold to the player's account <br>

<!-- @include: ./slots/descriptions.md#server|jo.framework.UserClass:giveGold -->

#### Syntax

```lua
jo.framework.UserClass:giveGold(amount)
```

#### Parameters

`amount` : _number_
> The amount of gold to add
>

<!-- @include: ./slots/examples.md#server|jo.framework.UserClass:giveGold -->

<!-- @include: ./slots/footers.md#server|jo.framework.UserClass:giveGold -->

---

### jo.framework.UserClass:removeMoney()

<!-- @include: ./slots/headers.md#UserClass|jo.framework.UserClass:removeMoney -->

Removes money from the player <br>

<!-- @include: ./slots/descriptions.md#UserClass|jo.framework.UserClass:removeMoney -->

#### Syntax

```lua
jo.framework.UserClass:removeMoney(amount, moneyType)
```

#### Parameters

`amount` : _number_
> The amount of money to remove
>

`moneyType` : _integer_
> The type of currency: `0`: dollar, `1`: gold, `2`: rol
>

<!-- @include: ./slots/examples.md#UserClass|jo.framework.UserClass:removeMoney -->

<!-- @include: ./slots/footers.md#UserClass|jo.framework.UserClass:removeMoney -->

<!-- #endregion group_3 -->
