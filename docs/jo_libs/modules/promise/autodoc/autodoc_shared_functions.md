
## JO Functions

### jo.promise.new()

<!-- @include: ./slots/headers.md#shared|jo.promise.new -->

Creates a new Promise that wraps a callback function <br>
This utility transforms callback-style functions into Promise-returning functions <br>

<!-- @include: ./slots/descriptions.md#shared|jo.promise.new -->

#### Syntax

```lua
jo.promise.new(cb, ...)
```

#### Parameters

`cb` : _function_
> The callback function to be wrapped in a Promise
>

`...` : _mixed_
> Arguments to pass to the callback function
>

#### Return Value

Type : _..._

> The resolved values from the Promise

<!-- @include: ./slots/examples.md#shared|jo.promise.new -->

<!-- @include: ./slots/footers.md#shared|jo.promise.new -->

