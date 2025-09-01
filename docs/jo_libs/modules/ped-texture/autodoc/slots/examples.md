<!-- #region g_client|jo.pedTexture.apply -->
#### Example
```lua
local ped = PlayerPedId()
local layername = "eyeshadow"
local data = jo.pedTexture.variations.eyeshadow[3].value
data.palette = "metaped_tint_makeup"
data.tint0 = 5
data.tint1 = 10
data.tint2 = 40
jo.pedTexture.apply(ped, layername, data)

```
<!-- #endregion g_client|jo.pedTexture.apply -->


<!-- #region g_client|jo.pedTexture.getAll -->
#### Example
```lua
local ped = PlayerPedId()
local textures = jo.pedTexture.getAll(ped)
log(textures)
-- Expected output: {heads = {eyeshdow = {...}, foundation = {...}}}

```
<!-- #endregion g_client|jo.pedTexture.getAll -->


<!-- #region g_client|jo.pedTexture.getOverlayAssetFromId -->
#### Example
```lua
local isMale = true
local layername = "eyebrow"
local id = 5
local texture = jo.pedTexture.getOverlayAssetFromId(isMale, layername, id)
print(texture)
-- Expected output: mp_u_faov_eyebrow_005

```
<!-- #endregion g_client|jo.pedTexture.getOverlayAssetFromId -->


<!-- #region g_client|jo.pedTexture.overwriteBodyPart -->
#### Example
```lua
local ped = PlayerPedId()
local category = "heads"
local overlays = {
    eyeshadow = { sheetGrid = 3, tint0 = 1, tint1 = 45, tint2 = 56 },
    foundation = { id = 0, palette = "metaped_tint_makeup", tint0 = 78 }
}
jo.pedTexture.overwriteBodyPart(ped, category, overlays)

```
<!-- #endregion g_client|jo.pedTexture.overwriteBodyPart -->


<!-- #region g_client|jo.pedTexture.refreshAll -->
#### Example
```lua
local ped = PlayerPedId()
jo.pedTexture.refreshAll(ped)

```
<!-- #endregion g_client|jo.pedTexture.refreshAll -->


<!-- #region g_client|jo.pedTexture.remove -->
#### Example
```lua
local ped = PlayerPedId()
local layername = "eyeshadow"
jo.pedTexture.remove(ped, layername)

```
<!-- #endregion g_client|jo.pedTexture.remove -->

<!-- #region g_client|jo.pedTexture.refreshNow -->
#### Example
```lua
local ped = PlayerPedId()
jo.pedTexture.refreshNow(ped)
```
<!-- #endregion g_client|jo.pedTexture.refreshNow -->