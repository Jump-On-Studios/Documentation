
## JO Functions

### jo.pedTexture.apply()

<!-- @include: ./slots/headers.md#g_client|jo.pedTexture.apply -->

A function to apply texture on a specific ped <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.pedTexture.apply -->

#### Syntax

```lua
jo.pedTexture.apply(ped, layerName, _data)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`layerName` : _string_
> The layername of the texture
>

`_data` : _table_

> The data of the texture
>

> `_data.id` : _integer_ - The ID of the texture <br> OR
> 
> `_data.albedo` : _string_ - The albedo of the texture
> 
> `_data.sheetGrid` : _integer_ - The sheet grid of the texture <br> default: 0 <BadgeOptional />
> 
> `_data.opacity` : _number_ - The opacity of the texture <br> default: 1.0 <BadgeOptional />
> 
> `_data.blendType` : _integer_ - The blend type of the texture <br> default: 1 <BadgeOptional />
> 
> `_data.palette` : _string|integer_ - The palette of the colors <br> default: "metaped_tint_makeup" <BadgeOptional />
> 
> `_data.tint0` : _string|integer_ - The first color <BadgeOptional />
> 
> `_data.tint1` : _string|integer_ - The second color <BadgeOptional />
> 
> `_data.tint2` : _string|integer_ - The third color <BadgeOptional />
> 

<!-- @include: ./slots/examples.md#g_client|jo.pedTexture.apply -->

<!-- @include: ./slots/footers.md#g_client|jo.pedTexture.apply -->

---

### jo.pedTexture.getAll()

<!-- @include: ./slots/headers.md#g_client|jo.pedTexture.getAll -->

Return the list of layers in all categories <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.pedTexture.getAll -->

#### Syntax

```lua
jo.pedTexture.getAll(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _object_

> Return the list of layer apply on the ped

<!-- @include: ./slots/examples.md#g_client|jo.pedTexture.getAll -->

<!-- @include: ./slots/footers.md#g_client|jo.pedTexture.getAll -->

---

### jo.pedTexture.getOverlayAssetFromId()

<!-- @include: ./slots/headers.md#g_client|jo.pedTexture.getOverlayAssetFromId -->

A function to get the hashname of a texture <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.pedTexture.getOverlayAssetFromId -->

#### Syntax

```lua
jo.pedTexture.getOverlayAssetFromId(isMale, category, data)
```

#### Parameters

`isMale` : _boolean_
> `true` if the texture is for a male, `false` otherwise
>

`category` : _string_
> The layername of the texture
>

`data` : _table_

> The texture data <br> ⚠️ Can be either a `number` representing the texture ID or a `table` with detailed configuration
>

> `data.albedo` : _string_ - The albedo of the texture
> 
> `data.sexe` : _string_ - The sex of the texture, used for eyebrow category <br> default: based on isMale <BadgeOptional />
> 

#### Return Value

Type : _string_

> Return the hashname of the texture for this ID

<!-- @include: ./slots/examples.md#g_client|jo.pedTexture.getOverlayAssetFromId -->

<!-- @include: ./slots/footers.md#g_client|jo.pedTexture.getOverlayAssetFromId -->

---

### jo.pedTexture.overwriteCategory()

<!-- @include: ./slots/headers.md#g_client|jo.pedTexture.overwriteCategory -->

A function to overwrite all the layers of category <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.pedTexture.overwriteCategory -->

#### Syntax

```lua
jo.pedTexture.overwriteCategory(ped, category, overlays, forceRemove)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string_
> The category of the texture
>

`overlays` : _object_
> The list of layers
>

`forceRemove` : _boolean_ <BadgeOptional />
> Whether to force remove existing textures even if the category doesn't exist <br> default: false
>

<!-- @include: ./slots/examples.md#g_client|jo.pedTexture.overwriteCategory -->

<!-- @include: ./slots/footers.md#g_client|jo.pedTexture.overwriteCategory -->

---

### jo.pedTexture.refreshAll()

<!-- @include: ./slots/headers.md#g_client|jo.pedTexture.refreshAll -->

A function to refresh the ped texture <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.pedTexture.refreshAll -->

#### Syntax

```lua
jo.pedTexture.refreshAll(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

<!-- @include: ./slots/examples.md#g_client|jo.pedTexture.refreshAll -->

<!-- @include: ./slots/footers.md#g_client|jo.pedTexture.refreshAll -->

---

### jo.pedTexture.remove()

<!-- @include: ./slots/headers.md#g_client|jo.pedTexture.remove -->

A function to remove a texture <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.pedTexture.remove -->

#### Syntax

```lua
jo.pedTexture.remove(ped, layerName)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`layerName` : _string_
> The layer name of the texture
>

<!-- @include: ./slots/examples.md#g_client|jo.pedTexture.remove -->

<!-- @include: ./slots/footers.md#g_client|jo.pedTexture.remove -->

