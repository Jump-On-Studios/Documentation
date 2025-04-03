
## JO Functions

### jo.gameEvents.listen()

<!-- @include: ./slots/headers.md#jo.gameEvents.listen -->

Register a listener for a specific game event <br>

<!-- @include: ./slots/descriptions.md#jo.gameEvents.listen -->

#### Syntax

```lua
jo.gameEvents.listen(eventName, callback)
```

#### Parameters

`eventName` : _string_
> The name of the event to listen for, or "all" to listen for all events
>

`callback` : _function_
> The function that will be called when the event is triggered
>

<!-- @include: ./slots/examples.md#jo.gameEvents.listen -->

<!-- @include: ./slots/footers.md#jo.gameEvents.listen -->

