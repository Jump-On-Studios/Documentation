
## JO Functions

### jo.component.apply()

<!-- @include: ./slots/headers.md#jo.component.apply -->

A function to apply a component on the ped <br>

<!-- @include: ./slots/descriptions.md#jo.component.apply -->

#### Syntax

```lua
jo.component.apply(ped, category, data)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string|integer_
> The component category
>

`data` : _table_

> The component data
>

> `data.hash` : _integer_ - The component hash
> 
> `data.palette` : _string|integer_ - The color palette of the component <BadgeOptional />
> 
> `data.tint0` : _integer_ - The first color number <BadgeOptional />
> 
> `data.tint1` : _integer_ - The second color number <BadgeOptional />
> 
> `data.tint2` : _integer_ - The third color number <BadgeOptional />
> 
> `data.drawable` : _integer_ - The drawable value <BadgeOptional />
> 
> `data.albedo` : _integer_ - The albedo value <BadgeOptional />
> 
> `data.normal` : _integer_ - The normal value <BadgeOptional />
> 
> `data.material` : _integer_ - The material value <BadgeOptional />
> 

<!-- @include: ./slots/examples.md#jo.component.apply -->

<!-- @include: ./slots/footers.md#jo.component.apply -->

---

### jo.component.applyComponents()

<!-- @include: ./slots/headers.md#jo.component.applyComponents -->

<!-- @include: ./slots/descriptions.md#jo.component.applyComponents -->

#### Syntax

```lua
jo.component.applyComponents(ped, components)
```

<!-- @include: ./slots/examples.md#jo.component.applyComponents -->

<!-- @include: ./slots/footers.md#jo.component.applyComponents -->

---

### jo.component.applySkin()

<!-- @include: ./slots/headers.md#jo.component.applySkin -->

<!-- @include: ./slots/descriptions.md#jo.component.applySkin -->

#### Syntax

```lua
jo.component.applySkin(ped, skin)
```

<!-- @include: ./slots/examples.md#jo.component.applySkin -->

<!-- @include: ./slots/footers.md#jo.component.applySkin -->

---

### jo.component.bootsAreUnderPant()

<!-- @include: ./slots/headers.md#jo.component.bootsAreUnderPant -->

A function to know if the boots are under the pant <br>

<!-- @include: ./slots/descriptions.md#jo.component.bootsAreUnderPant -->

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

<!-- @include: ./slots/examples.md#jo.component.bootsAreUnderPant -->

<!-- @include: ./slots/footers.md#jo.component.bootsAreUnderPant -->

---

### jo.component.collarClose()

<!-- @include: ./slots/headers.md#jo.component.collarClose -->

A function to close the collar <br>

<!-- @include: ./slots/descriptions.md#jo.component.collarClose -->

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


<!-- @include: ./slots/examples.md#jo.component.collarClose -->

<!-- @include: ./slots/footers.md#jo.component.collarClose -->

---

### jo.component.collarIsOpened()

<!-- @include: ./slots/headers.md#jo.component.collarIsOpened -->

Return if the collar is opened <br>

<!-- @include: ./slots/descriptions.md#jo.component.collarIsOpened -->

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

<!-- @include: ./slots/examples.md#jo.component.collarIsOpened -->

<!-- @include: ./slots/footers.md#jo.component.collarIsOpened -->

---

### jo.component.collarOpen()

<!-- @include: ./slots/headers.md#jo.component.collarOpen -->

A function to open the collar <br>

<!-- @include: ./slots/descriptions.md#jo.component.collarOpen -->

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


<!-- @include: ./slots/examples.md#jo.component.collarOpen -->

<!-- @include: ./slots/footers.md#jo.component.collarOpen -->

---

### jo.component.getBodiesLowerFromSkinTone()

<!-- @include: ./slots/headers.md#jo.component.getBodiesLowerFromSkinTone -->

<!-- @include: ./slots/descriptions.md#jo.component.getBodiesLowerFromSkinTone -->

#### Syntax

```lua
jo.component.getBodiesLowerFromSkinTone(ped, bodiesIndex, skinTone)
```

<!-- @include: ./slots/examples.md#jo.component.getBodiesLowerFromSkinTone -->

<!-- @include: ./slots/footers.md#jo.component.getBodiesLowerFromSkinTone -->

---

### jo.component.getBodiesUpperFromSkinTone()

<!-- @include: ./slots/headers.md#jo.component.getBodiesUpperFromSkinTone -->

<!-- @include: ./slots/descriptions.md#jo.component.getBodiesUpperFromSkinTone -->

#### Syntax

```lua
jo.component.getBodiesUpperFromSkinTone(ped, bodiesIndex, skinTone)
```

<!-- @include: ./slots/examples.md#jo.component.getBodiesUpperFromSkinTone -->

<!-- @include: ./slots/footers.md#jo.component.getBodiesUpperFromSkinTone -->

---

### jo.component.getCategoriesEquiped()

<!-- @include: ./slots/headers.md#jo.component.getCategoriesEquiped -->

Return the list of component categories equiped on the ped <br>

<!-- @include: ./slots/descriptions.md#jo.component.getCategoriesEquiped -->

#### Syntax

```lua
jo.component.getCategoriesEquiped(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

#### Return Value

Type : _object_

> Return an object with the category in key and data in value <br> `categories[x].index` : integer - the index of the component on the ped <br> `categories[x].category` : string - the category name if the hash is known

<!-- @include: ./slots/examples.md#jo.component.getCategoriesEquiped -->

<!-- @include: ./slots/footers.md#jo.component.getCategoriesEquiped -->

---

### jo.component.getCategoryNameFromHash()

<!-- @include: ./slots/headers.md#jo.component.getCategoryNameFromHash -->

<!-- @include: ./slots/descriptions.md#jo.component.getCategoryNameFromHash -->

#### Syntax

```lua
jo.component.getCategoryNameFromHash(category)
```

#### Return Value

Type : _string_


<!-- @include: ./slots/examples.md#jo.component.getCategoryNameFromHash -->

<!-- @include: ./slots/footers.md#jo.component.getCategoryNameFromHash -->

---

### jo.component.getCategoryTint()

<!-- @include: ./slots/headers.md#jo.component.getCategoryTint -->

A function to get the tints of a category <br>

<!-- @include: ./slots/descriptions.md#jo.component.getCategoryTint -->

#### Syntax

```lua
jo.component.getCategoryTint(ped, category, inTable)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string_
> The category of the component
>

`inTable` : _boolean_
> When inTable is `true`, returns a table with {palette, tint0, tint1, tint2} <br> When inTable is `false`, returns four separate values: palette, tint0, tint1, tint2
>

#### Return Value

Type : _object|integer,integer,integer,integer_

> When inTable is true: returns a table with {palette, tint0, tint1, tint2} <br> When inTable is false: 1st: color palette <br> 2nd: tint number 0 <br> 3rd: tint number 1 <br> 4th: tint number 2

<!-- @include: ./slots/examples.md#jo.component.getCategoryTint -->

<!-- @include: ./slots/footers.md#jo.component.getCategoryTint -->

---

### jo.component.getComponentCategory()

<!-- @include: ./slots/headers.md#jo.component.getComponentCategory -->

Return the category hash of a component and if it's a MP component <br>

<!-- @include: ./slots/descriptions.md#jo.component.getComponentCategory -->

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

<!-- @include: ./slots/examples.md#jo.component.getComponentCategory -->

<!-- @include: ./slots/footers.md#jo.component.getComponentCategory -->

---

### jo.component.getComponentEquiped()

<!-- @include: ./slots/headers.md#jo.component.getComponentEquiped -->

<!-- @include: ./slots/descriptions.md#jo.component.getComponentEquiped -->

#### Syntax

```lua
jo.component.getComponentEquiped(ped, category)
```

<!-- @include: ./slots/examples.md#jo.component.getComponentEquiped -->

<!-- @include: ./slots/footers.md#jo.component.getComponentEquiped -->

---

### jo.component.getComponentsEquiped()

<!-- @include: ./slots/headers.md#jo.component.getComponentsEquiped -->

<!-- @include: ./slots/descriptions.md#jo.component.getComponentsEquiped -->

#### Syntax

```lua
jo.component.getComponentsEquiped(ped)
```

<!-- @include: ./slots/examples.md#jo.component.getComponentsEquiped -->

<!-- @include: ./slots/footers.md#jo.component.getComponentsEquiped -->

---

### jo.component.getEyesFromIndex()

<!-- @include: ./slots/headers.md#jo.component.getEyesFromIndex -->

<!-- @include: ./slots/descriptions.md#jo.component.getEyesFromIndex -->

#### Syntax

```lua
jo.component.getEyesFromIndex(ped, index)
```

<!-- @include: ./slots/examples.md#jo.component.getEyesFromIndex -->

<!-- @include: ./slots/footers.md#jo.component.getEyesFromIndex -->

---

### jo.component.getHeadFromSkinTone()

<!-- @include: ./slots/headers.md#jo.component.getHeadFromSkinTone -->

<!-- @include: ./slots/descriptions.md#jo.component.getHeadFromSkinTone -->

#### Syntax

```lua
jo.component.getHeadFromSkinTone(ped, headIndex, skinTone)
```

<!-- @include: ./slots/examples.md#jo.component.getHeadFromSkinTone -->

<!-- @include: ./slots/footers.md#jo.component.getHeadFromSkinTone -->

---

### jo.component.getPaletteNameFromHash()

<!-- @include: ./slots/headers.md#jo.component.getPaletteNameFromHash -->

<!-- @include: ./slots/descriptions.md#jo.component.getPaletteNameFromHash -->

#### Syntax

```lua
jo.component.getPaletteNameFromHash(hash)
```

<!-- @include: ./slots/examples.md#jo.component.getPaletteNameFromHash -->

<!-- @include: ./slots/footers.md#jo.component.getPaletteNameFromHash -->

---

### jo.component.getTeethFromIndex()

<!-- @include: ./slots/headers.md#jo.component.getTeethFromIndex -->

<!-- @include: ./slots/descriptions.md#jo.component.getTeethFromIndex -->

#### Syntax

```lua
jo.component.getTeethFromIndex(ped, index)
```

<!-- @include: ./slots/examples.md#jo.component.getTeethFromIndex -->

<!-- @include: ./slots/footers.md#jo.component.getTeethFromIndex -->

---

### jo.component.getWearableState()

<!-- @include: ./slots/headers.md#jo.component.getWearableState -->

<!-- @include: ./slots/descriptions.md#jo.component.getWearableState -->

#### Syntax

```lua
jo.component.getWearableState(ped, category)
```

<!-- @include: ./slots/examples.md#jo.component.getWearableState -->

<!-- @include: ./slots/footers.md#jo.component.getWearableState -->

---

### jo.component.hairIsPomade()

<!-- @include: ./slots/headers.md#jo.component.hairIsPomade -->

<!-- @include: ./slots/descriptions.md#jo.component.hairIsPomade -->

#### Syntax

```lua
jo.component.hairIsPomade(ped)
```

<!-- @include: ./slots/examples.md#jo.component.hairIsPomade -->

<!-- @include: ./slots/footers.md#jo.component.hairIsPomade -->

---

### jo.component.isCategoryEquiped()

<!-- @include: ./slots/headers.md#jo.component.isCategoryEquiped -->

<!-- @include: ./slots/descriptions.md#jo.component.isCategoryEquiped -->

#### Syntax

```lua
jo.component.isCategoryEquiped(ped, category)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string_

#### Return Value

Type : _boolean,integer_


<!-- @include: ./slots/examples.md#jo.component.isCategoryEquiped -->

<!-- @include: ./slots/footers.md#jo.component.isCategoryEquiped -->

---

### jo.component.isMpComponent()

<!-- @include: ./slots/headers.md#jo.component.isMpComponent -->

<!-- @include: ./slots/descriptions.md#jo.component.isMpComponent -->

#### Syntax

```lua
jo.component.isMpComponent(ped, hash)
```

<!-- @include: ./slots/examples.md#jo.component.isMpComponent -->

<!-- @include: ./slots/footers.md#jo.component.isMpComponent -->

---

### jo.component.loadoutIsOnRight()

<!-- @include: ./slots/headers.md#jo.component.loadoutIsOnRight -->

<!-- @include: ./slots/descriptions.md#jo.component.loadoutIsOnRight -->

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


<!-- @include: ./slots/examples.md#jo.component.loadoutIsOnRight -->

<!-- @include: ./slots/footers.md#jo.component.loadoutIsOnRight -->

---

### jo.component.neckwearIsUp()

<!-- @include: ./slots/headers.md#jo.component.neckwearIsUp -->

<!-- @include: ./slots/descriptions.md#jo.component.neckwearIsUp -->

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


<!-- @include: ./slots/examples.md#jo.component.neckwearIsUp -->

<!-- @include: ./slots/footers.md#jo.component.neckwearIsUp -->

---

### jo.component.refreshPed()

<!-- @include: ./slots/headers.md#jo.component.refreshPed -->

A function to refresh the ped components <br>

<!-- @include: ./slots/descriptions.md#jo.component.refreshPed -->

#### Syntax

```lua
jo.component.refreshPed(ped)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

<!-- @include: ./slots/examples.md#jo.component.refreshPed -->

<!-- @include: ./slots/footers.md#jo.component.refreshPed -->

---

### jo.component.remove()

<!-- @include: ./slots/headers.md#jo.component.remove -->

<!-- @include: ./slots/descriptions.md#jo.component.remove -->

#### Syntax

```lua
jo.component.remove(ped, category)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string_

<!-- @include: ./slots/examples.md#jo.component.remove -->

<!-- @include: ./slots/footers.md#jo.component.remove -->

---

### jo.component.removeAllClothes()

<!-- @include: ./slots/headers.md#jo.component.removeAllClothes -->

<!-- @include: ./slots/descriptions.md#jo.component.removeAllClothes -->

#### Syntax

```lua
jo.component.removeAllClothes(ped)
```

<!-- @include: ./slots/examples.md#jo.component.removeAllClothes -->

<!-- @include: ./slots/footers.md#jo.component.removeAllClothes -->

---

### jo.component.setWearableState()

<!-- @include: ./slots/headers.md#jo.component.setWearableState -->

<!-- @include: ./slots/descriptions.md#jo.component.setWearableState -->

#### Syntax

```lua
jo.component.setWearableState(ped, category, hash, state)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`category` : _string_

`hash` : _any_

`state` : _any_

<!-- @include: ./slots/examples.md#jo.component.setWearableState -->

<!-- @include: ./slots/footers.md#jo.component.setWearableState -->

---

### jo.component.sleeveIsRolled()

<!-- @include: ./slots/headers.md#jo.component.sleeveIsRolled -->

<!-- @include: ./slots/descriptions.md#jo.component.sleeveIsRolled -->

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


<!-- @include: ./slots/examples.md#jo.component.sleeveIsRolled -->

<!-- @include: ./slots/footers.md#jo.component.sleeveIsRolled -->

---

### jo.component.sleeveRoll()

<!-- @include: ./slots/headers.md#jo.component.sleeveRoll -->

<!-- @include: ./slots/descriptions.md#jo.component.sleeveRoll -->

#### Syntax

```lua
jo.component.sleeveRoll(ped, hash)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`hash` : _any_

<!-- @include: ./slots/examples.md#jo.component.sleeveRoll -->

<!-- @include: ./slots/footers.md#jo.component.sleeveRoll -->

---

### jo.component.sleeveUnroll()

<!-- @include: ./slots/headers.md#jo.component.sleeveUnroll -->

<!-- @include: ./slots/descriptions.md#jo.component.sleeveUnroll -->

#### Syntax

```lua
jo.component.sleeveUnroll(ped, hash)
```

#### Parameters

`ped` : _integer_
> The entity ID
>

`hash` : _any_

<!-- @include: ./slots/examples.md#jo.component.sleeveUnroll -->

<!-- @include: ./slots/footers.md#jo.component.sleeveUnroll -->

---

### jo.component.vestIsUnderPant()

<!-- @include: ./slots/headers.md#jo.component.vestIsUnderPant -->

<!-- @include: ./slots/descriptions.md#jo.component.vestIsUnderPant -->

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


<!-- @include: ./slots/examples.md#jo.component.vestIsUnderPant -->

<!-- @include: ./slots/footers.md#jo.component.vestIsUnderPant -->

