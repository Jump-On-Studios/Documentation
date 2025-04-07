<!-- #region group_1 -->
## Constructor

### UserClass:get()

<!-- @include: ./slots/headers.md#[UserClass](#userclass-methods)|UserClass:get -->

 <br>
 <br>

<!-- @include: ./slots/descriptions.md#[UserClass](#userclass-methods)|UserClass:get -->

#### Syntax

```lua
UserClass:get(source)
```

#### Parameters

`source` : _integer_

#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#[UserClass](#userclass-methods)|UserClass:get -->

<!-- @include: ./slots/footers.md#[UserClass](#userclass-methods)|UserClass:get -->

<!-- #endregion group_1 -->

<!-- #region group_2 -->
## UserClass Methods

### UserClass:addMoney()

<!-- @include: ./slots/headers.md#[UserClass](#userclass-methods)|UserClass:addMoney -->

<!-- @include: ./slots/descriptions.md#[UserClass](#userclass-methods)|UserClass:addMoney -->

#### Syntax

```lua
UserClass:addMoney(amount, moneyType)
```

#### Parameters

`amount` : _number_

`moneyType` : _integer_

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#[UserClass](#userclass-methods)|UserClass:addMoney -->

<!-- @include: ./slots/footers.md#[UserClass](#userclass-methods)|UserClass:addMoney -->

---

### UserClass:canBuy()

<!-- @include: ./slots/headers.md#server|UserClass:canBuy -->

 <br>
 <br>
 <br>
 <br>
 <br>
 <br>

<!-- @include: ./slots/descriptions.md#server|UserClass:canBuy -->

#### Syntax

```lua
UserClass:canBuy(price, moneyType, removeIfCan)
```

#### Parameters

`price` : _number_

`moneyType` : _integer_

`removeIfCan` : _boolean_ <BadgeOptional />

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#server|UserClass:canBuy -->

<!-- @include: ./slots/footers.md#server|UserClass:canBuy -->

---

### UserClass:getIdentifiers()

<!-- @include: ./slots/headers.md#[UserClass](#userclass-methods)|UserClass:getIdentifiers -->

<!-- @include: ./slots/descriptions.md#[UserClass](#userclass-methods)|UserClass:getIdentifiers -->

#### Syntax

```lua
UserClass:getIdentifiers()
```

#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#[UserClass](#userclass-methods)|UserClass:getIdentifiers -->

<!-- @include: ./slots/footers.md#[UserClass](#userclass-methods)|UserClass:getIdentifiers -->

---

### UserClass:getJob()

<!-- @include: ./slots/headers.md#[UserClass](#userclass-methods)|UserClass:getJob -->

<!-- @include: ./slots/descriptions.md#[UserClass](#userclass-methods)|UserClass:getJob -->

#### Syntax

```lua
UserClass:getJob()
```

#### Return Value

Type : _string_


<!-- @include: ./slots/examples.md#[UserClass](#userclass-methods)|UserClass:getJob -->

<!-- @include: ./slots/footers.md#[UserClass](#userclass-methods)|UserClass:getJob -->

---

### UserClass:getMoney()

<!-- @include: ./slots/headers.md#[UserClass](#userclass-methods)|UserClass:getMoney -->

<!-- @include: ./slots/descriptions.md#[UserClass](#userclass-methods)|UserClass:getMoney -->

#### Syntax

```lua
UserClass:getMoney(moneyType)
```

#### Parameters

`moneyType` : _integer_

#### Return Value

Type : _number_


<!-- @include: ./slots/examples.md#[UserClass](#userclass-methods)|UserClass:getMoney -->

<!-- @include: ./slots/footers.md#[UserClass](#userclass-methods)|UserClass:getMoney -->

---

### UserClass:getRPName()

<!-- @include: ./slots/headers.md#[UserClass](#userclass-methods)|UserClass:getRPName -->

<!-- @include: ./slots/descriptions.md#[UserClass](#userclass-methods)|UserClass:getRPName -->

