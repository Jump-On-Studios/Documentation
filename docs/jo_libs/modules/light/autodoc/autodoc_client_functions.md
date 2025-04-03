
## JO Functions

### jo.light.create()

<!-- @include: ./slots/headers.md#jo.light.create -->

Creates a new light with the given properties <br>

<!-- @include: ./slots/descriptions.md#jo.light.create -->

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

<!-- @include: ./slots/examples.md#jo.light.create -->

<!-- @include: ./slots/footers.md#jo.light.create -->


## LightClass Methods

### LightClass:delete()

<!-- @include: ./slots/headers.md#LightClass:delete -->

Marks a light for deletion and starts fading it out <br>

<!-- @include: ./slots/descriptions.md#LightClass:delete -->

#### Syntax

```lua
LightClass:delete()
```

<!-- @include: ./slots/examples.md#LightClass:delete -->

<!-- @include: ./slots/footers.md#LightClass:delete -->

---

### LightClass:setCoords()

<!-- @include: ./slots/headers.md#LightClass:setCoords -->

Sets new target coordinates for the light <br>

<!-- @include: ./slots/descriptions.md#LightClass:setCoords -->

#### Syntax

```lua
LightClass:setCoords(coords)
```

#### Parameters

`coords` : _vector3_
> The new target position
>

<!-- @include: ./slots/examples.md#LightClass:setCoords -->

<!-- @include: ./slots/footers.md#LightClass:setCoords -->

---

### LightClass:setIntensity()

<!-- @include: ./slots/headers.md#LightClass:setIntensity -->

Sets new target intensity for the light <br>

<!-- @include: ./slots/descriptions.md#LightClass:setIntensity -->

#### Syntax

```lua
LightClass:setIntensity(intensity)
```

#### Parameters

`intensity` : _float_
> The new target intensity from 0.0 to 1.0
>

<!-- @include: ./slots/examples.md#LightClass:setIntensity -->

<!-- @include: ./slots/footers.md#LightClass:setIntensity -->

---

### LightClass:update()

<!-- @include: ./slots/headers.md#LightClass:update -->

Updates the light properties based on elapsed time <br>

<!-- @include: ./slots/descriptions.md#LightClass:update -->

#### Syntax

```lua
LightClass:update(deltaTime)
```

#### Parameters

`deltaTime` : _float_
> Time elapsed since last update in ms
>

<!-- @include: ./slots/examples.md#LightClass:update -->

<!-- @include: ./slots/footers.md#LightClass:update -->

