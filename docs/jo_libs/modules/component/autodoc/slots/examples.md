<!-- #region g_client|jo.component.apply -->
#### Example
```lua
local ped = PlayerPedId()
local category = "hats"
local data = {hash = "CLOTHING_ITEM_F_HAT_241_PANTHER_VAR_001"}
jo.component.apply(ped,category,data)
```
<!-- #endregion g_client|jo.component.apply -->


<!-- #region g_client|jo.component.applyComponents -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.applyComponents -->


<!-- #region g_client|jo.component.applySkin -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.applySkin -->


<!-- #region g_client|jo.component.bootsAreUnderPant -->
#### Example
```lua
local ped = PlayerPedId()
local isUnder = jo.component.bootsAreUnderPant(ped)
print(isUnder)
```
<!-- #endregion g_client|jo.component.bootsAreUnderPant -->


<!-- #region g_client|jo.component.collarClose -->
#### Example
```lua
local ped = PlayerPedId()
local data = {hash = joaat('CLOTHING_ITEM_M_SHIRT_209_TINT_005')}
jo.component.collarClose(ped,data)
```
<!-- #endregion g_client|jo.component.collarClose -->


<!-- #region g_client|jo.component.collarIsOpened -->
#### Example
```lua
local ped = PlayerPedId()
local isOpened = jo.component.collarIsOpened(ped)
print(isOpened)
```
<!-- #endregion g_client|jo.component.collarIsOpened -->


<!-- #region g_client|jo.component.collarOpen -->
#### Example
```lua
local ped = PlayerPedId()
local data = {hash = joaat('CLOTHING_ITEM_M_SHIRT_209_TINT_005')}
jo.component.collarOpen(ped,data)
```
<!-- #endregion g_client|jo.component.collarOpen -->


<!-- #region g_client|jo.component.getBodiesLowerFromSkinTone -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.getBodiesLowerFromSkinTone -->


<!-- #region g_client|jo.component.getBodiesUpperFromSkinTone -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.getBodiesUpperFromSkinTone -->


<!-- #region g_client|jo.component.getCategoriesEquiped -->
#### Example
```lua
local ped = PlayerPedId()
local categories = jo.component.getCategoriesEquiped(ped)
print(json.encode(categories))
--Expected output: categories = { 539411565 = {index = 1, category = "shirts_full"}, 491541130 = { index = 2, category = "pants"} }
```
<!-- #endregion g_client|jo.component.getCategoriesEquiped -->


<!-- #region g_client|jo.component.getCategoryNameFromHash -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.getCategoryNameFromHash -->


<!-- #region g_client|jo.component.getCategoryTint -->
#### Example
```lua
local ped = PlayerPedId()
local category = "shirts_full"
local palette, tint0, tint1, tint2 = jo.component.getCategoryTint(ped, category)
print(palette, tint0, tint1, tint2)
```
<!-- #endregion g_client|jo.component.getCategoryTint -->


<!-- #region g_client|jo.component.getComponentCategory -->
#### Example
```lua
local ped = PlayerPedId()
local hash = joaat("CLOTHING_ITEM_F_HAT_241_PANTHER_VAR_001")
local catHash,isMp = jo.component.getComponentCategory(ped,hash)
print(catHash,isMp)
--Expected output: -1725579161, true
```
<!-- #endregion g_client|jo.component.getComponentCategory -->


<!-- #region g_client|jo.component.getComponentEquiped -->
#### Example
```lua
local ped = PlayerPedId()
local category = "hats"
local component = jo.component.getComponentEquiped(ped, category)
print(component)
```
<!-- #endregion g_client|jo.component.getComponentEquiped -->


<!-- #region g_client|jo.component.getComponentsEquiped -->
#### Example
```lua
local ped = PlayerPedId()
local components = jo.component.getComponentsEquiped(ped)
print(json.encode(components))
```
<!-- #endregion g_client|jo.component.getComponentsEquiped -->


<!-- #region g_client|jo.component.getEyesFromIndex -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.getEyesFromIndex -->


<!-- #region g_client|jo.component.getHeadFromSkinTone -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.getHeadFromSkinTone -->


<!-- #region g_client|jo.component.getPaletteNameFromHash -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.getPaletteNameFromHash -->