#### Syntax

```lua
UserClass:getRPName()
```

#### Return Value

Type : _string_


<!-- @include: ./slots/examples.md#[UserClass](#userclass-methods)|UserClass:getRPName -->

<!-- @include: ./slots/footers.md#[UserClass](#userclass-methods)|UserClass:getRPName -->

---

### UserClass:giveGold()

<!-- @include: ./slots/headers.md#server|UserClass:giveGold -->

<!-- @include: ./slots/descriptions.md#server|UserClass:giveGold -->

#### Syntax

```lua
UserClass:giveGold(amount)
```

#### Parameters

`amount` : _number_

<!-- @include: ./slots/examples.md#server|UserClass:giveGold -->

<!-- @include: ./slots/footers.md#server|UserClass:giveGold -->

---

### UserClass:removeMoney()

<!-- @include: ./slots/headers.md#[UserClass](#userclass-methods)|UserClass:removeMoney -->

<!-- @include: ./slots/descriptions.md#[UserClass](#userclass-methods)|UserClass:removeMoney -->

#### Syntax

```lua
UserClass:removeMoney(amount, moneyType)
```

#### Parameters

`amount` : _number_

`moneyType` : _integer_

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#[UserClass](#userclass-methods)|UserClass:removeMoney -->

<!-- @include: ./slots/footers.md#[UserClass](#userclass-methods)|UserClass:removeMoney -->

<!-- #endregion group_2 -->

<!-- #region group_3 -->
## jo.framework Methods

### jo.framework:addItemInInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:addItemInInventory -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:addItemInInventory -->

#### Syntax

```lua
jo.framework:addItemInInventory(source, invId, item, quantity, metadata, needWait)
```

#### Parameters

`invId` : _string_

`item` : _string_

`quantity` : _integer_

`metadata` : _table_



`needWait` : _boolean_ <BadgeOptional />

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:addItemInInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:addItemInInventory -->

---

### jo.framework:addMoney()

<!-- @include: ./slots/headers.md#server|jo.framework:addMoney -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:addMoney -->

#### Syntax

```lua
jo.framework:addMoney(source, amount, moneyType)
```

#### Parameters

`source` : _integer_

`amount` : _number_

`moneyType` : _integer_ <BadgeOptional />

<!-- @include: ./slots/examples.md#server|jo.framework:addMoney -->

<!-- @include: ./slots/footers.md#server|jo.framework:addMoney -->

---

### jo.framework:canUseItem()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:canUseItem -->

 <br>
 <br>
 <br>
 <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:canUseItem -->

#### Syntax

```lua
jo.framework:canUseItem(source, item, amount, meta, remove)
```

#### Parameters

`source` : _integer_

`item` : _string_

`amount` : _integer_

`meta` : _table_



`remove` : _boolean_

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:canUseItem -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:canUseItem -->

---

### jo.framework:canUserBuy()

<!-- @include: ./slots/headers.md#server|jo.framework:canUserBuy -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:canUserBuy -->

#### Syntax

```lua
jo.framework:canUserBuy(source, amount, moneyType, removeIfCan)
```

#### Parameters

`source` : _integer_

`amount` : _number_

`moneyType` : _integer_ <BadgeOptional />

`removeIfCan` : _boolean_ <BadgeOptional />

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#server|jo.framework:canUserBuy -->

<!-- @include: ./slots/footers.md#server|jo.framework:canUserBuy -->

---

### jo.framework:convertToPercent()

<!-- @include: ./slots/headers.md#server|jo.framework:convertToPercent -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:convertToPercent -->

#### Syntax

```lua
jo.framework:convertToPercent(value)
```

<!-- @include: ./slots/examples.md#server|jo.framework:convertToPercent -->

<!-- @include: ./slots/footers.md#server|jo.framework:convertToPercent -->

---

### jo.framework:createInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:createInventory -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:createInventory -->

#### Syntax

