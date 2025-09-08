
## JO Functions

### jo.component.apply()

<!-- @include: ./slots/headers.md#g_client|jo.component.apply -->

A function to apply a component on the ped <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.apply -->

#### Syntax

```lua
jo.component.apply(ped, category, _data)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string|integer_
> The component category
>

`_data` : _table_

> The component data
>

> `_data.hash` : _integer_ - The component hash
> 
> `_data.palette` : _string|integer_ - The color palette of the component <BadgeOptional />
> 
> `_data.tint0` : _integer_ - The first color number <BadgeOptional />
> 
> `_data.tint1` : _integer_ - The second color number <BadgeOptional />
> 
> `_data.tint2` : _integer_ - The third color number <BadgeOptional />
> 
> `_data.drawable` : _integer_ - The drawable value <BadgeOptional />
> 
> `_data.albedo` : _integer_ - The albedo value <BadgeOptional />
> 
> `_data.normal` : _integer_ - The normal value <BadgeOptional />
> 
> `_data.material` : _integer_ - The material value <BadgeOptional />
> 

<!-- @include: ./slots/examples.md#g_client|jo.component.apply -->

<!-- @include: ./slots/footers.md#g_client|jo.component.apply -->

---

### jo.component.applyComponents()

<!-- @include: ./slots/headers.md#g_client|jo.component.applyComponents -->

A function to apply multiple components to a ped <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.applyComponents -->

#### Syntax

```lua
jo.component.applyComponents(ped, components)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`components` : _table_

> Table of components indexed by category name with component data
>


<!-- @include: ./slots/examples.md#g_client|jo.component.applyComponents -->

<!-- @include: ./slots/footers.md#g_client|jo.component.applyComponents -->

---

### jo.component.applySkin()

<!-- @include: ./slots/headers.md#g_client|jo.component.applySkin -->

A function to apply a complete skin configuration to a ped <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.applySkin -->

#### Syntax

