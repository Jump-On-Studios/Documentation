
## JO Functions

### jo.component.formatComponentData()

<!-- @include: ./slots/headers.md#g_shared|jo.component.formatComponentData -->

 <br>
 <br>
 <br>
 <br>
A function to format component data <br>

<!-- @include: ./slots/descriptions.md#g_shared|jo.component.formatComponentData -->

#### Syntax

```lua
jo.component.formatComponentData(_data, hashData)
```

#### Parameters

`_data` : _string|number|table_
> The component data
>

`hashData` : _boolean_
> Hash the value is true
>

#### Return Value

Type : _any_


<!-- @include: ./slots/examples.md#g_shared|jo.component.formatComponentData -->

<!-- @include: ./slots/footers.md#g_shared|jo.component.formatComponentData -->

---

### jo.component.getBodiesLowerFromSkinTone()

<!-- @include: ./slots/headers.md#g_shared|jo.component.getBodiesLowerFromSkinTone -->

A function to get the lower body component hash from bodies index and skin tone <br>

<!-- @include: ./slots/descriptions.md#g_shared|jo.component.getBodiesLowerFromSkinTone -->

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

<!-- @include: ./slots/examples.md#g_shared|jo.component.getBodiesLowerFromSkinTone -->

<!-- @include: ./slots/footers.md#g_shared|jo.component.getBodiesLowerFromSkinTone -->

---

### jo.component.getBodiesUpperFromSkinTone()

<!-- @include: ./slots/headers.md#g_shared|jo.component.getBodiesUpperFromSkinTone -->

A function to get the upper body component hash from bodies index and skin tone <br>

<!-- @include: ./slots/descriptions.md#g_shared|jo.component.getBodiesUpperFromSkinTone -->

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

<!-- @include: ./slots/examples.md#g_shared|jo.component.getBodiesUpperFromSkinTone -->

<!-- @include: ./slots/footers.md#g_shared|jo.component.getBodiesUpperFromSkinTone -->

---

### jo.component.getCategoryHash()

<!-- @include: ./slots/headers.md#g_shared|jo.component.getCategoryHash -->

A fonction to get the category hash from its string <br>

<!-- @include: ./slots/descriptions.md#g_shared|jo.component.getCategoryHash -->

#### Syntax

```lua
jo.component.getCategoryHash(category)
```

#### Parameters

`category` : _string|integer_
> The category string
>

#### Return Value

Type : _integer_

> The category hash

<!-- @include: ./slots/examples.md#g_shared|jo.component.getCategoryHash -->

<!-- @include: ./slots/footers.md#g_shared|jo.component.getCategoryHash -->

---

### jo.component.getEyesFromIndex()

<!-- @include: ./slots/headers.md#g_shared|jo.component.getEyesFromIndex -->

A function to get the eyes component hash from an index <br>

<!-- @include: ./slots/descriptions.md#g_shared|jo.component.getEyesFromIndex -->

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

<!-- @include: ./slots/examples.md#g_shared|jo.component.getEyesFromIndex -->

<!-- @include: ./slots/footers.md#g_shared|jo.component.getEyesFromIndex -->

---

### jo.component.getFullHorseComponentList()

<!-- @include: ./slots/headers.md#g_shared|jo.component.getFullHorseComponentList -->

A function to get the list of horse's components sorted by category <br>

<!-- @include: ./slots/descriptions.md#g_shared|jo.component.getFullHorseComponentList -->

#### Syntax

```lua
jo.component.getFullHorseComponentList()
```

#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#g_shared|jo.component.getFullHorseComponentList -->

<!-- @include: ./slots/footers.md#g_shared|jo.component.getFullHorseComponentList -->

---

### jo.component.getFullPedComponentList()

<!-- @include: ./slots/headers.md#g_shared|jo.component.getFullPedComponentList -->

 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
A function to get the list of clothes sorted by sex and category <br>

<!-- @include: ./slots/descriptions.md#g_shared|jo.component.getFullPedComponentList -->

#### Syntax

```lua
jo.component.getFullPedComponentList()
```

#### Return Value

Type : _table_


<!-- @include: ./slots/examples.md#g_shared|jo.component.getFullPedComponentList -->

<!-- @include: ./slots/footers.md#g_shared|jo.component.getFullPedComponentList -->

---

### jo.component.getHeadFromSkinTone()

<!-- @include: ./slots/headers.md#g_shared|jo.component.getHeadFromSkinTone -->

A function to get the head component hash from head index and skin tone <br>

<!-- @include: ./slots/descriptions.md#g_shared|jo.component.getHeadFromSkinTone -->

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

<!-- @include: ./slots/examples.md#g_shared|jo.component.getHeadFromSkinTone -->

<!-- @include: ./slots/footers.md#g_shared|jo.component.getHeadFromSkinTone -->

---

### jo.component.getTeethFromIndex()

<!-- @include: ./slots/headers.md#g_shared|jo.component.getTeethFromIndex -->

A function to get the teeth component hash from an index <br>

<!-- @include: ./slots/descriptions.md#g_shared|jo.component.getTeethFromIndex -->

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

<!-- @include: ./slots/examples.md#g_shared|jo.component.getTeethFromIndex -->

<!-- @include: ./slots/footers.md#g_shared|jo.component.getTeethFromIndex -->

