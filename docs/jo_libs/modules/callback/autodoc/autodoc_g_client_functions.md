
## JO Functions

### jo.callback.register()

<!-- @include: ./slots/headers.md#g_client|jo.callback.register -->

A function to register a client callback <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.callback.register -->

#### Syntax

```lua
jo.callback.register(name, cb)
```

#### Parameters

`name` : _string_
> The name of the callback event
>

`cb` : _function_
> The function executed when the callback is triggered
>

<!-- @include: ./slots/examples.md#g_client|jo.callback.register -->

<!-- @include: ./slots/footers.md#g_client|jo.callback.register -->

---

### jo.callback.triggerClient()

<!-- @include: ./slots/headers.md#g_client|jo.callback.triggerClient -->

A function to trigger a client callback <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.callback.triggerClient -->

#### Syntax

```lua
jo.callback.triggerClient(name, cb, ...)
```

#### Parameters

`name` : _string_
> The name of the callback event
>

`cb` : _function_
> Function to receive the result of the event
>

`...` : _mixed_ <BadgeOptional />
> The list of parameters to send to the callback event
>

<!-- @include: ./slots/examples.md#g_client|jo.callback.triggerClient -->

<!-- @include: ./slots/footers.md#g_client|jo.callback.triggerClient -->

---

### jo.callback.triggerServer()

<!-- @include: ./slots/headers.md#g_client|jo.callback.triggerServer -->

A function to trigger a server callback <br>

<!-- @include: ./slots/descriptions.md#g_client|jo.callback.triggerServer -->

#### Syntax

```lua
jo.callback.triggerServer(name, cb, ...)
```

#### Parameters

`name` : _string_
> Name of the callback event
>

`cb` : _function_
> Function to receive the result of the event
>

`...` : _mixed_ <BadgeOptional />
> The list of parameters to send to the callback event
>

<!-- @include: ./slots/examples.md#g_client|jo.callback.triggerServer -->

<!-- @include: ./slots/footers.md#g_client|jo.callback.triggerServer -->

