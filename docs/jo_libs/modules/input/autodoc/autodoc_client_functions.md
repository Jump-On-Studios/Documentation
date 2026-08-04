
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

Opens the NUI input panel. <br>
Rows use `{ columns = { ... } }`. A row can be placed in the `header`, `content`, or `footer` zone; only `content` scrolls. <br>
Button entries support the `success`, `danger`, `warning`, `muted`, and `flat` classes, an optional `icon` URL, and the shared `class`, `style`, and `width` properties. <br>

<!-- @include: ./slots/descriptions.md#client|jo.input.nui -->

#### Syntax

```lua
jo.input.nui(options, cb)
```

#### Parameters

`options` : _table_

> Options of the input.
>

> `options.rows` : _table_ - List of row objects. Each row contains a `columns` array.
> 
> > `options.rows.columns` : _table_ - Entries rendered in each row.
> > 
> > `options.rows.position` : _string_ - Panel zone: `header`, `content`, or `footer`. Defaults to `content`; only `content` scrolls. <BadgeOptional />
> > 
> `options.lang` : _table_ - Translation table. Only string keys prefixed with `inputNui` are sent to the NUI. <BadgeOptional />
> 

`cb` : _function_ <BadgeOptional />
> Called with the result. When omitted, the function waits synchronously and returns the result.
>

#### Return Value

Type : _table|false|nil_

> Result when called synchronously, `false` on cancellation, or `nil` when a callback is provided.

<!-- @include: ./slots/examples.md#client|jo.input.nui -->

<!-- @include: ./slots/footers.md#client|jo.input.nui -->

