
## JO Functions

### jo.callback.registerCallback()

<!-- @include: ./slots/headers.md#g_server|jo.callback.registerCallback -->

A function to register a server callback <br>

<!-- @include: ./slots/descriptions.md#g_server|jo.callback.registerCallback -->

#### Syntax

```lua
jo.callback.registerCallback(name, cb, latent)
```

#### Parameters

`name` : _string_
> The name of the callback event
>

`cb` : _function_
> The function executed when the callback is triggered <br> ⚠️ `source` is always the first argument
>

<!-- @include: ./slots/examples.md#g_server|jo.callback.registerCallback -->

<!-- @include: ./slots/footers.md#g_server|jo.callback.registerCallback -->

---

### jo.callback.registerLatentCallback()

<!-- @include: ./slots/headers.md#g_server|jo.callback.registerLatentCallback -->

A function to register a latent server callback <br>

<!-- @include: ./slots/descriptions.md#g_server|jo.callback.registerLatentCallback -->

#### Syntax

```lua
jo.callback.registerLatentCallback(name, cb)
```

#### Parameters

`name` : _string_
> The name of the callback event
>

`cb` : _function_
> The function executed when the callback is triggered <br> ⚠️ `source` is always the first argument
>

<!-- @include: ./slots/examples.md#g_server|jo.callback.registerLatentCallback -->

<!-- @include: ./slots/footers.md#g_server|jo.callback.registerLatentCallback -->

---

### jo.callback.triggerClient()

<!-- @include: ./slots/headers.md#g_server|jo.callback.triggerClient -->

A function to trigger a client callback <br>

<!-- @include: ./slots/descriptions.md#g_server|jo.callback.triggerClient -->

#### Syntax

```lua
jo.callback.triggerClient(name, source, cb, ...)
```

#### Parameters

`name` : _string_
> The name of the callback event
>

`source` : _integer_
> The source of the client to trigger
>

`cb` : _function_ <BadgeOptional />
> Function to receive the result of the event
>

`...` : _any_ <BadgeOptional />
> The list of parameters to send to the callback event
>

<!-- @include: ./slots/examples.md#g_server|jo.callback.triggerClient -->

<!-- @include: ./slots/footers.md#g_server|jo.callback.triggerClient -->

---

### jo.callback.triggerServer()

<!-- @include: ./slots/headers.md#g_server|jo.callback.triggerServer -->

A function to trigger a server callback <br>

<!-- @include: ./slots/descriptions.md#g_server|jo.callback.triggerServer -->

#### Syntax

```lua
jo.callback.triggerServer(name, cb, ...)
```

#### Parameters

`name` : _string_
> Name of the callback event
>

`cb` : _function_ <BadgeOptional />
> Function to receive the result of the event
>

`...` : _any_ <BadgeOptional />
> The list of parameters to send to the callback event
>

<!-- @include: ./slots/examples.md#g_server|jo.callback.triggerServer -->

<!-- @include: ./slots/footers.md#g_server|jo.callback.triggerServer -->

