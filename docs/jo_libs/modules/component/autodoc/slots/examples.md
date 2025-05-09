<!-- #region g_client|jo.component.apply -->
#### Example
```lua
local ped = PlayerPedId()
local category = "hats"
local data = { hash = "CLOTHING_ITEM_F_HAT_241_PANTHER_VAR_001" }
jo.component.apply(ped, category, data)

```
<!-- #endregion g_client|jo.component.apply -->


<!-- #region g_client|jo.component.applyComponents -->
#### Example
```lua
local ped = PlayerPedId()
local clothes = {
  hats = { hash = "CLOTHING_ITEM_F_HAT_241_PANTHER_VAR_001" },
  pants = { hash = 0x1234567 }
}
jo.component.applyComponents(ped, clothes)

```
<!-- #endregion g_client|jo.component.applyComponents -->


<!-- #region g_client|jo.component.applySkin -->
#### Example
```lua
local ped = PlayerPedId()
local skin = {
  model = "mp_male",
  headIndex = 1,
  skinTone = 1,
  bodiesIndex = 1,
}
jo.component.applySkin(ped, skin)

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
local data = { hash = "CLOTHING_ITEM_M_SHIRT_209_TINT_005" }
jo.component.collarClose(ped, data)

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
local data = { hash = "CLOTHING_ITEM_M_SHIRT_209_TINT_005" }
jo.component.collarOpen(ped, data)

```
<!-- #endregion g_client|jo.component.collarOpen -->


<!-- #region g_client|jo.component.getBodiesLowerFromSkinTone -->
#### Example
```lua
local ped = PlayerPedId() -- OR "mp_male"/"mp_female"
local bodiesIndex = 1
local skinTone = 2
local hash = jo.component.getBodiesLowerFromSkinTone(ped, bodiesIndex, skinTone)
print(hash)

```
<!-- #endregion g_client|jo.component.getBodiesLowerFromSkinTone -->


<!-- #region g_client|jo.component.getBodiesUpperFromSkinTone -->
#### Example
```lua
local ped = PlayerPedId() -- OR "mp_male"/"mp_female"
local bodiesIndex = 1
local skinTone = 2
local hash = jo.component.getBodiesUpperFromSkinTone(ped, bodiesIndex, skinTone)
print(hash)

```
<!-- #endregion g_client|jo.component.getBodiesUpperFromSkinTone -->


<!-- #region g_client|jo.component.getCategoriesEquiped -->
#### Example
```lua
local ped = PlayerPedId()
local categories = jo.component.getCategoriesEquiped(ped)
print(json.encode(categories))
-- Expected output: categories = { 539411565 = {index = 1, category = "shirts_full"}, 491541130 = { index = 2, category = "pants"} }

```
<!-- #endregion g_client|jo.component.getCategoriesEquiped -->


<!-- #region g_client|jo.component.getCategoryNameFromHash -->
#### Example
```lua
local hash = 0x9925C067
local category = jo.component.getCategoryNameFromHash(hash)
print(category)
-- Expected output: `hats`

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
local hash = "CLOTHING_ITEM_F_HAT_241_PANTHER_VAR_001"
local catHash, isMp = jo.component.getComponentCategory(ped, hash)
print(catHash, isMp)
-- Expected output: -1725579161, true

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
local ped = PlayerPedId() -- OR "mp_male"/"mp_female"
local index = 1
local hash = jo.component.getEyesFromIndex(ped, index)
print(hash)

```

<!-- #endregion g_client|jo.component.getEyesFromIndex -->


<!-- #region g_client|jo.component.getHeadFromSkinTone -->
#### Example
```lua
local ped = PlayerPedId() -- OR "mp_male"/"mp_female"
local headIndex = 1
local skinTone = 3
local hash = jo.component.getHeadFromSkinTone(ped, headIndex, skinTone)
print(hash)

```
<!-- #endregion g_client|jo.component.getHeadFromSkinTone -->


<!-- #region g_client|jo.component.getPaletteNameFromHash -->
#### Example
```lua
local paletteHash = 0xAA65D8A3
local palette = jo.component.getPaletteNameFromHash(paletteHash)
print(palette)
-- Expected output: `metaped_tint_generic`

```
<!-- #endregion g_client|jo.component.getPaletteNameFromHash -->


<!-- #region g_client|jo.component.getTeethFromIndex -->
#### Example
```lua
local ped = PlayerPedId() -- OR "mp_male"/"mp_female"
local teethIndex = 3
local hash = jo.component.getTeethFromIndex(ped, index)
print(hash)

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
local isEquiped, index = jo.component.isCategoryEquiped(ped, category)
print(isEquiped, index)

```
<!-- #endregion g_client|jo.component.isCategoryEquiped -->


<!-- #region g_client|jo.component.isMpComponent -->
#### Example
```lua
local ped = PlayerPedId()
local hash = 0x123456
local isMP = jo.component.isMpComponent(ped, hash)
print(isMP)

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
jo.component.remove(ped, category)

```
<!-- #endregion g_client|jo.component.remove -->


<!-- #region g_client|jo.component.removeAllClothes -->
#### Example
```lua
local ped = PlayerPedId()
jo.component.removeAllClothes(ped)

```
<!-- #endregion g_client|jo.component.removeAllClothes -->


<!-- #region g_client|jo.component.setWearableState -->
#### Example
```lua
local ped = PlayerPedId()
local category = "neckwear"
local data = { hash = "CLOTHING_ITEM_F_NECKERCHIEF_000_TINT_001" }
local state = jo.component.wearableStates.neckwear[1] --neckwear UP
jo.component.setWearableState(ped, category, data, state)

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
local data = { hash = "CLOTHING_ITEM_M_SHIRT_209_TINT_005" }
jo.component.sleeveRoll(ped, data)

```
<!-- #endregion g_client|jo.component.sleeveRoll -->


<!-- #region g_client|jo.component.sleeveUnroll -->
#### Example
```lua
local ped = PlayerPedId()
local data = { hash = "CLOTHING_ITEM_M_SHIRT_209_TINT_005" }
jo.component.sleeveUnroll(ped, data)

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

<!-- #region g_client|jo.component.getFullHorseComponentList -->
#### Example
```lua
local horseComponents = jo.component.getFullHorseComponentList()
for category,datas in pairs (horseComponents) do
  print(category, table.count(datas))
end
```
<!-- #endregion g_client|jo.component.getFullHorseComponentList -->


<!-- #region g_client|jo.component.getFullPedComponentList -->
#### Example
```lua
local pedComponents = jo.component.getFullPedComponentList()
for category,datas in pairs (pedComponents) do
  print(category, table.count(datas))
end
```
<!-- #endregion g_client|jo.component.getFullPedComponentList -->

<!-- #region server|jo.component.getFullHorseComponentList -->
#### Example
```lua
local horseComponents = jo.component.getFullHorseComponentList()
for category,datas in pairs (horseComponents) do
  print(category, table.count(datas))
end
```
<!-- #endregion server|jo.component.getFullHorseComponentList -->


<!-- #region server|jo.component.getFullPedComponentList -->
#### Example
```lua
local pedComponents = jo.component.getFullPedComponentList()
for category,datas in pairs (pedComponents) do
  print(category, table.count(datas))
end
```
<!-- #endregion server|jo.component.getFullPedComponentList -->
