
## JO Functions

### jo.emit.isEventInProgress()

<!-- @include: ./slots/headers.md#client|jo.emit.isEventInProgress -->

<!-- @include: ./slots/descriptions.md#client|jo.emit.isEventInProgress -->

#### Syntax

```lua
jo.emit.isEventInProgress(eventName)
```

<!-- @include: ./slots/examples.md#client|jo.emit.isEventInProgress -->

<!-- @include: ./slots/footers.md#client|jo.emit.isEventInProgress -->

---

### jo.emit.triggerServer()

<!-- @include: ./slots/headers.md#client|jo.emit.triggerServer -->

A function to trigger the server <br>

<!-- @include: ./slots/descriptions.md#client|jo.emit.triggerServer -->

#### Syntax

```lua
jo.emit.triggerServer(eventName, ...)
```

#### Parameters

`eventName` : _string_
> The event name
>

`...` : _any_
> Other arguments
>

<!-- @include: ./slots/examples.md#client|jo.emit.triggerServer -->

<!-- @include: ./slots/footers.md#client|jo.emit.triggerServer -->

---

### jo.emit.triggerServer.latent()

<!-- @include: ./slots/headers.md#client|jo.emit.triggerServer.latent -->

A function to trigger the server with limited bandwith <br>

<!-- @include: ./slots/descriptions.md#client|jo.emit.triggerServer.latent -->

#### Syntax

```lua
jo.emit.triggerServer.latent(eventName, ...)
```

#### Parameters

`eventName` : _string_
> The event name
>

`...` : _any_
> Other arguments
>

<!-- @include: ./slots/examples.md#client|jo.emit.triggerServer.latent -->

<!-- @include: ./slots/footers.md#client|jo.emit.triggerServer.latent -->

---

### jo.emit.updateBps()

<!-- @include: ./slots/headers.md#client|jo.emit.updateBps -->

A function to update the bit/s of emit module <br>

<!-- @include: ./slots/descriptions.md#client|jo.emit.updateBps -->

#### Syntax

```lua
jo.emit.updateBps(bps)
```

#### Parameters

`bps` : _integer_
> bit/s
>

<!-- @include: ./slots/examples.md#client|jo.emit.updateBps -->

<!-- @include: ./slots/footers.md#client|jo.emit.updateBps -->

