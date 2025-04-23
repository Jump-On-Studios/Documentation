<!-- #region FrameworkClass|jo.framework:addItemInInventory -->
#### Example
```lua
local source = 1
local id = "locker:sheriff"
local item = "mdt_report"
local quantity = 1
local metadata = { id = 321 }
jo.framework:addItemInInventory(source, id, item, quantity, metadata)

```
<!-- #endregion FrameworkClass|jo.framework:addItemInInventory -->


<!-- #region FrameworkClass|jo.framework:canUseItem -->
#### Example
```lua
local source = 1
local item = "water"
local amount = 1
local canUseWater = jo.framework:canUseItem(source, item, amount, nil, nil)
print(canUseWater)

```
<!-- #endregion FrameworkClass|jo.framework:canUseItem -->


<!-- #region FrameworkClass|jo.framework:createInventory -->
#### Example
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
jo.framework:createInventory(id, label, definition)

```
<!-- #endregion FrameworkClass|jo.framework:createInventory -->


<!-- #region FrameworkClass|jo.framework:createUser -->
#### Example
```lua
-- todo

```
<!-- #endregion FrameworkClass|jo.framework:createUser -->


<!-- #region FrameworkClass|jo.framework:getItemsFromInventory -->
#### Example
```lua
local source = 1
local id = "locker:sheriff"
local items = jo.framework:getItemsFromInventory(source, id)
for key, item in pairs(items) do
  print(item.item)
end

```
<!-- #endregion FrameworkClass|jo.framework:getItemsFromInventory -->


<!-- #region FrameworkClass|jo.framework:giveItem -->
#### Example
```lua
local source = 1
local item = "water"
local amount = 1
local itemGave = jo.framework:giveItem(source, item, amount)
print(itemGave)

```
<!-- #endregion FrameworkClass|jo.framework:giveItem -->


<!-- #region FrameworkClass|jo.framework:openInventory -->
#### Example
```lua
local source = 1
local id = "locker:sheriff"
jo.framework:openInventory(source, id)

```
<!-- #endregion FrameworkClass|jo.framework:openInventory -->


<!-- #region FrameworkClass|jo.framework:registerUseItem -->
#### Example
```lua
jo.framework:registerUseItem('water', true, function(source, metadata)
  TriggerServerEvent('drinkWater', source)
  jo.framework:removeItem(source, 'water', 1, metadata)
end)

```
<!-- #endregion FrameworkClass|jo.framework:registerUseItem -->


<!-- #region FrameworkClass|jo.framework:removeInventory -->
#### Example
```lua
local id = "locker:sheriff"
jo.framework:removeInventory(id)

```
<!-- #endregion FrameworkClass|jo.framework:removeInventory -->


<!-- #region UserClass|UserClass:addMoney -->
#### Example
```lua
local source = 1
local amount = 100.0
local moneyType = 1
local user = UserClass:get(source)
user:addMoney(amount, moneyType)

```
<!-- #endregion UserClass|UserClass:addMoney -->


<!-- #region UserClass|UserClass:get -->
#### Example
```lua
local user = UserClass:get(source)
print(user:getJob())

```
<!-- #endregion UserClass|UserClass:get -->


<!-- #region UserClass|UserClass:getIdentifiers -->
#### Example
```lua
local source = 1
local user = UserClass:get(source)
local identifiers = user:getIdentifiers()
print(identifiers.identifier)
print(identifiers.charid)

```
<!-- #endregion UserClass|UserClass:getIdentifiers -->


<!-- #region UserClass|UserClass:getJob -->
#### Example
```lua
local source = 1
local user = UserClass:get(source)
local job = user:getJob()
print(job)

```
<!-- #endregion UserClass|UserClass:getJob -->


<!-- #region UserClass|UserClass:getMoney -->
#### Example
```lua
local source = 1
local user = UserClass:get(source)
local dollar = user:getMoney(1)
local gold = user:getMoney(2)
print(dollar, gold)

```
<!-- #endregion UserClass|UserClass:getMoney -->


<!-- #region UserClass|UserClass:getRPName -->
#### Example
```lua
local source = 1
local user = UserClass:get(source)
local name = user:getRPName()
print(name)

```
<!-- #endregion UserClass|UserClass:getRPName -->


<!-- #region UserClass|UserClass:removeMoney -->
#### Example
```lua
local source = 1
local amount = 100.0
local moneyType = 1
local user = UserClass:get(source)
user:removeMoney(amount, moneyType)

```
<!-- #endregion UserClass|UserClass:removeMoney -->


<!-- #region server|UserClass:canBuy -->
#### Example
```lua
local source = 1
local price = 20.4
local moneyType = 2
local user = UserClass:get(source)
local hasEnoughGold = user:canBuy(price, moneyType)
print(hasEnoughGold)

```
<!-- #endregion server|UserClass:canBuy -->


<!-- #region server|UserClass:giveGold -->
#### Example
```lua
local source = 1
local goldAmount = 20.0
local user = UserClass:get(source)
user:giveGold(goldAmount)

