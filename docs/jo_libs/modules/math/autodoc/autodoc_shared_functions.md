
## Math Functions

### math.clamp()

<!-- @include: ./slots/headers.md#shared|math.clamp -->

Clamps a number between a minimum and maximum value. <br>

<!-- @include: ./slots/descriptions.md#shared|math.clamp -->

#### Syntax

```lua
math.clamp(x, min, max)
```

#### Parameters

`x` : _number_
> The number to clamp
>

`min` : _number_
> The minimum value
>

`max` : _number_
> The maximum value
>

#### Return Value

Type : _number_

> The clamped number

<!-- @include: ./slots/examples.md#shared|math.clamp -->

<!-- @include: ./slots/footers.md#shared|math.clamp -->

---

### math.fromHex()

<!-- @include: ./slots/headers.md#shared|math.fromHex -->

Converts a hexadecimal string to an integer. <br>

<!-- @include: ./slots/descriptions.md#shared|math.fromHex -->

#### Syntax

```lua
math.fromHex(hex)
```

#### Parameters

`hex` : _string_
> The hexadecimal string to convert, with or without "0x" prefix
>

#### Return Value

Type : _integer_

> The integer representation

<!-- @include: ./slots/examples.md#shared|math.fromHex -->

<!-- @include: ./slots/footers.md#shared|math.fromHex -->

---

### math.lerp()

<!-- @include: ./slots/headers.md#shared|math.lerp -->

Performs linear interpolation between two values. <br>

<!-- @include: ./slots/descriptions.md#shared|math.lerp -->

#### Syntax

```lua
math.lerp(a, b, t)
```

#### Parameters

`a` : _number_
> The starting value
>

`b` : _number_
> The ending value
>

`t` : _number_
> The interpolation factor, usually between 0 and 1
>

#### Return Value

Type : _number_

> The interpolated value between a and b

<!-- @include: ./slots/examples.md#shared|math.lerp -->

<!-- @include: ./slots/footers.md#shared|math.lerp -->

---

### math.round()

<!-- @include: ./slots/headers.md#shared|math.round -->

Rounds a number to the specified decimal precision. <br>

<!-- @include: ./slots/descriptions.md#shared|math.round -->

#### Syntax

```lua
math.round(number, precision)
```

#### Parameters

`number` : _number_
> The number to round
>

`precision` : _number_ <BadgeOptional />
> The number of decimal places to round to <br> default:0
>

#### Return Value

Type : _number_

> The rounded number

<!-- @include: ./slots/examples.md#shared|math.round -->

<!-- @include: ./slots/footers.md#shared|math.round -->

---

### math.toHex()

<!-- @include: ./slots/headers.md#shared|math.toHex -->

Converts a number to hexadecimal string representation. <br>

<!-- @include: ./slots/descriptions.md#shared|math.toHex -->

#### Syntax

```lua
math.toHex(n, prefix)
```

#### Parameters

`n` : _integer_
> The integer to convert
>

`prefix` : _boolean_ <BadgeOptional />
> Add "0x" prefix, default: false
>

#### Return Value

Type : _string_

> The hexadecimal string representation

<!-- @include: ./slots/examples.md#shared|math.toHex -->

<!-- @include: ./slots/footers.md#shared|math.toHex -->

---

### math.toSigned()

<!-- @include: ./slots/headers.md#shared|math.toSigned -->

<!-- @include: ./slots/descriptions.md#shared|math.toSigned -->

#### Syntax

```lua
math.toSigned(n)
```

<!-- @include: ./slots/examples.md#shared|math.toSigned -->

<!-- @include: ./slots/footers.md#shared|math.toSigned -->

