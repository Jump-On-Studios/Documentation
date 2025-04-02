
## JO Functions

### jo.file.isExist()

<!-- @include: ./slots/headers.md#jo.file.isExist -->

Checks if a file exists <br>

<!-- @include: ./slots/descriptions.md#jo.file.isExist -->

#### Syntax

```lua
jo.file.isExist(modname)
```

#### Parameters

`modname` : _string_
> The file location
>

#### Return Value

Type : _boolean_

> Returns `true` if the file exists, `false` otherwise

<!-- @include: ./slots/examples.md#jo.file.isExist -->

<!-- @include: ./slots/footers.md#jo.file.isExist -->

---

### jo.file.load()

<!-- @include: ./slots/headers.md#jo.file.load -->

Loads and executes a Lua file <br>

<!-- @include: ./slots/descriptions.md#jo.file.load -->

#### Syntax

```lua
jo.file.load(modname)
```

#### Parameters

`modname` : _string_
> The file location
>

#### Return Value

Type : _any_

> The result of the executed file, or `false` if there was an error

<!-- @include: ./slots/examples.md#jo.file.load -->

<!-- @include: ./slots/footers.md#jo.file.load -->

