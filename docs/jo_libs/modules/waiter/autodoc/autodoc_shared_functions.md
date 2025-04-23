
## JO Functions

### jo.waiter.exec()

<!-- @include: ./slots/headers.md#shared|jo.waiter.exec -->

Execute a function repeatedly until a condition is met or a timeout occurs. <br>

<!-- @include: ./slots/descriptions.md#shared|jo.waiter.exec -->

#### Syntax

```lua
jo.waiter.exec(condition, executable, loopSpeed, maxDuration)

```

#### Parameters

`condition` : _function_
> The condition to stop the loop
>

`executable` : _function_ <BadgeOptional />
> Function to execute after each test
>

`loopSpeed` : _integer_ <BadgeOptional />
> The wait between each test in ms <br> default:0
>

`maxDuration` : _integer_ <BadgeOptional />
> The max duration to wait in ms <br> default:5000
>

#### Return Value

Type : _boolean_

> True if the condition was met, false if timeout occurred

<!-- @include: ./slots/examples.md#shared|jo.waiter.exec -->

<!-- @include: ./slots/footers.md#shared|jo.waiter.exec -->

