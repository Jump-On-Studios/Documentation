
## JO Functions

### jo.light.create()

<!-- @include: ./slots/headers.md#client|jo.light.create -->

Creates a new light with the given properties <br>

<!-- @include: ./slots/descriptions.md#client|jo.light.create -->

#### Syntax

```lua
jo.light.create(coords, intensity, rgb, range, ease)

```

#### Parameters

`coords` : _vector3_
> The position where the light will be created
>

`intensity` : _float_ <BadgeOptional />
> The light intensity from 0.0 to 1.0 - default:1.0
>

`rgb` : _table_ <BadgeOptional />

> RGB color values as a table {r,g,b} - default:`{255, 160, 122}`
>


`range` : _float_ <BadgeOptional />
> The range/radius of the light - default:10.0
>

`ease` : _float_ <BadgeOptional />
> Transition time in milliseconds - default:1000
>

#### Return Value

Type : _[LightClass](#lightclass-methods)_

> The created light object

<!-- @include: ./slots/examples.md#client|jo.light.create -->

<!-- @include: ./slots/footers.md#client|jo.light.create -->


## LightClass Methods

### LightClass:delete()

<!-- @include: ./slots/headers.md#client|LightClass:delete -->

Marks a light for deletion and starts fading it out <br>

<!-- @include: ./slots/descriptions.md#client|LightClass:delete -->

#### Syntax

```lua
LightClass:delete()

```

<!-- @include: ./slots/examples.md#client|LightClass:delete -->

<!-- @include: ./slots/footers.md#client|LightClass:delete -->

---

### LightClass:setCoords()

<!-- @include: ./slots/headers.md#client|LightClass:setCoords -->

Sets new target coordinates for the light <br>

<!-- @include: ./slots/descriptions.md#client|LightClass:setCoords -->

#### Syntax

```lua
LightClass:setCoords(coords)

```

#### Parameters

`coords` : _vector3_
> The new target position
>

<!-- @include: ./slots/examples.md#client|LightClass:setCoords -->

<!-- @include: ./slots/footers.md#client|LightClass:setCoords -->

---

### LightClass:setIntensity()

<!-- @include: ./slots/headers.md#client|LightClass:setIntensity -->

Sets new target intensity for the light <br>

<!-- @include: ./slots/descriptions.md#client|LightClass:setIntensity -->

#### Syntax

```lua
LightClass:setIntensity(intensity)

```

#### Parameters

`intensity` : _float_
> The new target intensity from 0.0 to 1.0
>

<!-- @include: ./slots/examples.md#client|LightClass:setIntensity -->

<!-- @include: ./slots/footers.md#client|LightClass:setIntensity -->

---

### LightClass:update()

<!-- @include: ./slots/headers.md#client|LightClass:update -->

Updates the light properties based on elapsed time <br>

<!-- @include: ./slots/descriptions.md#client|LightClass:update -->

#### Syntax

```lua
LightClass:update(deltaTime)

```

#### Parameters

`deltaTime` : _float_
> Time elapsed since last update in ms
>

<!-- @include: ./slots/examples.md#client|LightClass:update -->

<!-- @include: ./slots/footers.md#client|LightClass:update -->

