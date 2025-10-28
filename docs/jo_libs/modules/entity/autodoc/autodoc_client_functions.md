
## JO Functions

### jo.entity.create()

<!-- @include: ./slots/headers.md#client|jo.entity.create -->

Create a new entity at specified location <br>
- if coords is a vector4, heading is not required <br>

<!-- @include: ./slots/descriptions.md#client|jo.entity.create -->

#### Syntax

```lua
jo.entity.create(model, coords, ...)
```

#### Parameters

`model` : _string_
> The model name of the entity to create
>

`coords` : _vector3|vector4_
> The coordinates where the entity will be created
>

`heading` : _number_ <BadgeOptional />
> The heading direction for the entity if coords is vec3
>

`networked` : _boolean_ <BadgeOptional />
> Whether the entity should be networked <br> default: `false`
>

`fadeDuration` : _integer_ <BadgeOptional />
> Duration of the fade-in effect in ms <br> default: `0`
>

#### Return Value

Type : _integer_

> The created entity ID

<!-- @include: ./slots/examples.md#client|jo.entity.create -->

<!-- @include: ./slots/footers.md#client|jo.entity.create -->

---

### jo.entity.createWithMouse()

<!-- @include: ./slots/headers.md#client|jo.entity.createWithMouse -->

Create an entity that follows the mouse cursor for placement <br>

<!-- @include: ./slots/descriptions.md#client|jo.entity.createWithMouse -->

#### Syntax

```lua
jo.entity.createWithMouse(model, keepEntity, networked)
```

#### Parameters

`model` : _string_
> The model name of the entity to create
>

`keepEntity` : _boolean_ <BadgeOptional />
> Whether to keep the entity after placement <br> default:true
>

`networked` : _boolean_ <BadgeOptional />
> Whether the entity should be networked <br> default:false
>

#### Return Value

Type : _integer,vector3,number,boolean_

> The created entity ID, final position, final heading, is canceled

<!-- @include: ./slots/examples.md#client|jo.entity.createWithMouse -->

<!-- @include: ./slots/footers.md#client|jo.entity.createWithMouse -->

---

### jo.entity.delete()

<!-- @include: ./slots/headers.md#client|jo.entity.delete -->

Delete an entity if it exists <br>

<!-- @include: ./slots/descriptions.md#client|jo.entity.delete -->

#### Syntax

```lua
jo.entity.delete(entity)
```

#### Parameters

`entity` : _integer_
> The entity ID to delete
>

<!-- @include: ./slots/examples.md#client|jo.entity.delete -->

<!-- @include: ./slots/footers.md#client|jo.entity.delete -->

---

### jo.entity.deleteScenariosFromEntity()

<!-- @include: ./slots/headers.md#client|jo.entity.deleteScenariosFromEntity -->

Delete all scenarios from an entity <br>

<!-- @include: ./slots/descriptions.md#client|jo.entity.deleteScenariosFromEntity -->

#### Syntax

```lua
jo.entity.deleteScenariosFromEntity(entity, size, maxScenario, maxAttempt, waitTime)
```

#### Parameters

`entity` : _integer_
> The entity ID to delete scenarios from
>

`size` : _number_ <BadgeOptional />
> The size of the area to search for scenarios <br> default:2.0
>

`maxScenario` : _number_ <BadgeOptional />
> The maximum number of scenarios to search for <br> default:8
>

`maxAttempt` : _number_ <BadgeOptional />
> The maximum number of attempts to delete scenarios <br> default:10
>

`waitTime` : _number_ <BadgeOptional />
> The time to wait between attempts to delete scenarios <br> default:100
>

<!-- @include: ./slots/examples.md#client|jo.entity.deleteScenariosFromEntity -->

<!-- @include: ./slots/footers.md#client|jo.entity.deleteScenariosFromEntity -->

---

### jo.entity.fadeAndDelete()

