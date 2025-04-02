
## JO Functions

### jo.date.convertMsToInterval()

<!-- @include: ./slots/headers.md#jo.date.convertMsToInterval -->

A function to convert a time in ms to a readable string <br>

<!-- @include: ./slots/descriptions.md#jo.date.convertMsToInterval -->

#### Syntax

```lua
jo.date.convertMsToInterval(ms, lang)
```

#### Parameters

`ms` : _integer_
> The duration in ms
>

`lang` : _table_ <BadgeOptional />

> The list of translatable strings <br> Use `false` to disable
>

> `lang.ms` : _string_ - "ms"
> 
> `lang.s` : _string_ - "s"
> 
> `lang.h` : _string_ - "h"
> 
> `lang.d` : _string_ - "d"
> 
> `lang.s` : _string_ - "s"
> 

<!-- @include: ./slots/examples.md#jo.date.convertMsToInterval -->

<!-- @include: ./slots/footers.md#jo.date.convertMsToInterval -->

---

### jo.date.now()

<!-- @include: ./slots/headers.md#jo.date.now -->

A function to get the current time <br>

<!-- @include: ./slots/descriptions.md#jo.date.now -->

#### Syntax

```lua
jo.date.now()
```

#### Return Value

Type : _integer_

> The current time in ms

<!-- @include: ./slots/examples.md#jo.date.now -->

<!-- @include: ./slots/footers.md#jo.date.now -->

