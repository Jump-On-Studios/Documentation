<!-- #region jo.component.apply -->
#### Example
```lua
local ped = PlayerPedId()
local category = "hats"
local data = {hash = "CLOTHING_ITEM_F_HAT_241_PANTHER_VAR_001"}
jo.component.apply(ped,category,data)
```
<!-- #endregion jo.component.apply -->


<!-- #region jo.component.applyComponents -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.applyComponents -->


<!-- #region jo.component.applySkin -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.applySkin -->


<!-- #region jo.component.bootsAreUnderPant -->
#### Example
```lua
local ped = PlayerPedId()
local isUnder = jo.component.bootsAreUnderPant(ped)
print(isUnder)
```
<!-- #endregion jo.component.bootsAreUnderPant -->


<!-- #region jo.component.collarClose -->
#### Example
```lua
local ped = PlayerPedId()
local data = {hash = joaat('CLOTHING_ITEM_M_SHIRT_209_TINT_005')}
jo.component.collarClose(ped,data)
```
<!-- #endregion jo.component.collarClose -->


<!-- #region jo.component.collarIsOpened -->
#### Example
```lua
local ped = PlayerPedId()
local isOpened = jo.component.collarIsOpened(ped)
print(isOpened)
```
<!-- #endregion jo.component.collarIsOpened -->


<!-- #region jo.component.collarOpen -->
#### Example
```lua
local ped = PlayerPedId()
local data = {hash = joaat('CLOTHING_ITEM_M_SHIRT_209_TINT_005')}
jo.component.collarOpen(ped,data)
```
<!-- #endregion jo.component.collarOpen -->


<!-- #region jo.component.getBodiesLowerFromSkinTone -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.getBodiesLowerFromSkinTone -->


<!-- #region jo.component.getBodiesUpperFromSkinTone -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.getBodiesUpperFromSkinTone -->


<!-- #region jo.component.getCategoriesEquiped -->
#### Example
```lua
local ped = PlayerPedId()
local categories = jo.component.getCategoriesEquiped(ped)
print(json.encode(categories))
--Expected output: categories = { 539411565 = {index = 1, category = "shirts_full"}, 491541130 = { index = 2, category = "pants"} }
```
<!-- #endregion jo.component.getCategoriesEquiped -->


<!-- #region jo.component.getCategoryNameFromHash -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.getCategoryNameFromHash -->


<!-- #region jo.component.getCategoryTint -->
#### Example
```lua
local ped = PlayerPedId()
local category = "shirts_full"
local palette, tint0, tint1, tint2 = jo.component.getCategoryTint(ped, category)
print(palette, tint0, tint1, tint2)
```
<!-- #endregion jo.component.getCategoryTint -->


<!-- #region jo.component.getComponentCategory -->
#### Example
```lua
local ped = PlayerPedId()
local hash = joaat("CLOTHING_ITEM_F_HAT_241_PANTHER_VAR_001")
local catHash,isMp = jo.component.getComponentCategory(ped,hash)
print(catHash,isMp)
--Expected output: -1725579161, true
```
<!-- #endregion jo.component.getComponentCategory -->


<!-- #region jo.component.getComponentEquiped -->
#### Example
```lua
local ped = PlayerPedId()
local category = "hats"
local component = jo.component.getComponentEquiped(ped, category)
print(component)
```
<!-- #endregion jo.component.getComponentEquiped -->


<!-- #region jo.component.getComponentsEquiped -->
#### Example
```lua
local ped = PlayerPedId()
local components = jo.component.getComponentsEquiped(ped)
print(json.encode(components))
```
<!-- #endregion jo.component.getComponentsEquiped -->


<!-- #region jo.component.getEyesFromIndex -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.getEyesFromIndex -->


<!-- #region jo.component.getHeadFromSkinTone -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.getHeadFromSkinTone -->


<!-- #region jo.component.getPaletteNameFromHash -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.getPaletteNameFromHash -->


<!-- #region jo.component.getTeethFromIndex -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.getTeethFromIndex -->


<!-- #region jo.component.getWearableState -->
#### Example
```lua
local ped = PlayerPedId()
local category = "neckwear"
local wearableState = jo.component.getWearableState(ped, category)
print(wearableState)
```
<!-- #endregion jo.component.getWearableState -->


<!-- #region jo.component.hairIsPomade -->
#### Example
```lua
local ped = PlayerPedId()
local isPomaded = jo.component.hairIsPomade(ped)
print(isPomaded)
```
<!-- #endregion jo.component.hairIsPomade -->


<!-- #region jo.component.isCategoryEquiped -->
#### Example
```lua
local ped = PlayerPedId()
local category = "pants"
local isEquiped, index = jo.component.isCategoryEquiped(ped,category)
print(isEquiped, index)
```
<!-- #endregion jo.component.isCategoryEquiped -->


<!-- #region jo.component.isMpComponent -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.isMpComponent -->


<!-- #region jo.component.loadoutIsOnRight -->
#### Example
```lua
local ped = PlayerPedId()
local isRight = jo.component.loadoutIsOnRight(ped)
print(isRight)
```
<!-- #endregion jo.component.loadoutIsOnRight -->


<!-- #region jo.component.neckwearIsUp -->
#### Example
```lua
local ped = PlayerPedId()
local isUp = jo.component.neckwearIsUp(ped)
print(isUp)
```
<!-- #endregion jo.component.neckwearIsUp -->


<!-- #region jo.component.refreshPed -->
#### Example
```lua
local ped = PlayerPedId()
jo.component.refreshPed(ped)
```
<!-- #endregion jo.component.refreshPed -->


<!-- #region jo.component.remove -->
#### Example
```lua
local ped = PlayerPedId()
local category = "hats"
jo.component.remove(ped,category)
```
<!-- #endregion jo.component.remove -->


<!-- #region jo.component.removeAllClothes -->
#### Example
```lua
-- todo
```
<!-- #endregion jo.component.removeAllClothes -->


<!-- #region jo.component.setWearableState -->
#### Example
```lua
local ped = PlayerPedId()
local category = "neckwear"
local data = {hash = joaat("CLOTHING_ITEM_F_NECKERCHIEF_000_TINT_001")}
local state = jo.component.wearableStates.neckwear[1] --neckwear UP
jo.component.setWearableState(ped,category,data,state)
```
<!-- #endregion jo.component.setWearableState -->


<!-- #region jo.component.sleeveIsRolled -->
#### Example
```lua
local ped = PlayerPedId()
local isRolled = jo.component.sleeveIsRolled(ped)
print(isRolled)
```
<!-- #endregion jo.component.sleeveIsRolled -->


<!-- #region jo.component.sleeveRoll -->
#### Example
```lua
local ped = PlayerPedId()
local data = {hash = joaat('CLOTHING_ITEM_M_SHIRT_209_TINT_005')}
local jo.component.sleeveRoll(ped,data)
```
<!-- #endregion jo.component.sleeveRoll -->


<!-- #region jo.component.sleeveUnroll -->
#### Example
```lua
local ped = PlayerPedId()
local data = {hash = joaat('CLOTHING_ITEM_M_SHIRT_209_TINT_005')}
local jo.component.sleeveUnroll(ped,data)
```
<!-- #endregion jo.component.sleeveUnroll -->


<!-- #region jo.component.vestIsUnderPant -->
#### Example
```lua
local ped = PlayerPedId()
local isIn = jo.component.vestIsUnderPant(ped)
print(isIn)
```
<!-- #endregion jo.component.vestIsUnderPant -->

