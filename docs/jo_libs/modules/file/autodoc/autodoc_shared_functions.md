
## JO Functions

### jo.file.isExist()

<!-- @include: ./slots/headers.md#shared|jo.file.isExist -->

Checks if a file exists <br>

<!-- @include: ./slots/descriptions.md#shared|jo.file.isExist -->

#### Syntax

```lua
jo.file.isExist(...)
```

#### Parameters

`modname` : _string_
> The file location
>

#### Return Value

Type : _boolean_

> Returns `true` if the file exists, `false` otherwise

<!-- @include: ./slots/examples.md#shared|jo.file.isExist -->

<!-- @include: ./slots/footers.md#shared|jo.file.isExist -->

---

### jo.file.load()

<!-- @include: ./slots/headers.md#shared|jo.file.load -->

Loads and executes a Lua file <br>

<!-- @include: ./slots/descriptions.md#shared|jo.file.load -->

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

<!-- @include: ./slots/examples.md#shared|jo.file.load -->

<!-- @include: ./slots/footers.md#shared|jo.file.load -->

---

### jo.file.loadJson()

<!-- @include: ./slots/headers.md#shared|jo.file.loadJson -->

Loads a JSON file and returns it decoded <br>

<!-- @include: ./slots/descriptions.md#shared|jo.file.loadJson -->

#### Syntax

```lua
jo.file.loadJson(...)
```

#### Parameters

`...` : _string_
> path of the file, without the `.json` extension
>

#### Return Value

Type : _table|boolean_

> The decoded content of the file, or `false` if there was an error

<!-- @include: ./slots/examples.md#shared|jo.file.loadJson -->

<!-- @include: ./slots/footers.md#shared|jo.file.loadJson -->

---

### jo.file.read()

<!-- @include: ./slots/headers.md#shared|jo.file.read -->

Read a file and return it if it's exist or `false`. The function accept one or two arguments. <br>
One argument: the filepath <br>
Two argument: the resource AND the filepath <br>

<!-- @include: ./slots/descriptions.md#shared|jo.file.read -->

#### Syntax

```lua
jo.file.read(...)
```

#### Parameters

`...` : _string_
> path of the file
>

#### Return Value

Type : _file|boolean,resource|string,modpath|string_


<!-- @include: ./slots/examples.md#shared|jo.file.read -->

<!-- @include: ./slots/footers.md#shared|jo.file.read -->

---

### jo.file.readJson()

<!-- @include: ./slots/headers.md#shared|jo.file.readJson -->

Read a JSON file and return its content if it's exist or `false`. The function accept one or two arguments. <br>
One argument: the filepath <br>
Two argument: the resource AND the filepath <br>

<!-- @include: ./slots/descriptions.md#shared|jo.file.readJson -->

#### Syntax

```lua
jo.file.readJson(...)
```

#### Parameters

`...` : _string_
> path of the file, without the `.json` extension
>

#### Return Value

Type : _file|boolean,resource|string,modpath|string_


<!-- @include: ./slots/examples.md#shared|jo.file.readJson -->

<!-- @include: ./slots/footers.md#shared|jo.file.readJson -->

