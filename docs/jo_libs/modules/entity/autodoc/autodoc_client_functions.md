
## JO Functions

### jo.entity.create()

<!-- @include: ./slots/headers.md#jo.entity.create -->

Create a new entity at specified location <br>

<!-- @include: ./slots/descriptions.md#jo.entity.create -->

#### Syntax

```lua
jo.entity.create(model, coords, heading, networked, fadeDuration)
```

#### Parameters

`model` : _string_
> The model name of the entity to create
>

`coords` : _vec3_
> The coordinates where the entity will be created
>

`heading` : _float_
> The heading direction for the entity
>

`networked` : _boolean_
> Whether the entity should be networked
>

`fadeDuration` : _integer_
> Duration of the fade-in effect in ms - default:0
>

#### Return Value

Type : _integer_

> The created entity ID

<!-- @include: ./slots/examples.md#jo.entity.create -->

<!-- @include: ./slots/footers.md#jo.entity.create -->

---

### jo.entity.createWithMouse()

<!-- @include: ./slots/headers.md#jo.entity.createWithMouse -->

Create an entity that follows the mouse cursor for placement <br>

<!-- @include: ./slots/descriptions.md#jo.entity.createWithMouse -->

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

Type : _integer,vector3,number_

> The created entity ID, final position, final heading

<!-- @include: ./slots/examples.md#jo.entity.createWithMouse -->

<!-- @include: ./slots/footers.md#jo.entity.createWithMouse -->

---

### jo.entity.delete()

<!-- @include: ./slots/headers.md#jo.entity.delete -->

Delete an entity if it exists <br>

<!-- @include: ./slots/descriptions.md#jo.entity.delete -->

#### Syntax

```lua
jo.entity.delete(entity)
```

#### Parameters

`entity` : _integer_
> The entity ID to delete
>

<!-- @include: ./slots/examples.md#jo.entity.delete -->

<!-- @include: ./slots/footers.md#jo.entity.delete -->

---

### jo.entity.fadeAndDelete()

<!-- @include: ./slots/headers.md#jo.entity.fadeAndDelete -->

Fade out an entity and then delete it <br>

<!-- @include: ./slots/descriptions.md#jo.entity.fadeAndDelete -->

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

<!-- @include: ./slots/examples.md#jo.entity.fadeAndDelete -->

<!-- @include: ./slots/footers.md#jo.entity.fadeAndDelete -->

---

### jo.entity.fadeIn()

<!-- @include: ./slots/headers.md#jo.entity.fadeIn -->

Fade in an entity from transparent to fully visible <br>

<!-- @include: ./slots/descriptions.md#jo.entity.fadeIn -->

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

<!-- @include: ./slots/examples.md#jo.entity.fadeIn -->

<!-- @include: ./slots/footers.md#jo.entity.fadeIn -->

---

### jo.entity.fadeOut()

<!-- @include: ./slots/headers.md#jo.entity.fadeOut -->

Fade out an entity from visible to transparent <br>

<!-- @include: ./slots/descriptions.md#jo.entity.fadeOut -->

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

<!-- @include: ./slots/examples.md#jo.entity.fadeOut -->

<!-- @include: ./slots/footers.md#jo.entity.fadeOut -->

---

### jo.entity.requestControl()

<!-- @include: ./slots/headers.md#jo.entity.requestControl -->

 <br>
 <br>
Request control of an entity and wait until it's granted <br>

<!-- @include: ./slots/descriptions.md#jo.entity.requestControl -->

#### Syntax

```lua
jo.entity.requestControl(entity)
```

#### Parameters

`entity` : _integer_
> The entity ID to request control of
>

<!-- @include: ./slots/examples.md#jo.entity.requestControl -->

<!-- @include: ./slots/footers.md#jo.entity.requestControl -->