<!-- @include: ./slots/headers.md#client|jo.entity.fadeAndDelete -->

Fade out an entity and then delete it <br>

<!-- @include: ./slots/descriptions.md#client|jo.entity.fadeAndDelete -->

#### Syntax

```lua
jo.entity.fadeAndDelete(entity, duration)
```

#### Parameters

`entity` : _integer_
> The entity ID to fade and delete
>

`duration` : _integer_ <BadgeOptional />
> Duration of the fade effect in ms <br> default:1000
>

<!-- @include: ./slots/examples.md#client|jo.entity.fadeAndDelete -->

<!-- @include: ./slots/footers.md#client|jo.entity.fadeAndDelete -->

---

### jo.entity.fadeIn()

<!-- @include: ./slots/headers.md#client|jo.entity.fadeIn -->

Fade in an entity from transparent to fully visible <br>

<!-- @include: ./slots/descriptions.md#client|jo.entity.fadeIn -->

#### Syntax

```lua
jo.entity.fadeIn(entity, duration)
```

#### Parameters

`entity` : _integer_
> The entity ID to fade in
>

`duration` : _integer_ <BadgeOptional />
> Duration of the fade effect in ms <br> default:1000
>

<!-- @include: ./slots/examples.md#client|jo.entity.fadeIn -->

<!-- @include: ./slots/footers.md#client|jo.entity.fadeIn -->

---

### jo.entity.fadeOut()

<!-- @include: ./slots/headers.md#client|jo.entity.fadeOut -->

Fade out an entity from visible to transparent <br>

<!-- @include: ./slots/descriptions.md#client|jo.entity.fadeOut -->

#### Syntax

```lua
jo.entity.fadeOut(entity, duration)
```

#### Parameters

`entity` : _integer_
> The entity ID to fade out
>

`duration` : _integer_ <BadgeOptional />
> Duration of the fade effect in ms - default:1000
>

<!-- @include: ./slots/examples.md#client|jo.entity.fadeOut -->

<!-- @include: ./slots/footers.md#client|jo.entity.fadeOut -->

---

### jo.entity.getEntityInCrosshair()

<!-- @include: ./slots/headers.md#client|jo.entity.getEntityInCrosshair -->

Raycast from the camera through the screen center and return what was hit <br>
Displays a small crosshair sprite at screen center <br>
Must be called each frame to render the crosshair <br>

<!-- @include: ./slots/descriptions.md#client|jo.entity.getEntityInCrosshair -->

#### Syntax

```lua
jo.entity.getEntityInCrosshair(distance, flags, toIgnore)
```

#### Parameters

`distance` : _number_ <BadgeOptional />
> Maximum raycast distance <br> default:`100`
>

`flags` : _integer_ <BadgeOptional />
> [Flags](https://docs.fivem.net/natives/?_0x7EE9F5D83DD4F90E) for the raycast <br> default:`16`
>

`toIgnore` : _integer_ <BadgeOptional />
> Entity to ignore in the raycast <br> default:`PlayerPedId()`
>

#### Return Value

Type : _boolean,vector3,integer_

> Hit status, hit coordinates, hit entity

<!-- @include: ./slots/examples.md#client|jo.entity.getEntityInCrosshair -->

<!-- @include: ./slots/footers.md#client|jo.entity.getEntityInCrosshair -->

---

### jo.entity.requestControl()

<!-- @include: ./slots/headers.md#client|jo.entity.requestControl -->

 <br>
 <br>
Request control of an entity and wait until it's granted <br>

<!-- @include: ./slots/descriptions.md#client|jo.entity.requestControl -->

#### Syntax

```lua
jo.entity.requestControl(entity)
```

#### Parameters

`entity` : _integer_
> The entity ID to request control of
>

<!-- @include: ./slots/examples.md#client|jo.entity.requestControl -->

<!-- @include: ./slots/footers.md#client|jo.entity.requestControl -->