```lua
jo.framework:createInventory(invName, name, invConfig)
```

#### Parameters

`invName` : _string_

`name` : _string_

`invConfig` : _table_



#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:createInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:createInventory -->

---

### jo.framework:createUser()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:createUser -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:createUser -->

#### Syntax

```lua
jo.framework:createUser(source, data, spawnCoordinate, isDead)
```

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:createUser -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:createUser -->

---

### jo.framework:extractComponentHashIfAlone()

<!-- @include: ./slots/headers.md#server|jo.framework:extractComponentHashIfAlone -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:extractComponentHashIfAlone -->

#### Syntax

```lua
jo.framework:extractComponentHashIfAlone(data)
```

#### Parameters

`data` : _any_

#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#server|jo.framework:extractComponentHashIfAlone -->

<!-- @include: ./slots/footers.md#server|jo.framework:extractComponentHashIfAlone -->

---

### jo.framework:get()

<!-- @include: ./slots/headers.md#server|jo.framework:get -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:get -->

#### Syntax

```lua
jo.framework:get()
```

#### Return Value

Type : _string_


<!-- @include: ./slots/examples.md#server|jo.framework:get -->

<!-- @include: ./slots/footers.md#server|jo.framework:get -->

---

### jo.framework:getItemsFromInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:getItemsFromInventory -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:getItemsFromInventory -->

#### Syntax

```lua
jo.framework:getItemsFromInventory(invId)
```

#### Parameters

`invId` : _string_

#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:getItemsFromInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:getItemsFromInventory -->

---

### jo.framework:getJob()

<!-- @include: ./slots/headers.md#server|jo.framework:getJob -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:getJob -->

#### Syntax

```lua
jo.framework:getJob(source)
```

#### Parameters

`source` : _integer_

#### Return Value

Type : _string_


<!-- @include: ./slots/examples.md#server|jo.framework:getJob -->

<!-- @include: ./slots/footers.md#server|jo.framework:getJob -->

---

### jo.framework:getRPName()

<!-- @include: ./slots/headers.md#server|jo.framework:getRPName -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:getRPName -->

#### Syntax

```lua
jo.framework:getRPName(source)
```

#### Parameters

`source` : _integer_

#### Return Value

Type : _string_


<!-- @include: ./slots/examples.md#server|jo.framework:getRPName -->

<!-- @include: ./slots/footers.md#server|jo.framework:getRPName -->

---

### jo.framework:getUser()

<!-- @include: ./slots/headers.md#server|jo.framework:getUser -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:getUser -->

#### Syntax

```lua
jo.framework:getUser(source)
```

#### Parameters

`source` : _integer_

#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#server|jo.framework:getUser -->

<!-- @include: ./slots/footers.md#server|jo.framework:getUser -->

---

### jo.framework:getUserClothes()

<!-- @include: ./slots/headers.md#server|jo.framework:getUserClothes -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:getUserClothes -->

#### Syntax

```lua
jo.framework:getUserClothes(source)
```

<!-- @include: ./slots/examples.md#server|jo.framework:getUserClothes -->

<!-- @include: ./slots/footers.md#server|jo.framework:getUserClothes -->

---

### jo.framework:getUserClothesInternal()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:getUserClothesInternal -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:getUserClothesInternal -->

#### Syntax

```lua
jo.framework:getUserClothesInternal(source)
```

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:getUserClothesInternal -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:getUserClothesInternal -->

---

### jo.framework:getUserIdentifiers()

<!-- @include: ./slots/headers.md#server|jo.framework:getUserIdentifiers -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:getUserIdentifiers -->

#### Syntax

```lua
jo.framework:getUserIdentifiers(source)
```

#### Parameters

`source` : _integer_

#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#server|jo.framework:getUserIdentifiers -->

<!-- @include: ./slots/footers.md#server|jo.framework:getUserIdentifiers -->

---

### jo.framework:getUserSkin()

