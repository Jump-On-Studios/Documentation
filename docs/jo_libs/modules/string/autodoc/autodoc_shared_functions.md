
## string Methods

### string:compareVersionWith()

<!-- @include: ./slots/headers.md#shared|string:compareVersionWith -->

Compare two version strings <br>

<!-- @include: ./slots/descriptions.md#shared|string:compareVersionWith -->

#### Syntax

```lua
string:compareVersionWith(version)
```

#### Parameters

`version` : _string_
> The string version to compare to
>

#### Return Value

Type : _integer_

> `-1` if the version is older, `0` if it's the same and `1` if it's more recent

<!-- @include: ./slots/examples.md#shared|string:compareVersionWith -->

<!-- @include: ./slots/footers.md#shared|string:compareVersionWith -->

---

### string:convertVersion()

<!-- @include: ./slots/headers.md#shared|string:convertVersion -->

Convert a version string (like "1.2.3") to a numeric value <br>

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

### string:extractConvarComparator()

<!-- @include: ./slots/headers.md#shared|string:extractConvarComparator -->

Extract resource, convar, comparator and value from a "resourceName[:convar](< > <= >= ==)value" string <br>
The ":convar" part is optional (eg. "rsg-core>=2.0.0") <br>

<!-- @include: ./slots/descriptions.md#shared|string:extractConvarComparator -->

#### Syntax

```lua
string:extractConvarComparator()
```

#### Return Value

Type : _string?_


<!-- @include: ./slots/examples.md#shared|string:extractConvarComparator -->

<!-- @include: ./slots/footers.md#shared|string:extractConvarComparator -->

---

### string:firstToUpper()

<!-- @include: ./slots/headers.md#shared|string:firstToUpper -->

Return the string with the first letter in uppercase <br>

<!-- @include: ./slots/descriptions.md#shared|string:firstToUpper -->

#### Syntax

```lua
string:firstToUpper()
```

#### Return Value

Type : _string_

> Return the string with the first letter in uppercase

<!-- @include: ./slots/examples.md#shared|string:firstToUpper -->

<!-- @include: ./slots/footers.md#shared|string:firstToUpper -->

---

### string:removeAccent()

<!-- @include: ./slots/headers.md#shared|string:removeAccent -->

A function to remove all accent in a string <br>

<!-- @include: ./slots/descriptions.md#shared|string:removeAccent -->

#### Syntax

```lua
string:removeAccent()
```

#### Return Value

Type : _string_

> A string without accent

<!-- @include: ./slots/examples.md#shared|string:removeAccent -->

<!-- @include: ./slots/footers.md#shared|string:removeAccent -->

---

### string:split()

<!-- @include: ./slots/headers.md#shared|string:split -->

Split a string into parts based on a delimiter <br>

<!-- @include: ./slots/descriptions.md#shared|string:split -->

#### Syntax

```lua
string:split(delimiter, pieces)
```

#### Parameters

`delimiter` : _string_
> The character(s) to split the string on
>

`pieces` : _number_ <BadgeOptional />
> The maximum number of pieces to split into
>

#### Return Value

Type : _table_

> Array of string parts

<!-- @include: ./slots/examples.md#shared|string:split -->

<!-- @include: ./slots/footers.md#shared|string:split -->

---

### string:toHex()

<!-- @include: ./slots/headers.md#shared|string:toHex -->

Convert a hexadecimal string to a number, handling signed values <br>

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

Remove whitespace from both ends of a string <br>

<!-- @include: ./slots/descriptions.md#shared|string:trim -->

#### Syntax

```lua
string:trim()
```

#### Return Value

Type : _string_

> The trimmed string

<!-- @include: ./slots/examples.md#shared|string:trim -->

<!-- @include: ./slots/footers.md#shared|string:trim -->


## String Functions

### string.compare()

<!-- @include: ./slots/headers.md#shared|string.compare -->

A function to compare two strings <br>

<!-- @include: ./slots/descriptions.md#shared|string.compare -->

#### Syntax

```lua
string.compare(a, b, caseSensitive)
```

#### Parameters

`a` : _string_
> The 1st string
>

`b` : _string_
> The 2nd string
>

`caseSensitive` : _boolean_
> If the compare is case sensitive<br>default: `false`
>

#### Return Value

Type : _integer_

> `-1` if `a` is previous, `0` if both are same and `1` if `a` is after

<!-- @include: ./slots/examples.md#shared|string.compare -->

<!-- @include: ./slots/footers.md#shared|string.compare -->

---

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

