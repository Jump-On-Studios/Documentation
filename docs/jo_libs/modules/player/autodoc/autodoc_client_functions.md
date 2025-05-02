
## JO Functions

### jo.player.forceUpdate()

<!-- @include: ./slots/headers.md#client|jo.player.forceUpdate -->

A function to force the update of module value <br>

<!-- @include: ./slots/descriptions.md#client|jo.player.forceUpdate -->

#### Syntax

```lua
jo.player.forceUpdate()
```

<!-- @include: ./slots/examples.md#client|jo.player.forceUpdate -->

<!-- @include: ./slots/footers.md#client|jo.player.forceUpdate -->

---

### jo.player.move()

<!-- @include: ./slots/headers.md#client|jo.player.move -->

A function fired when the player move every 100ms <br>

<!-- @include: ./slots/descriptions.md#client|jo.player.move -->

#### Syntax

```lua
jo.player.move(cb, interval)
```

#### Parameters

`cb` : _function_
> function to fired when the player moves
>

`interval` : _integer_ <BadgeOptional />
> minimal duration in ms during two execution. Can't be lower than 100ms
>

<!-- @include: ./slots/examples.md#client|jo.player.move -->

<!-- @include: ./slots/footers.md#client|jo.player.move -->

