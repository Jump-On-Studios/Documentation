
## JO Functions

### jo.camera.freeCamera.getCam()

<!-- @include: ./slots/headers.md#client|jo.camera.freeCamera.getCam -->

A function to get the freecam camera <br>

<!-- @include: ./slots/descriptions.md#client|jo.camera.freeCamera.getCam -->

#### Syntax

```lua
jo.camera.freeCamera.getCam()
```

#### Return Value

Type : _integer_

> The camera id

<!-- @include: ./slots/examples.md#client|jo.camera.freeCamera.getCam -->

<!-- @include: ./slots/footers.md#client|jo.camera.freeCamera.getCam -->

---

### jo.camera.freeCamera.getPromptGroup()

<!-- @include: ./slots/headers.md#client|jo.camera.freeCamera.getPromptGroup -->

A function to get the freecam prompt group <br>

<!-- @include: ./slots/descriptions.md#client|jo.camera.freeCamera.getPromptGroup -->

#### Syntax

```lua
jo.camera.freeCamera.getPromptGroup()
```

#### Return Value

Type : _integer_

> The prompt group

<!-- @include: ./slots/examples.md#client|jo.camera.freeCamera.getPromptGroup -->

<!-- @include: ./slots/footers.md#client|jo.camera.freeCamera.getPromptGroup -->

---

### jo.camera.freeCamera.isActive()

<!-- @include: ./slots/headers.md#client|jo.camera.freeCamera.isActive -->

A function to check if the freecam is active <br>

<!-- @include: ./slots/descriptions.md#client|jo.camera.freeCamera.isActive -->

#### Syntax

```lua
jo.camera.freeCamera.isActive()
```

#### Return Value

Type : _boolean_

> Whether the freecam is active

<!-- @include: ./slots/examples.md#client|jo.camera.freeCamera.isActive -->

<!-- @include: ./slots/footers.md#client|jo.camera.freeCamera.isActive -->

---

### jo.camera.freeCamera.isLocked()

<!-- @include: ./slots/headers.md#client|jo.camera.freeCamera.isLocked -->

A function to check if the freecam rotation is locked <br>

<!-- @include: ./slots/descriptions.md#client|jo.camera.freeCamera.isLocked -->

#### Syntax

```lua
jo.camera.freeCamera.isLocked()
```

#### Return Value

Type : _boolean_

> Whether the freecam rotation is locked

<!-- @include: ./slots/examples.md#client|jo.camera.freeCamera.isLocked -->

<!-- @include: ./slots/footers.md#client|jo.camera.freeCamera.isLocked -->

---

### jo.camera.freeCamera.lockRotate()

<!-- @include: ./slots/headers.md#client|jo.camera.freeCamera.lockRotate -->

A function to lock the freecam rotation <br>

<!-- @include: ./slots/descriptions.md#client|jo.camera.freeCamera.lockRotate -->

#### Syntax

```lua
jo.camera.freeCamera.lockRotate()
```

<!-- @include: ./slots/examples.md#client|jo.camera.freeCamera.lockRotate -->

<!-- @include: ./slots/footers.md#client|jo.camera.freeCamera.lockRotate -->

---

### jo.camera.freeCamera.start()

<!-- @include: ./slots/headers.md#client|jo.camera.freeCamera.start -->

A function to start the freecam <br>
options?.interpolate? number (The interpolate time - default `0`) <br>
options?.showPrompts? boolean (Whether to show prompts - default `true`) <br>
options?.range? number (The range of the freecam - default `10000`) <br>

<!-- @include: ./slots/descriptions.md#client|jo.camera.freeCamera.start -->

#### Syntax

```lua
jo.camera.freeCamera.start(options)
```

#### Parameters

`options` : _table_ <BadgeOptional />

> The freecam option options
>


<!-- @include: ./slots/examples.md#client|jo.camera.freeCamera.start -->

<!-- @include: ./slots/footers.md#client|jo.camera.freeCamera.start -->

---

### jo.camera.freeCamera.stop()

<!-- @include: ./slots/headers.md#client|jo.camera.freeCamera.stop -->

A function to stop the free camera <br>

<!-- @include: ./slots/descriptions.md#client|jo.camera.freeCamera.stop -->

#### Syntax

```lua
jo.camera.freeCamera.stop()
```

<!-- @include: ./slots/examples.md#client|jo.camera.freeCamera.stop -->

<!-- @include: ./slots/footers.md#client|jo.camera.freeCamera.stop -->

---

### jo.camera.freeCamera.unlockRotate()

<!-- @include: ./slots/headers.md#client|jo.camera.freeCamera.unlockRotate -->

A function to unlock the freecam rotation <br>

<!-- @include: ./slots/descriptions.md#client|jo.camera.freeCamera.unlockRotate -->

#### Syntax

```lua
jo.camera.freeCamera.unlockRotate()
```

<!-- @include: ./slots/examples.md#client|jo.camera.freeCamera.unlockRotate -->

<!-- @include: ./slots/footers.md#client|jo.camera.freeCamera.unlockRotate -->

