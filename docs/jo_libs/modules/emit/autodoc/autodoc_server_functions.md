
## JO Functions

### jo.emit.triggerClient()

<!-- @include: ./slots/headers.md#server|jo.emit.triggerClient -->

A function to trigger a client(s) <br>

<!-- @include: ./slots/descriptions.md#server|jo.emit.triggerClient -->

#### Syntax

```lua
jo.emit.triggerClient(eventName, source, ...)
```

#### Parameters

`eventName` : _string_
> The event name
>

`source` : _integer|table_
> The player ID or list of players ID
>

`...` : _any_
> Other arguments
>

<!-- @include: ./slots/examples.md#server|jo.emit.triggerClient -->

<!-- @include: ./slots/footers.md#server|jo.emit.triggerClient -->

---

### jo.emit.triggerClient.latent()

<!-- @include: ./slots/headers.md#server|jo.emit.triggerClient.latent -->

A function to trigger a client(s) with a limited bandwith <br>

<!-- @include: ./slots/descriptions.md#server|jo.emit.triggerClient.latent -->

#### Syntax

```lua
jo.emit.triggerClient.latent(eventName, source, ...)
```

#### Parameters

`eventName` : _string_
> The event name
>

`source` : _integer|table_
> The player ID or list of players ID
>

`...` : _any_
> Other arguments
>

<!-- @include: ./slots/examples.md#server|jo.emit.triggerClient.latent -->

<!-- @include: ./slots/footers.md#server|jo.emit.triggerClient.latent -->

---

### jo.emit.triggerServerWithSource()

<!-- @include: ./slots/headers.md#server|jo.emit.triggerServerWithSource -->

Trigger an event on the server side and keep the source injection <br>

<!-- @include: ./slots/descriptions.md#server|jo.emit.triggerServerWithSource -->

#### Syntax

```lua
jo.emit.triggerServerWithSource(source, event, ...)
```

#### Parameters

`source` : _integer_
> The source player ID to send the event to
>

`event` : _string_
> The name of the event to trigger
>

`...` : _any_
> Additional parameters to pass to the event
>

<!-- @include: ./slots/examples.md#server|jo.emit.triggerServerWithSource -->

<!-- @include: ./slots/footers.md#server|jo.emit.triggerServerWithSource -->

---

### jo.emit.updateBps()

<!-- @include: ./slots/headers.md#server|jo.emit.updateBps -->

A function to update the bit/s of emit module <br>

<!-- @include: ./slots/descriptions.md#server|jo.emit.updateBps -->

#### Syntax

```lua
jo.emit.updateBps(bps)
```

#### Parameters

`bps` : _integer_
> bit/s
>

<!-- @include: ./slots/examples.md#server|jo.emit.updateBps -->

<!-- @include: ./slots/footers.md#server|jo.emit.updateBps -->

