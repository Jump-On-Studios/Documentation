
## Math Functions

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