<!-- @include: ./slots/headers.md#server|jo.framework:getUserSkin -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:getUserSkin -->

#### Syntax

```lua
jo.framework:getUserSkin(source)
```

<!-- @include: ./slots/examples.md#server|jo.framework:getUserSkin -->

<!-- @include: ./slots/footers.md#server|jo.framework:getUserSkin -->

---

### jo.framework:getUserSkinInternal()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:getUserSkinInternal -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:getUserSkinInternal -->

#### Syntax

```lua
jo.framework:getUserSkinInternal(source)
```

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:getUserSkinInternal -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:getUserSkinInternal -->

---

### jo.framework:giveItem()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:giveItem -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:giveItem -->

#### Syntax

```lua
jo.framework:giveItem(source, item, quantity, meta)
```

#### Parameters

`source` : _integer_

`item` : _string_

`quantity` : _integer_

`meta` : _table_



#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:giveItem -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:giveItem -->

---

### jo.framework:is()

<!-- @include: ./slots/headers.md#server|jo.framework:is -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:is -->

#### Syntax

```lua
jo.framework:is(name)
```

#### Parameters

`name` : _string_

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#server|jo.framework:is -->

<!-- @include: ./slots/footers.md#server|jo.framework:is -->

---

### jo.framework:openInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:openInventory -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:openInventory -->

#### Syntax

```lua
jo.framework:openInventory(source, invName)
```

#### Parameters

`source` : _integer_

`invName` : _string_

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:openInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:openInventory -->

---

### jo.framework:registerUseItem()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:registerUseItem -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:registerUseItem -->

#### Syntax

```lua
jo.framework:registerUseItem(item, closeAfterUsed, callback)
```

#### Parameters

`item` : _string_

`callback` : _function_

`closeAfterUsed` : _boolean_

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:registerUseItem -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:registerUseItem -->

---

### jo.framework:removeInventory()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:removeInventory -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:removeInventory -->

#### Syntax

```lua
jo.framework:removeInventory(invName)
```

#### Parameters

`invName` : _string_

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:removeInventory -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:removeInventory -->

---

### jo.framework:removeItem()

<!-- @include: ./slots/headers.md#server|jo.framework:removeItem -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:removeItem -->

#### Syntax

```lua
jo.framework:removeItem(source, item, quantity, meta)
```

#### Parameters

`source` : _integer_

`item` : _string_

`quantity` : _integer_

`meta` : _table_



#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#server|jo.framework:removeItem -->

<!-- @include: ./slots/footers.md#server|jo.framework:removeItem -->

---

### jo.framework:removeMoney()

<!-- @include: ./slots/headers.md#server|jo.framework:removeMoney -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:removeMoney -->

#### Syntax

```lua
jo.framework:removeMoney(source, amount, moneyType)
```

#### Parameters

`source` : _integer_

`amount` : _number_

`moneyType` : _integer_ <BadgeOptional />

<!-- @include: ./slots/examples.md#server|jo.framework:removeMoney -->

<!-- @include: ./slots/footers.md#server|jo.framework:removeMoney -->

---

### jo.framework:revertClothes()

<!-- @include: ./slots/headers.md#server|jo.framework:revertClothes -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:revertClothes -->

#### Syntax

```lua
jo.framework:revertClothes(standard)
```

<!-- @include: ./slots/examples.md#server|jo.framework:revertClothes -->

<!-- @include: ./slots/footers.md#server|jo.framework:revertClothes -->

---

### jo.framework:revertClothesInternal()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:revertClothesInternal -->

A function to revert a standardize clothes table <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:revertClothesInternal -->

#### Syntax

```lua
jo.framework:revertClothesInternal(standard)
```

#### Parameters

`standard` : _table_



#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:revertClothesInternal -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:revertClothesInternal -->

---

### jo.framework:revertSkin()

<!-- @include: ./slots/headers.md#server|jo.framework:revertSkin -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:revertSkin -->

#### Syntax

```lua
jo.framework:revertSkin(standard)
```