```
<!-- #endregion server|UserClass:giveGold -->


<!-- #region server|jo.framework:addMoney -->
#### Example
```lua
local source = 1
local amount = 10.5
local moneyType = 0
local isAdded = jo.framework:addMoney(source,amount,moneyType)
print(isAdded)

```
<!-- #endregion server|jo.framework:addMoney -->


<!-- #region server|jo.framework:canUserBuy -->
#### Example
```lua
local price = 103
local source = 1
print(jo.framework:canUserBuy(source, 103))
-- Expected output : true if the player has more than $103

```
<!-- #endregion server|jo.framework:canUserBuy -->


<!-- #region server|jo.framework:get -->
#### Example
```lua
local frameworkName = jo.framework:get()
print(frameworkName)

```
<!-- #endregion server|jo.framework:get -->


<!-- #region server|jo.framework:getJob -->
#### Example
```lua
local source = 1
print(jo.framework:getJob(source))

```
<!-- #endregion server|jo.framework:getJob -->


<!-- #region server|jo.framework:getRPName -->
#### Example
```lua
local source = 1
print(jo.framework:getRPName(source))

```
<!-- #endregion server|jo.framework:getRPName -->


<!-- #region server|jo.framework:getUser -->
#### Example
```lua
local source = 1
local user = jo.framework:getUser(source)
print(user.data.firstname)

```
<!-- #endregion server|jo.framework:getUser -->


<!-- #region server|jo.framework:getUserClothes -->
#### Example
```lua
local source = 1
local clothes = jo.framework:getUserClothes(source)
print(json.encode(clothes))

```
<!-- #endregion server|jo.framework:getUserClothes -->


<!-- #region server|jo.framework:getUserIdentifiers -->
#### Example
```lua
local source = 1
local identifiers = jo.framework:getUserIdentifiers(source)
print(identifiers.charid)

```
<!-- #endregion server|jo.framework:getUserIdentifiers -->


<!-- #region server|jo.framework:getUserSkin -->
#### Example
```lua
local source = 1
local skin = jo.framework:getUserSkin(source)
print(json.encode(skin))

```
<!-- #endregion server|jo.framework:getUserSkin -->


<!-- #region server|jo.framework:is -->
#### Example
```lua
local isVORP = jo.framework:is('VORP')
print(isVORP)

```
<!-- #endregion server|jo.framework:is -->


<!-- #region server|jo.framework:removeItem -->
#### Example
```lua
local source = 1
local item = "water"
local quantity = 2
local meta = {}
local isRemoved = jo.framework:removeItem(source, item, quantity, meta)
print(isRemoved)

```
<!-- #endregion server|jo.framework:removeItem -->


<!-- #region server|jo.framework:removeMoney -->
#### Example
```lua
local source = 1
local amount = 10.5
local moneyType = 0
local isRemoved = jo.framework:removeMoney(source, amount, moneyType)
print(isRemoved)

```
<!-- #endregion server|jo.framework:removeMoney -->


<!-- #region server|jo.framework:revertClothes -->
#### Example
```lua
local clothes = {hats = {hash = 0x123455}}
local frameworkData = jo.framework:revertClothes(clothes)
log(frameworkData)

```
<!-- #endregion server|jo.framework:revertClothes -->


<!-- #region server|jo.framework:revertSkin -->
#### Example
```lua
local skin = {headIndex = 1, skinTone = 2}
local frameworkSkin = jo.framework:revertSkin(skin)
log(frameworkSkin)

```
<!-- #endregion server|jo.framework:revertSkin -->


<!-- #region server|jo.framework:standardizeClothes -->
#### Example
```lua
local clothes = { Hat = 0x12345}
local standard = jo.framework:standardizeClothes(clothes)
log(standard)
-- Expected output: `{hat = {hash = 0x12345}}`

```
<!-- #endregion server|jo.framework:standardizeClothes -->


<!-- #region server|jo.framework:standardizeSkin -->
#### Example
```lua
local skin = { eyes = 0x1234}
local standard = jo.framework:standardizeSkin(skin)
log(standard)
-- Expected output: `{eyesIndex: 2}`

```
<!-- #endregion server|jo.framework:standardizeSkin -->


<!-- #region server|jo.framework:updateUserClothes -->
#### Example
```lua
local source = 1
local clothes = {
  pants = { hash = 2450348132 },
  boots = { hash = 3596743543 }
}
jo.framework:updateUserClothes(source, clothes)
-- OR  --
local source = 1
local category = pants
local clothes = { hash = 2450348132 }
jo.framework:updateUserClothes(source, category, clothes)

```
<!-- #endregion server|jo.framework:updateUserClothes -->


<!-- #region server|jo.framework:updateUserSkin -->
#### Example
```lua
local source = 1
local skin = {
  head = 394785690,
  torso = 345823423
}
local overwrite = false
jo.framework:updateUserSkin(source, skin, overwrite)
-- OR --
local source = 1
local category = "head"
local data = 394785690
local overwrite = false
jo.framework:updateUserSkin(source, category, data, overwrite)

```
<!-- #endregion server|jo.framework:updateUserSkin -->

