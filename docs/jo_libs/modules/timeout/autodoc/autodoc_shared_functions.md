
## JO Functions

### jo.timeout.delay()

<!-- @include: ./slots/headers.md#shared|jo.timeout.delay -->

A function to delay execution. If another delay is created with the same id, the previous one will be canceled <br>

<!-- @include: ./slots/descriptions.md#shared|jo.timeout.delay -->

#### Syntax

```lua
jo.timeout.delay(id, msec, cb, ...)
```

#### Parameters

`id` : _string_
> The unique ID of the delay
>

`msec` : _integer|function_
> The duration before execute cb or a waiter function
>

`cb` : _function_
> The function executed after msec
>

`...` : _any_
> Additional arguments to pass to the callback function
>

#### Return Value

Type : _[TimeoutClass](#timeoutclass-methods)_

> Return the timeout instance

<!-- @include: ./slots/examples.md#shared|jo.timeout.delay -->

<!-- @include: ./slots/footers.md#shared|jo.timeout.delay -->

---

### jo.timeout.loop()

<!-- @include: ./slots/headers.md#shared|jo.timeout.loop -->

Create a loop to execute the function at regular interval <br>

<!-- @include: ./slots/descriptions.md#shared|jo.timeout.loop -->

#### Syntax

```lua
jo.timeout.loop(msec, cb, ...)
```

#### Parameters

`msec` : _integer_
> The duration between two executions of cb
>

`cb` : _function_
> The function executed every msec ms
>

`...` : _any_
> Additional arguments to pass to the callback function
>

#### Return Value

Type : _[TimeoutClass](#timeoutclass-methods)_

> Return the timeout instance

<!-- @include: ./slots/examples.md#shared|jo.timeout.loop -->

<!-- @include: ./slots/footers.md#shared|jo.timeout.loop -->

---

### jo.timeout.noSpam()

<!-- @include: ./slots/headers.md#shared|jo.timeout.noSpam -->

A function to delay the second execution. If another delay is created with the same id, the previous one is canceled <br>

<!-- @include: ./slots/descriptions.md#shared|jo.timeout.noSpam -->

#### Syntax

```lua
jo.timeout.noSpam(id, msec, cb, ...)
```

#### Parameters

`id` : _string_
> The unique ID of the delay
>

`msec` : _integer|function_
> The duration before execute cb or a waiter function
>

`cb` : _function_
> The function executed after msec
>

`...` : _any_
> Additional arguments to pass to the callback function
>

#### Return Value

Type : _[TimeoutClass](#timeoutclass-methods)_

> Return the timeout instance

<!-- @include: ./slots/examples.md#shared|jo.timeout.noSpam -->

<!-- @include: ./slots/footers.md#shared|jo.timeout.noSpam -->

---

### jo.timeout.set()

<!-- @include: ./slots/headers.md#shared|jo.timeout.set -->

A function to set a timeout <br>

<!-- @include: ./slots/descriptions.md#shared|jo.timeout.set -->

#### Syntax

```lua
jo.timeout.set(msec, cb, ...)
```

#### Parameters

`msec` : _integer|function_
> If integer: wait duration in ms. If function: the function will be executed before cb
>

`cb` : _function_
> The function executed when waiter is done
>

`...` : _any_
> Additional arguments to pass to the callback function
>

#### Return Value

Type : _[TimeoutClass](#timeoutclass-methods)_

> Return the timeout instance

<!-- @include: ./slots/examples.md#shared|jo.timeout.set -->

<!-- @include: ./slots/footers.md#shared|jo.timeout.set -->


## TimeoutClass Methods

### TimeoutClass:clear()

<!-- @include: ./slots/headers.md#shared|TimeoutClass:clear -->

Cancel the timeout <br>
Prevents the callback from being executed <br>

<!-- @include: ./slots/descriptions.md#shared|TimeoutClass:clear -->

#### Syntax

```lua
TimeoutClass:clear()
```

<!-- @include: ./slots/examples.md#shared|TimeoutClass:clear -->

<!-- @include: ./slots/footers.md#shared|TimeoutClass:clear -->

---

### TimeoutClass:execute()

<!-- @include: ./slots/headers.md#shared|TimeoutClass:execute -->

Execute the callback function <br>
Automatically clears the timeout and passes any stored arguments to the callback <br>

<!-- @include: ./slots/descriptions.md#shared|TimeoutClass:execute -->

#### Syntax

```lua
TimeoutClass:execute()
```

<!-- @include: ./slots/examples.md#shared|TimeoutClass:execute -->

<!-- @include: ./slots/footers.md#shared|TimeoutClass:execute -->

---

### TimeoutClass:set()

<!-- @include: ./slots/headers.md#shared|TimeoutClass:set -->

Initialize a new timeout <br>

<!-- @include: ./slots/descriptions.md#shared|TimeoutClass:set -->

#### Syntax

```lua
TimeoutClass:set(msec, cb, args)
```

#### Parameters

`msec` : _integer|function_
> The waiter of the function
>

`cb` : _function_
> The function to execute after waiter
>

`args` : _table_ <BadgeOptional />

> Optional arguments to pass to the callback function
>


#### Return Value

Type : _[TimeoutClass](#timeoutclass-methods)_

> Return the timeout instance

<!-- @include: ./slots/examples.md#shared|TimeoutClass:set -->

<!-- @include: ./slots/footers.md#shared|TimeoutClass:set -->

---

### TimeoutClass:setCb()

<!-- @include: ./slots/headers.md#shared|TimeoutClass:setCb -->

Change the callback function of the timeout <br>

<!-- @include: ./slots/descriptions.md#shared|TimeoutClass:setCb -->

#### Syntax

```lua
TimeoutClass:setCb(cb)
```

#### Parameters

`cb` : _function_
> The new callback function
>

<!-- @include: ./slots/examples.md#shared|TimeoutClass:setCb -->

<!-- @include: ./slots/footers.md#shared|TimeoutClass:setCb -->

---

### TimeoutClass:setMsec()

<!-- @include: ./slots/headers.md#shared|TimeoutClass:setMsec -->

Change the timeout duration or waiter function <br>

<!-- @include: ./slots/descriptions.md#shared|TimeoutClass:setMsec -->

#### Syntax

```lua
TimeoutClass:setMsec(msec)
```

#### Parameters

`msec` : _integer|function_
> New timeout duration in ms or a new waiter function
>

<!-- @include: ./slots/examples.md#shared|TimeoutClass:setMsec -->

<!-- @include: ./slots/footers.md#shared|TimeoutClass:setMsec -->

---

### TimeoutClass:start()

<!-- @include: ./slots/headers.md#shared|TimeoutClass:start -->

Start the timeout by initiating the waiting period <br>
Either waits for msec milliseconds or executes the waiter function <br>

<!-- @include: ./slots/descriptions.md#shared|TimeoutClass:start -->

#### Syntax

```lua
TimeoutClass:start()
```

<!-- @include: ./slots/examples.md#shared|TimeoutClass:start -->

<!-- @include: ./slots/footers.md#shared|TimeoutClass:start -->

