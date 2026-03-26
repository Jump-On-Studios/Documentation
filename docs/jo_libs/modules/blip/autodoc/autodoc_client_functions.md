
## JO Functions

### jo.blip.create()

<!-- @include: ./slots/headers.md#client|jo.blip.create -->

Create a new blip <br>
This function adds a blip at the specified location or on an entity with customizable properties. <br>

<!-- @include: ./slots/descriptions.md#client|jo.blip.create -->

#### Syntax

```lua
jo.blip.create(locationOrEntity, name, sprite, blipHash, color)
```

#### Parameters

`locationOrEntity` : _vector3|integer_

`name` : _string_

`sprite` : _string|integer_

`blipHash` : _integer_ <BadgeOptional />

`color` : _string_ <BadgeOptional />

#### Return Value

Type : _integer|false_


<!-- @include: ./slots/examples.md#client|jo.blip.create -->

<!-- @include: ./slots/footers.md#client|jo.blip.create -->

