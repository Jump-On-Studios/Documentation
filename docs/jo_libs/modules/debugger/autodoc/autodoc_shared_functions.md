
## JO Functions

### jo.debugger.perfomance()

<!-- @include: ./slots/headers.md#shared|jo.debugger.perfomance -->

Measures the performance of a callback function execution. <br>

<!-- @include: ./slots/descriptions.md#shared|jo.debugger.perfomance -->

#### Syntax

```lua
jo.debugger.perfomance(title, cb)

```

#### Parameters

`title` : _string_ <BadgeOptional />
> Title for the performance measurement - default:""
>

`cb` : _function_
> The callback function to measure
>

#### Return Value

Type : _number_

> Duration in microseconds

<!-- @include: ./slots/examples.md#shared|jo.debugger.perfomance -->

<!-- @include: ./slots/footers.md#shared|jo.debugger.perfomance -->

---

### jo.debugger.perfomanceRepeat()

<!-- @include: ./slots/headers.md#shared|jo.debugger.perfomanceRepeat -->

Measures the average performance of multiple executions of a callback function. <br>

<!-- @include: ./slots/descriptions.md#shared|jo.debugger.perfomanceRepeat -->

#### Syntax

```lua
jo.debugger.perfomanceRepeat(title, numberRepeat, cb, waitBetweenRepeat)

```

#### Parameters

`title` : _string_ <BadgeOptional />
> Title for the performance measurement - default:""
>

`numberRepeat` : _integer_ <BadgeOptional />
> Number of times to repeat the measurement - default:1
>

`cb` : _function_
> The callback function to measure
>

`waitBetweenRepeat` : _integer_ <BadgeOptional />
> Time to wait between repetitions in ms - default:nil
>

#### Return Value

Type : _number_

> Average duration in microseconds

<!-- @include: ./slots/examples.md#shared|jo.debugger.perfomanceRepeat -->

<!-- @include: ./slots/footers.md#shared|jo.debugger.perfomanceRepeat -->

