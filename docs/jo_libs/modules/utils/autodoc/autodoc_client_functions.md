
## JO Functions

### jo.utils.loadGameData()

<!-- @include: ./slots/headers.md#client|jo.utils.loadGameData -->

A function to load a game file <br>

<!-- @include: ./slots/descriptions.md#client|jo.utils.loadGameData -->

#### Syntax

```lua
jo.utils.loadGameData(name, waiter)
```

#### Parameters

`name` : _string|integer_
> The name of the file <br> Compatible with animation dictionaries, models (hashed or string), and texture dictionaries
>

`waiter` : _boolean_ <BadgeOptional />
> If the function has to wait after the loading to be completed
>

<!-- @include: ./slots/examples.md#client|jo.utils.loadGameData -->

<!-- @include: ./slots/footers.md#client|jo.utils.loadGameData -->

---

### jo.utils.releaseGameData()

<!-- @include: ./slots/headers.md#client|jo.utils.releaseGameData -->

A function to release a game file <br>

<!-- @include: ./slots/descriptions.md#client|jo.utils.releaseGameData -->

#### Syntax

```lua
jo.utils.releaseGameData(name)
```

#### Parameters

`name` : _string|integer_
> The name of the file
>

<!-- @include: ./slots/examples.md#client|jo.utils.releaseGameData -->

<!-- @include: ./slots/footers.md#client|jo.utils.releaseGameData -->

---

### jo.utils.waiter()

<!-- @include: ./slots/headers.md#client|jo.utils.waiter -->

A function to wait after a satisfying condition with a waiting duration <br>

<!-- @include: ./slots/descriptions.md#client|jo.utils.waiter -->

#### Syntax

```lua
jo.utils.waiter(cb, maxDuration, loopTimer)
```

#### Parameters

`cb` : _function_
> If the function returns `true` a new timer value is waited
>

`maxDuration` : _integer_ <BadgeOptional />
> The maximum duration the function will wait <br> default: 1000
>

`loopTimer` : _integer_ <BadgeOptional />
> The delay between tests of cb function in ms <br> default: 0
>

#### Return Value

Type : _boolean_

> Returns `true` if the function is satisfied, `false` if the waiter was killed by the maxDuration value

<!-- @include: ./slots/examples.md#client|jo.utils.waiter -->

<!-- @include: ./slots/footers.md#client|jo.utils.waiter -->

