
## JO Functions

### jo.input.loadNUI()

<!-- @include: ./slots/headers.md#client|jo.input.loadNUI -->

A function to load the NUI. <br>

<!-- @include: ./slots/descriptions.md#client|jo.input.loadNUI -->

#### Syntax

```lua
jo.input.loadNUI()
```

<!-- @include: ./slots/examples.md#client|jo.input.loadNUI -->

<!-- @include: ./slots/footers.md#client|jo.input.loadNUI -->

---

### jo.input.native()

<!-- @include: ./slots/headers.md#client|jo.input.native -->

A function to open the native input <br>

<!-- @include: ./slots/descriptions.md#client|jo.input.native -->

#### Syntax

```lua
jo.input.native(label, placeholder, maxStringLength)
```

#### Parameters

`label` : _string_
> The text above the typing field in the black square
>

`placeholder` : _string_
> An Example Text, what it should say in the typing field
>

`maxStringLength` : _integer_ <BadgeOptional />
> Maximum String length
>

#### Return Value

Type : _string_

> Return the text from the input

<!-- @include: ./slots/examples.md#client|jo.input.native -->

<!-- @include: ./slots/footers.md#client|jo.input.native -->

---

### jo.input.nui()

<!-- @include: ./slots/headers.md#client|jo.input.nui -->

A function to open the nui input <br>

<!-- @include: ./slots/descriptions.md#client|jo.input.nui -->

#### Syntax

```lua
jo.input.nui(options, cb)
```

#### Parameters

`options` : _table_

> Options of the input
>

> `options.rows` : _table_ - The list of rows content
> 

`cb` : _function_ <BadgeOptional />
> The return function. If missing, the function is syncrhonous
>

<!-- @include: ./slots/examples.md#client|jo.input.nui -->

<!-- @include: ./slots/footers.md#client|jo.input.nui -->

