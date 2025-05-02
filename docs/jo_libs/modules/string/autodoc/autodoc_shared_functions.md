
## string Methods

### string:compareVersionWith()

<!-- @include: ./slots/headers.md#shared|string:compareVersionWith -->

Compare two version [string](#string-methods)s <br>

<!-- @include: ./slots/descriptions.md#shared|string:compareVersionWith -->

#### Syntax

```lua
string:compareVersionWith(version)
```

#### Parameters

`version` : _[string](#string-methods)_
> The [string](#string-methods) version to compare to
>

#### Return Value

Type : _integer_

> `-1` if the version is older, `0` if it's the same and `1` if it's more recent

<!-- @include: ./slots/examples.md#shared|string:compareVersionWith -->

<!-- @include: ./slots/footers.md#shared|string:compareVersionWith -->

---

### string:convertVersion()

<!-- @include: ./slots/headers.md#shared|string:convertVersion -->

Convert a version [string](#string-methods) (like "1.2.3") to a numeric value <br>

<!-- @include: ./slots/descriptions.md#shared|string:convertVersion -->

#### Syntax

```lua
string:convertVersion()
```

#### Return Value

Type : _number_

> The converted numeric version

<!-- @include: ./slots/examples.md#shared|string:convertVersion -->

<!-- @include: ./slots/footers.md#shared|string:convertVersion -->

---

### string:firstToUpper()

<!-- @include: ./slots/headers.md#shared|string:firstToUpper -->

Return the [string](#string-methods) with the first letter in uppercase <br>

<!-- @include: ./slots/descriptions.md#shared|string:firstToUpper -->

#### Syntax

```lua
string:firstToUpper()
```

#### Return Value

Type : _[string](#string-methods)_

> Return the [string](#string-methods) with the first letter in uppercase

<!-- @include: ./slots/examples.md#shared|string:firstToUpper -->

<!-- @include: ./slots/footers.md#shared|string:firstToUpper -->

---

### string:split()

<!-- @include: ./slots/headers.md#shared|string:split -->

Split a [string](#string-methods) into parts based on a delimiter <br>

<!-- @include: ./slots/descriptions.md#shared|string:split -->

#### Syntax

```lua
string:split(delimiter, pieces)
```

#### Parameters

`delimiter` : _[string](#string-methods)_
> The character(s) to split the [string](#string-methods) on
>

`pieces` : _number_ <BadgeOptional />
> The maximum number of pieces to split into
>

#### Return Value

Type : _table_

> Array of [string](#string-methods) parts

<!-- @include: ./slots/examples.md#shared|string:split -->

<!-- @include: ./slots/footers.md#shared|string:split -->

---

### string:toHex()

<!-- @include: ./slots/headers.md#shared|string:toHex -->

Convert a hexadecimal [string](#string-methods) to a number, handling signed values <br>

<!-- @include: ./slots/descriptions.md#shared|string:toHex -->

#### Syntax

```lua
string:toHex()
```

#### Return Value

Type : _number_

> The converted numeric value

<!-- @include: ./slots/examples.md#shared|string:toHex -->

<!-- @include: ./slots/footers.md#shared|string:toHex -->

---

### string:trim()

<!-- @include: ./slots/headers.md#shared|string:trim -->

Remove whitespace from both ends of a [string](#string-methods) <br>

<!-- @include: ./slots/descriptions.md#shared|string:trim -->

#### Syntax

```lua
string:trim()
```

#### Return Value

Type : _[string](#string-methods)_

> The trimmed [string](#string-methods)

<!-- @include: ./slots/examples.md#shared|string:trim -->

<!-- @include: ./slots/footers.md#shared|string:trim -->


## String Functions

### string.spaceNumber()

<!-- @include: ./slots/headers.md#shared|string.spaceNumber -->

Convert a integer|number to a spaced number <br>

<!-- @include: ./slots/descriptions.md#shared|string.spaceNumber -->

#### Syntax

```lua
string.spaceNumber(number, decimal)
```

#### Parameters

`number` : _integer|number_
> The number to convert
>

`decimal` : _integer_ <BadgeOptional />
> The number of decimal <br> default: 0
>

<!-- @include: ./slots/examples.md#shared|string.spaceNumber -->

<!-- @include: ./slots/footers.md#shared|string.spaceNumber -->