<!-- @include: ./slots/examples.md#server|jo.framework:revertSkin -->

<!-- @include: ./slots/footers.md#server|jo.framework:revertSkin -->

---

### jo.framework:revertSkinInternal()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:revertSkinInternal -->

A function to reversed the skin data <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:revertSkinInternal -->

#### Syntax

```lua
jo.framework:revertSkinInternal(standard)
```

#### Parameters

`standard` : _table_



#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:revertSkinInternal -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:revertSkinInternal -->

---

### jo.framework:standardizeClothes()

<!-- @include: ./slots/headers.md#server|jo.framework:standardizeClothes -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:standardizeClothes -->

#### Syntax

```lua
jo.framework:standardizeClothes(clothes)
```

<!-- @include: ./slots/examples.md#server|jo.framework:standardizeClothes -->

<!-- @include: ./slots/footers.md#server|jo.framework:standardizeClothes -->

---

### jo.framework:standardizeClothesInternal()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:standardizeClothesInternal -->

A function to standardize the clothes data <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:standardizeClothesInternal -->

#### Syntax

```lua
jo.framework:standardizeClothesInternal(clothes)
```

#### Parameters

`clothes` : _table_



#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:standardizeClothesInternal -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:standardizeClothesInternal -->

---

### jo.framework:standardizeSkin()

<!-- @include: ./slots/headers.md#server|jo.framework:standardizeSkin -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:standardizeSkin -->

#### Syntax

```lua
jo.framework:standardizeSkin(skin)
```

<!-- @include: ./slots/examples.md#server|jo.framework:standardizeSkin -->

<!-- @include: ./slots/footers.md#server|jo.framework:standardizeSkin -->

---

### jo.framework:standardizeSkinInternal()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:standardizeSkinInternal -->

 <br>
 <br>
 <br>
 <br>
A function to standardize the skin data <br>

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:standardizeSkinInternal -->

#### Syntax

```lua
jo.framework:standardizeSkinInternal(skin)
```

#### Parameters

`skin` : _table_



#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:standardizeSkinInternal -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:standardizeSkinInternal -->

---

### jo.framework:updateUserClothes()

<!-- @include: ./slots/headers.md#server|jo.framework:updateUserClothes -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:updateUserClothes -->

#### Syntax

```lua
jo.framework:updateUserClothes(source, _clothes, value)
```

<!-- @include: ./slots/examples.md#server|jo.framework:updateUserClothes -->

<!-- @include: ./slots/footers.md#server|jo.framework:updateUserClothes -->

---

### jo.framework:updateUserClothesInternal()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:updateUserClothesInternal -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:updateUserClothesInternal -->

#### Syntax

```lua
jo.framework:updateUserClothesInternal(source, clothes)
```

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:updateUserClothesInternal -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:updateUserClothesInternal -->

---

### jo.framework:updateUserSkin()

<!-- @include: ./slots/headers.md#server|jo.framework:updateUserSkin -->

<!-- @include: ./slots/descriptions.md#server|jo.framework:updateUserSkin -->

#### Syntax

```lua
jo.framework:updateUserSkin(...)
```

<!-- @include: ./slots/examples.md#server|jo.framework:updateUserSkin -->

<!-- @include: ./slots/footers.md#server|jo.framework:updateUserSkin -->

---

### jo.framework:updateUserSkinInternal()

<!-- @include: ./slots/headers.md#FrameworkClass|jo.framework:updateUserSkinInternal -->

<!-- @include: ./slots/descriptions.md#FrameworkClass|jo.framework:updateUserSkinInternal -->

#### Syntax

```lua
jo.framework:updateUserSkinInternal(source, skin, overwrite)
```

<!-- @include: ./slots/examples.md#FrameworkClass|jo.framework:updateUserSkinInternal -->

<!-- @include: ./slots/footers.md#FrameworkClass|jo.framework:updateUserSkinInternal -->

<!-- #endregion group_3 -->
