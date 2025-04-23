
## JO Functions

### jo.blip.create()

<!-- @include: ./slots/headers.md#client|jo.blip.create -->

Create a new blip <br>
This function adds a blip at the specified location with customizable properties. <br>

<!-- @include: ./slots/descriptions.md#client|jo.blip.create -->

#### Syntax

```lua
jo.blip.create(location, name, sprite, blipHash, color)

```

#### Parameters

`location` : _vector3_
> The blip location
>

`name` : _string_
> The blip name
>

`sprite` : _string_
> The name of the sprite ([Non exhaustive list](https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips))
>

`blipHash` : _integer_ <BadgeOptional />
> The blip type - default: 1664425300
>

`color` : _string_ <BadgeOptional />
> The color of the blip
>

#### Return Value

Type : _integer_

> Return the blip ID

<!-- @include: ./slots/examples.md#client|jo.blip.create -->

<!-- @include: ./slots/footers.md#client|jo.blip.create -->