```lua
jo.component.applySkin(ped, skin)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`skin` : _table_

> The skin configuration data
>

> `skin.model` : _string_ - The model name <BadgeOptional />
> 
> `skin.headHash` : _integer_ - The head component hash <BadgeOptional />
> 
> `skin.headIndex` : _integer_ - The head index for skin tone <BadgeOptional />
> 
> `skin.skinTone` : _integer_ - The skin tone value <BadgeOptional />
> 
> `skin.bodyUpperHash` : _integer_ - The upper body component hash <BadgeOptional />
> 
> `skin.bodyLowerHash` : _integer_ - The lower body component hash <BadgeOptional />
> 
> `skin.bodiesIndex` : _integer_ - The body index for skin tone <BadgeOptional />
> 
> `skin.bodyType` : _integer_ - The body type outfit preset <BadgeOptional />
> 
> `skin.bodyWeight` : _integer_ - The body weight outfit preset <BadgeOptional />
> 
> `skin.expressions` : _table_ - Table of expression values <BadgeOptional />
> 
> `skin.eyesHash` : _integer_ - The eyes component hash <BadgeOptional />
> 
> `skin.eyesIndex` : _integer_ - The eyes index <BadgeOptional />
> 
> `skin.teethHash` : _integer_ - The teeth component hash <BadgeOptional />
> 
> `skin.teethIndex` : _integer_ - The teeth index <BadgeOptional />
> 
> `skin.hair` : _table_ - Hair component data <BadgeOptional />
> 
> `skin.beards_complete` : _table_ - Beard component data <BadgeOptional />
> 
> `skin.overlays` : _table_ - Table of overlay configurations <BadgeOptional />
> 
> `skin.bodyScale` : _number_ - The body scale value <BadgeOptional />
> 

<!-- @include: ./slots/examples.md#g_client|jo.component.applySkin -->

<!-- @include: ./slots/footers.md#g_client|jo.component.applySkin -->

---

### jo.component.bootsAreUnderPant()

<!-- @include: ./slots/headers.md#g_client|jo.component.bootsAreUnderPant -->

A function to know if the boots are under the pant <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.bootsAreUnderPant -->

#### Syntax

```lua
jo.component.bootsAreUnderPant(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _boolean_

> Return `true` if boots are under the pant, `false` otherwise.

<!-- @include: ./slots/examples.md#g_client|jo.component.bootsAreUnderPant -->

<!-- @include: ./slots/footers.md#g_client|jo.component.bootsAreUnderPant -->

---

### jo.component.collarClose()

<!-- @include: ./slots/headers.md#g_client|jo.component.collarClose -->

A function to close the collar <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.collarClose -->

#### Syntax

```lua
jo.component.collarClose(ped, data)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`data` : _table_

> The component data, see the structure in [jo.component.apply()](#jo-component-apply)
>


<!-- @include: ./slots/examples.md#g_client|jo.component.collarClose -->

<!-- @include: ./slots/footers.md#g_client|jo.component.collarClose -->

---

### jo.component.collarIsOpened()

<!-- @include: ./slots/headers.md#g_client|jo.component.collarIsOpened -->

Return if the collar is opened <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.collarIsOpened -->

#### Syntax

```lua
jo.component.collarIsOpened(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _boolean_

> Return `true` if the collar is opened, `false` otherwise.

<!-- @include: ./slots/examples.md#g_client|jo.component.collarIsOpened -->

<!-- @include: ./slots/footers.md#g_client|jo.component.collarIsOpened -->

---

### jo.component.collarOpen()

<!-- @include: ./slots/headers.md#g_client|jo.component.collarOpen -->

A function to open the collar <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.collarOpen -->

#### Syntax

```lua
jo.component.collarOpen(ped, data)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`data` : _table_

> The component data, see the structure in [jo.component.apply()](#jo-component-apply)
>


<!-- @include: ./slots/examples.md#g_client|jo.component.collarOpen -->

<!-- @include: ./slots/footers.md#g_client|jo.component.collarOpen -->

---

### jo.component.getBaseLayer()

<!-- @include: ./slots/headers.md#g_client|jo.component.getBaseLayer -->

A function to get the base layer of a component <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getBaseLayer -->

#### Syntax

```lua
jo.component.getBaseLayer(ped, hash, inTable)
```

#### Parameters

`ped` : _integer_
> The entity ID or the metaped type
>

`hash` : _string|integer_
> The component hash
>

`inTable` : _boolean_ <BadgeOptional />
> `true` to get the result as a table, `false` to get the result as separate values<br> Default: `false`
>

#### Return Value

Type : _table|integer,integer,integer,integer,integer,integer,integer,integer_

> When inTable is true: returns a table with {drawable, albedo, normal, material, palette, tint0, tint1, tint2} <br> When inTable is false: 1st: drawable <br> 2nd: albedo <br> 3rd: normal <br> 4th: material <br> 5th: palette <br> 6th: tint0 <br> 7th: tint1 <br> 8th: tint2

<!-- @include: ./slots/examples.md#g_client|jo.component.getBaseLayer -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getBaseLayer -->

---

### jo.component.getBodiesLowerFromSkinTone()

<!-- @include: ./slots/headers.md#g_client|jo.component.getBodiesLowerFromSkinTone -->

A function to get the lower body component hash from bodies index and skin tone <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getBodiesLowerFromSkinTone -->

#### Syntax

```lua
jo.component.getBodiesLowerFromSkinTone(ped, bodiesIndex, skinTone)
```

#### Parameters

`ped` : _integer|string_
> The entity ID or model name
>

`bodiesIndex` : _integer_ <BadgeOptional />
> The bodies index, defaults to 1
>

`skinTone` : _integer_ <BadgeOptional />
> The skin tone, defaults to 1
>

#### Return Value

Type : _string_

> The lower body component hash string

<!-- @include: ./slots/examples.md#g_client|jo.component.getBodiesLowerFromSkinTone -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getBodiesLowerFromSkinTone -->

---

### jo.component.getBodiesUpperFromSkinTone()

<!-- @include: ./slots/headers.md#g_client|jo.component.getBodiesUpperFromSkinTone -->

A function to get the upper body component hash from bodies index and skin tone <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getBodiesUpperFromSkinTone -->

#### Syntax

```lua
jo.component.getBodiesUpperFromSkinTone(ped, bodiesIndex, skinTone)
```

#### Parameters

`ped` : _integer|string_
> The entity ID or model name
>

`bodiesIndex` : _integer_ <BadgeOptional />
> The bodies index, defaults to 1
>

`skinTone` : _integer_ <BadgeOptional />
> The skin tone, defaults to 1
>

#### Return Value

Type : _string_

> The upper body component hash string

<!-- @include: ./slots/examples.md#g_client|jo.component.getBodiesUpperFromSkinTone -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getBodiesUpperFromSkinTone -->

---

### jo.component.getCategoriesEquiped()

<!-- @include: ./slots/headers.md#g_client|jo.component.getCategoriesEquiped -->

 <br>
 <br>
 <br>
 <br>
Return the list of component categories equiped on the ped <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getCategoriesEquiped -->

#### Syntax

```lua
jo.component.getCategoriesEquiped(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _table_

> Return an table with the category in key and data in value <br> `categories[x].index` : integer - the index of the component on the ped <br> `categories[x].category` : string - the category name if the hash is known

<!-- @include: ./slots/examples.md#g_client|jo.component.getCategoriesEquiped -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getCategoriesEquiped -->

---

### jo.component.getCategoryNameFromHash()

<!-- @include: ./slots/headers.md#g_client|jo.component.getCategoryNameFromHash -->

A function to get the category name from a hash value <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getCategoryNameFromHash -->

#### Syntax

```lua
jo.component.getCategoryNameFromHash(category)
```

#### Parameters

`category` : _integer|string_
> The category hash
>

#### Return Value

Type : _string_

> The category name, or "unknown" if not found

<!-- @include: ./slots/examples.md#g_client|jo.component.getCategoryNameFromHash -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getCategoryNameFromHash -->

---

### jo.component.getCategoryTint()

<!-- @include: ./slots/headers.md#g_client|jo.component.getCategoryTint -->

A function to get the tints of a category <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getCategoryTint -->

#### Syntax

```lua
jo.component.getCategoryTint(ped, category, inTable)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string|integer_
> The category of the component
>

`inTable` : _boolean_
> When inTable is `true`, returns a table with {palette, tint0, tint1, tint2} <br> When inTable is `false`, returns four separate values: palette, tint0, tint1, tint2
>

#### Return Value

Type : _table|integer,integer,integer,integer_

> When inTable is true: returns a table with {palette, tint0, tint1, tint2} <br> When inTable is false: 1st: color palette <br> 2nd: tint number 0 <br> 3rd: tint number 1 <br> 4th: tint number 2

<!-- @include: ./slots/examples.md#g_client|jo.component.getCategoryTint -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getCategoryTint -->

---

### jo.component.getComponentCategory()

<!-- @include: ./slots/headers.md#g_client|jo.component.getComponentCategory -->

Return the category hash of a component and if it's a MP component <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getComponentCategory -->

#### Syntax

```lua
jo.component.getComponentCategory(ped, hash)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`hash` : _integer_
> The component hash
>

#### Return Value

Type : _integer,boolean_

> 1st: Return hash value of the category <br> 2nd: Return `true` if it's a MP component, `false` otherwise

<!-- @include: ./slots/examples.md#g_client|jo.component.getComponentCategory -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getComponentCategory -->

---

### jo.component.getComponentEquiped()

<!-- @include: ./slots/headers.md#g_client|jo.component.getComponentEquiped -->

A function to get the hash of the component equiped in a category <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getComponentEquiped -->

#### Syntax

```lua
jo.component.getComponentEquiped(ped, category)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string|integer_
> The category to get the component
>

#### Return Value

Type : _table_

> Return the component datas

<!-- @include: ./slots/examples.md#g_client|jo.component.getComponentEquiped -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getComponentEquiped -->

---

### jo.component.getComponentsEquiped()

<!-- @include: ./slots/headers.md#g_client|jo.component.getComponentsEquiped -->

A function to get all components equiped <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getComponentsEquiped -->

#### Syntax

```lua
jo.component.getComponentsEquiped(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _table_

> Return the list of components equiped

<!-- @include: ./slots/examples.md#g_client|jo.component.getComponentsEquiped -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getComponentsEquiped -->

---

### jo.component.getEyesFromIndex()

<!-- @include: ./slots/headers.md#g_client|jo.component.getEyesFromIndex -->

A function to get the eyes component hash from an index <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getEyesFromIndex -->

#### Syntax

```lua
jo.component.getEyesFromIndex(ped, index)
```

#### Parameters

`ped` : _integer|string_
> The entity ID or model name
>

`index` : _integer_ <BadgeOptional />
> The eyes index, defaults to 1
>

#### Return Value

Type : _string_

> The eyes component hash string

<!-- @include: ./slots/examples.md#g_client|jo.component.getEyesFromIndex -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getEyesFromIndex -->

---

### jo.component.getHeadFromSkinTone()

<!-- @include: ./slots/headers.md#g_client|jo.component.getHeadFromSkinTone -->

A function to get the head component hash from head index and skin tone <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getHeadFromSkinTone -->

#### Syntax

```lua
jo.component.getHeadFromSkinTone(ped, headIndex, skinTone)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`headIndex` : _integer_ <BadgeOptional />
> The head index, defaults to 1
>

`skinTone` : _integer_ <BadgeOptional />
> The skin tone, defaults to 1
>

#### Return Value

Type : _string_

> The head component hash string

<!-- @include: ./slots/examples.md#g_client|jo.component.getHeadFromSkinTone -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getHeadFromSkinTone -->

---

### jo.component.getPaletteNameFromHash()

<!-- @include: ./slots/headers.md#g_client|jo.component.getPaletteNameFromHash -->

 <br>
 <br>
 <br>
 <br>
A function to get the palette name from a hash value <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getPaletteNameFromHash -->

#### Syntax

```lua
jo.component.getPaletteNameFromHash(hash)
```

#### Parameters

`hash` : _integer_
> The palette hash
>

#### Return Value

Type : _string_

> The palette name, or "unknown" if not found

<!-- @include: ./slots/examples.md#g_client|jo.component.getPaletteNameFromHash -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getPaletteNameFromHash -->

---

### jo.component.getTeethFromIndex()

<!-- @include: ./slots/headers.md#g_client|jo.component.getTeethFromIndex -->

A function to get the teeth component hash from an index <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getTeethFromIndex -->

#### Syntax

```lua
jo.component.getTeethFromIndex(ped, index)
```

#### Parameters

`ped` : _integer|string_
> The entity ID or model name
>

`index` : _integer_ <BadgeOptional />
> The teeth index, defaults to 1
>

#### Return Value

Type : _string_

> The teeth component hash string

<!-- @include: ./slots/examples.md#g_client|jo.component.getTeethFromIndex -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getTeethFromIndex -->

---

### jo.component.getWearableState()

<!-- @include: ./slots/headers.md#g_client|jo.component.getWearableState -->

Get the wearable state of a category <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getWearableState -->

#### Syntax

```lua
jo.component.getWearableState(ped, category)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string|integer_
> The category name
>

#### Return Value

Type : _integer_

> Return the wearable state hash of the category

<!-- @include: ./slots/examples.md#g_client|jo.component.getWearableState -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getWearableState -->

---

### jo.component.getWearableStateNameFromHash()

<!-- @include: ./slots/headers.md#g_client|jo.component.getWearableStateNameFromHash -->

<!-- @include: ./slots/descriptions.md#g_client|jo.component.getWearableStateNameFromHash -->

#### Syntax

```lua
jo.component.getWearableStateNameFromHash(state)
```

<!-- @include: ./slots/examples.md#g_client|jo.component.getWearableStateNameFromHash -->

<!-- @include: ./slots/footers.md#g_client|jo.component.getWearableStateNameFromHash -->

---

### jo.component.hairIsPomade()

<!-- @include: ./slots/headers.md#g_client|jo.component.hairIsPomade -->

A function to know if the hair is pomaded <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.hairIsPomade -->

#### Syntax

```lua
jo.component.hairIsPomade(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _boolean_

> Return `true` if the hair is pomaded

<!-- @include: ./slots/examples.md#g_client|jo.component.hairIsPomade -->

<!-- @include: ./slots/footers.md#g_client|jo.component.hairIsPomade -->

---

### jo.component.isCategoryAClothes()

<!-- @include: ./slots/headers.md#g_client|jo.component.isCategoryAClothes -->

 <br>
 <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.isCategoryAClothes -->

#### Syntax

```lua
jo.component.isCategoryAClothes(category)
```

<!-- @include: ./slots/examples.md#g_client|jo.component.isCategoryAClothes -->

<!-- @include: ./slots/footers.md#g_client|jo.component.isCategoryAClothes -->

---

### jo.component.isCategoryEquiped()

<!-- @include: ./slots/headers.md#g_client|jo.component.isCategoryEquiped -->

A function to know if a specific category is equiped on the ped <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.isCategoryEquiped -->

#### Syntax

```lua
jo.component.isCategoryEquiped(ped, category)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string|integer_
> The category name
>

#### Return Value

Type : _integer_

> Return the index of the category

<!-- @include: ./slots/examples.md#g_client|jo.component.isCategoryEquiped -->

<!-- @include: ./slots/footers.md#g_client|jo.component.isCategoryEquiped -->

---

### jo.component.isMpComponent()

<!-- @include: ./slots/headers.md#g_client|jo.component.isMpComponent -->

A function to check if a component is an MP component (multiplayer component) <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.isMpComponent -->

#### Syntax

```lua
jo.component.isMpComponent(ped, hash)
```

#### Parameters

`ped` : _integer_
> The entity ID OR the metapedType
>

`hash` : _integer_
> The component hash
>

#### Return Value

Type : _boolean_

> Return `true` if it's an MP component, `false` otherwise

<!-- @include: ./slots/examples.md#g_client|jo.component.isMpComponent -->

<!-- @include: ./slots/footers.md#g_client|jo.component.isMpComponent -->

---

### jo.component.loadoutIsOnRight()

<!-- @include: ./slots/headers.md#g_client|jo.component.loadoutIsOnRight -->

A function to know if the loadout is on the right <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.loadoutIsOnRight -->

#### Syntax

```lua
jo.component.loadoutIsOnRight(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _boolean_

> Return `true` if the loadout in on the right, `false` otherwise

<!-- @include: ./slots/examples.md#g_client|jo.component.loadoutIsOnRight -->

<!-- @include: ./slots/footers.md#g_client|jo.component.loadoutIsOnRight -->

---

### jo.component.neckwearIsUp()

<!-- @include: ./slots/headers.md#g_client|jo.component.neckwearIsUp -->

Return if the neckwear is on the face of the player or not <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.neckwearIsUp -->

#### Syntax

```lua
jo.component.neckwearIsUp(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _boolean_

> Return `true` if the neckwear is on the face, `false` otherwise.

<!-- @include: ./slots/examples.md#g_client|jo.component.neckwearIsUp -->

<!-- @include: ./slots/footers.md#g_client|jo.component.neckwearIsUp -->

---

### jo.component.refreshPed()

<!-- @include: ./slots/headers.md#g_client|jo.component.refreshPed -->

 <br>
 <br>
 <br>
 <br>
A function to refresh the ped components <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.refreshPed -->

#### Syntax

```lua
jo.component.refreshPed(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

<!-- @include: ./slots/examples.md#g_client|jo.component.refreshPed -->

<!-- @include: ./slots/footers.md#g_client|jo.component.refreshPed -->

---

### jo.component.remove()

<!-- @include: ./slots/headers.md#g_client|jo.component.remove -->

A function to remove a component component <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.remove -->

#### Syntax

```lua
jo.component.remove(ped, category)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _integer|string_
> The category of component to remove
>

<!-- @include: ./slots/examples.md#g_client|jo.component.remove -->

<!-- @include: ./slots/footers.md#g_client|jo.component.remove -->

---

### jo.component.removeAllClothes()

<!-- @include: ./slots/headers.md#g_client|jo.component.removeAllClothes -->

A function to remove all clothing components from a ped <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.removeAllClothes -->

#### Syntax

```lua
jo.component.removeAllClothes(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

<!-- @include: ./slots/examples.md#g_client|jo.component.removeAllClothes -->

<!-- @include: ./slots/footers.md#g_client|jo.component.removeAllClothes -->

---

### jo.component.setWearableState()

<!-- @include: ./slots/headers.md#g_client|jo.component.setWearableState -->

 <br>
 <br>
 <br>
 <br>
A function to edit the wearable state of a category <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.setWearableState -->

#### Syntax

```lua
jo.component.setWearableState(ped, category, data, state)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _integer|string_
> The category of the component
>

`data` : _table_

> The component data, see the structure in [jo.component.apply()](#jo-component-apply)
>


`state` : _integer|string_
> The wearable state to apply on the component <br>  The list of wearable state can be find in the `jo_libs>module>component>client.lua` file `line 76`
>

<!-- @include: ./slots/examples.md#g_client|jo.component.setWearableState -->

<!-- @include: ./slots/footers.md#g_client|jo.component.setWearableState -->

---

### jo.component.sleeveIsRolled()

<!-- @include: ./slots/headers.md#g_client|jo.component.sleeveIsRolled -->

Return if the sleeve are rolled <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.sleeveIsRolled -->

#### Syntax

```lua
jo.component.sleeveIsRolled(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _boolean_

> Return `true` if the sleeve are rolled, `false` otherwise.

<!-- @include: ./slots/examples.md#g_client|jo.component.sleeveIsRolled -->

<!-- @include: ./slots/footers.md#g_client|jo.component.sleeveIsRolled -->

---

### jo.component.sleeveRoll()

<!-- @include: ./slots/headers.md#g_client|jo.component.sleeveRoll -->

A function to roll sleeve <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.sleeveRoll -->

#### Syntax

```lua
jo.component.sleeveRoll(ped, data)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`data` : _table_

> The component data, see the structure in [jo.component.apply()](#jo-component-apply)
>


<!-- @include: ./slots/examples.md#g_client|jo.component.sleeveRoll -->

<!-- @include: ./slots/footers.md#g_client|jo.component.sleeveRoll -->

---

### jo.component.sleeveUnroll()

<!-- @include: ./slots/headers.md#g_client|jo.component.sleeveUnroll -->

A function to unroll sleeve <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.sleeveUnroll -->

#### Syntax

```lua
jo.component.sleeveUnroll(ped, hash)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`data` : _table_

> The component data, see the structure in [jo.component.apply()](#jo-component-apply)
>


<!-- @include: ./slots/examples.md#g_client|jo.component.sleeveUnroll -->

<!-- @include: ./slots/footers.md#g_client|jo.component.sleeveUnroll -->

---

### jo.component.vestIsUnderPant()

<!-- @include: ./slots/headers.md#g_client|jo.component.vestIsUnderPant -->

A function to know if the vest is under the pant <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.vestIsUnderPant -->

#### Syntax

```lua
jo.component.vestIsUnderPant(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _boolean_

> Return `true` if the vest is in the pant, `false` otherwise

<!-- @include: ./slots/examples.md#g_client|jo.component.vestIsUnderPant -->

<!-- @include: ./slots/footers.md#g_client|jo.component.vestIsUnderPant -->

---

### jo.component.waitPedLoaded()

<!-- @include: ./slots/headers.md#g_client|jo.component.waitPedLoaded -->

A function to wait the refresh of ped <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.component.waitPedLoaded -->

#### Syntax

```lua
jo.component.waitPedLoaded(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

<!-- @include: ./slots/examples.md#g_client|jo.component.waitPedLoaded -->

<!-- @include: ./slots/footers.md#g_client|jo.component.waitPedLoaded -->

