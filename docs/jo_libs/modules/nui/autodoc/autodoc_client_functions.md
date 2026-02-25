
## JO Functions

### jo.nui.forceFocus()

<!-- @include: ./slots/headers.md#client|jo.nui.forceFocus -->

Forces focus on a specific NUI interface and don't spread events to other NUIs <br>

<!-- @include: ./slots/descriptions.md#client|jo.nui.forceFocus -->

#### Syntax

```lua
jo.nui.forceFocus(uiName)
```

#### Parameters

`uiName` : _string_
> The name of the NUI to focus on
>

<!-- @include: ./slots/examples.md#client|jo.nui.forceFocus -->

<!-- @include: ./slots/footers.md#client|jo.nui.forceFocus -->

---

### jo.nui.isHovering()

<!-- @include: ./slots/headers.md#client|jo.nui.isHovering -->

<!-- @include: ./slots/descriptions.md#client|jo.nui.isHovering -->

#### Syntax

```lua
jo.nui.isHovering(global)
```

<!-- @include: ./slots/examples.md#client|jo.nui.isHovering -->

<!-- @include: ./slots/footers.md#client|jo.nui.isHovering -->

---

### jo.nui.isLoaded()

<!-- @include: ./slots/headers.md#client|jo.nui.isLoaded -->

A function to know if a nui is loaded <br>

<!-- @include: ./slots/descriptions.md#client|jo.nui.isLoaded -->

#### Syntax

```lua
jo.nui.isLoaded(uiName)
```

#### Parameters

`uiName` : _string_
> The name of the NUI
>

#### Return Value

Type : _boolean_

> `true` if the nui is already loaded

<!-- @include: ./slots/examples.md#client|jo.nui.isLoaded -->

<!-- @include: ./slots/footers.md#client|jo.nui.isLoaded -->

---

### jo.nui.load()

<!-- @include: ./slots/headers.md#client|jo.nui.load -->

Loads a NUI interface <br>

<!-- @include: ./slots/descriptions.md#client|jo.nui.load -->

#### Syntax

```lua
jo.nui.load(uiName, url)
```

#### Parameters

`uiName` : _string_
> The name of the NUI to load
>

`url` : _string_
> The URL of the NUI to load
>

<!-- @include: ./slots/examples.md#client|jo.nui.load -->

<!-- @include: ./slots/footers.md#client|jo.nui.load -->

---

### jo.nui.resetFocus()

<!-- @include: ./slots/headers.md#client|jo.nui.resetFocus -->

Resets the focus from any NUI interface and spread events <br>

<!-- @include: ./slots/descriptions.md#client|jo.nui.resetFocus -->

#### Syntax

```lua
jo.nui.resetFocus()
```

<!-- @include: ./slots/examples.md#client|jo.nui.resetFocus -->

<!-- @include: ./slots/footers.md#client|jo.nui.resetFocus -->

