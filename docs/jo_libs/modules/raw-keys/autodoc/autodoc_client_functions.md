
## JO Functions

### jo.rawKeys.getAliasFromStandardKey()

<!-- @include: ./slots/headers.md#client|jo.rawKeys.getAliasFromStandardKey -->

<!-- @include: ./slots/descriptions.md#client|jo.rawKeys.getAliasFromStandardKey -->

#### Syntax

```lua
jo.rawKeys.getAliasFromStandardKey(key)
```

<!-- @include: ./slots/examples.md#client|jo.rawKeys.getAliasFromStandardKey -->

<!-- @include: ./slots/footers.md#client|jo.rawKeys.getAliasFromStandardKey -->

---

### jo.rawKeys.getAllVK()

<!-- @include: ./slots/headers.md#client|jo.rawKeys.getAllVK -->

<!-- @include: ./slots/descriptions.md#client|jo.rawKeys.getAllVK -->

#### Syntax

```lua
jo.rawKeys.getAllVK()
```

<!-- @include: ./slots/examples.md#client|jo.rawKeys.getAllVK -->

<!-- @include: ./slots/footers.md#client|jo.rawKeys.getAllVK -->

---

### jo.rawKeys.getKeyFromVK()

<!-- @include: ./slots/headers.md#client|jo.rawKeys.getKeyFromVK -->

<!-- @include: ./slots/descriptions.md#client|jo.rawKeys.getKeyFromVK -->

#### Syntax

```lua
jo.rawKeys.getKeyFromVK(vk)
```

<!-- @include: ./slots/examples.md#client|jo.rawKeys.getKeyFromVK -->

<!-- @include: ./slots/footers.md#client|jo.rawKeys.getKeyFromVK -->

---

### jo.rawKeys.listen()

<!-- @include: ./slots/headers.md#client|jo.rawKeys.listen -->

Registers a listener for a specific key. When the key is pressed or released, the provided callback function is executed with a boolean value indicating the event state (true for pressed, false for released). <br>

<!-- @include: ./slots/descriptions.md#client|jo.rawKeys.listen -->

#### Syntax

```lua
jo.rawKeys.listen(key, callback)
```

#### Parameters

`key` : _string_
> The identifier of the key to listen for. This should correspond to one of the keys defined in the [keyboard mappings](#keyboard-keys-mapping) (e.g., "A", "B", "F1", etc.) or the numerical key code
>

`callback` : _function_
> The function to be executed when the key event occurs. It receives one parameter: <br> _boolean_ — `true` when the key is pressed, `false` when it is released.
>

#### Return Value

Type : _integer_

> The unique identifier for the listener, which can be used to remove it later.

<!-- @include: ./slots/examples.md#client|jo.rawKeys.listen -->

<!-- @include: ./slots/footers.md#client|jo.rawKeys.listen -->

---

### jo.rawKeys.remove()

<!-- @include: ./slots/headers.md#client|jo.rawKeys.remove -->

Removes all listeners associated with the specified key. Use this function to stop listening for events on a key when it is no longer needed. <br>

<!-- @include: ./slots/descriptions.md#client|jo.rawKeys.remove -->

#### Syntax

```lua
jo.rawKeys.remove(key)
```

#### Parameters

`key` : _string_
> The identifier of the key for which the listener should be removed.
>

<!-- @include: ./slots/examples.md#client|jo.rawKeys.remove -->

<!-- @include: ./slots/footers.md#client|jo.rawKeys.remove -->

---

### jo.rawKeys.removeListener()

<!-- @include: ./slots/headers.md#client|jo.rawKeys.removeListener -->

Removes the listener associated with the specified ID. Use this function to stop listening for events on a key when it is no longer needed. <br>

<!-- @include: ./slots/descriptions.md#client|jo.rawKeys.removeListener -->

#### Syntax

```lua
jo.rawKeys.removeListener(id)
```

#### Parameters

`id` : _string_
> The ID of the listener to remove.
>

<!-- @include: ./slots/examples.md#client|jo.rawKeys.removeListener -->

<!-- @include: ./slots/footers.md#client|jo.rawKeys.removeListener -->