<!-- #region g_client|jo.component.getTeethFromIndex -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.getTeethFromIndex -->


<!-- #region g_client|jo.component.getWearableState -->
#### Example
```lua
local ped = PlayerPedId()
local category = "neckwear"
local wearableState = jo.component.getWearableState(ped, category)
print(wearableState)
```
<!-- #endregion g_client|jo.component.getWearableState -->


<!-- #region g_client|jo.component.hairIsPomade -->
#### Example
```lua
local ped = PlayerPedId()
local isPomaded = jo.component.hairIsPomade(ped)
print(isPomaded)
```
<!-- #endregion g_client|jo.component.hairIsPomade -->


<!-- #region g_client|jo.component.isCategoryEquiped -->
#### Example
```lua
local ped = PlayerPedId()
local category = "pants"
local isEquiped, index = jo.component.isCategoryEquiped(ped,category)
print(isEquiped, index)
```
<!-- #endregion g_client|jo.component.isCategoryEquiped -->


<!-- #region g_client|jo.component.isMpComponent -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.isMpComponent -->


<!-- #region g_client|jo.component.loadoutIsOnRight -->
#### Example
```lua
local ped = PlayerPedId()
local isRight = jo.component.loadoutIsOnRight(ped)
print(isRight)
```
<!-- #endregion g_client|jo.component.loadoutIsOnRight -->


<!-- #region g_client|jo.component.neckwearIsUp -->
#### Example
```lua
local ped = PlayerPedId()
local isUp = jo.component.neckwearIsUp(ped)
print(isUp)
```
<!-- #endregion g_client|jo.component.neckwearIsUp -->


<!-- #region g_client|jo.component.refreshPed -->
#### Example
```lua
local ped = PlayerPedId()
jo.component.refreshPed(ped)
```
<!-- #endregion g_client|jo.component.refreshPed -->


<!-- #region g_client|jo.component.remove -->
#### Example
```lua
local ped = PlayerPedId()
local category = "hats"
jo.component.remove(ped,category)
```
<!-- #endregion g_client|jo.component.remove -->


<!-- #region g_client|jo.component.removeAllClothes -->
#### Example
```lua
-- todo
```
<!-- #endregion g_client|jo.component.removeAllClothes -->


<!-- #region g_client|jo.component.setWearableState -->
#### Example
```lua
local ped = PlayerPedId()
local category = "neckwear"
local data = {hash = joaat("CLOTHING_ITEM_F_NECKERCHIEF_000_TINT_001")}
local state = jo.component.wearableStates.neckwear[1] --neckwear UP
jo.component.setWearableState(ped,category,data,state)
```
<!-- #endregion g_client|jo.component.setWearableState -->


<!-- #region g_client|jo.component.sleeveIsRolled -->
#### Example
```lua
local ped = PlayerPedId()
local isRolled = jo.component.sleeveIsRolled(ped)
print(isRolled)
```
<!-- #endregion g_client|jo.component.sleeveIsRolled -->


<!-- #region g_client|jo.component.sleeveRoll -->
#### Example
```lua
local ped = PlayerPedId()
local data = {hash = joaat('CLOTHING_ITEM_M_SHIRT_209_TINT_005')}
local jo.component.sleeveRoll(ped,data)
```
<!-- #endregion g_client|jo.component.sleeveRoll -->


<!-- #region g_client|jo.component.sleeveUnroll -->
#### Example
```lua
local ped = PlayerPedId()
local data = {hash = joaat('CLOTHING_ITEM_M_SHIRT_209_TINT_005')}
local jo.component.sleeveUnroll(ped,data)
```
<!-- #endregion g_client|jo.component.sleeveUnroll -->


<!-- #region g_client|jo.component.vestIsUnderPant -->
#### Example
```lua
local ped = PlayerPedId()
local isIn = jo.component.vestIsUnderPant(ped)
print(isIn)
```
<!-- #endregion g_client|jo.component.vestIsUnderPant -->

<!-- #region g_client|jo.component.waitPedLoaded -->
#### Example
```lua
local ped = PlayerPedId()
local isIn = jo.component.waitPedLoaded(ped)
```
<!-- #endregion g_client|jo.component.waitPedLoaded -->