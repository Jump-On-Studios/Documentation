
## JO Functions

### jo.animation.goToCoords()

<!-- @include: ./slots/headers.md#client|jo.animation.goToCoords -->

Function to move a ped to a destination <br>

<!-- @include: ./slots/descriptions.md#client|jo.animation.goToCoords -->

#### Syntax

```lua
jo.animation.goToCoords(ped, coords, speed, waiter, distanceToStop)

```

#### Parameters

`ped` : _integer_
> The ped to move
>

`coords` : _vector_
> vec3 or vec4 - The coordinate of the destination <br> If vector4 is used, the ped will stop at the end and turn to the desired heading
>

`speed` : _float_ <BadgeOptional />
> The speed of the walk - default:1.0
>

`waiter` : _boolean_ <BadgeOptional />
> If need to wait the reach of location to end the function - default:false
>

`distanceToStop` : _float_ <BadgeOptional />
> The distance between the ped and the destination to stop it - default:0.0
>

<!-- @include: ./slots/examples.md#client|jo.animation.goToCoords -->

<!-- @include: ./slots/footers.md#client|jo.animation.goToCoords -->

---

### jo.animation.load()

<!-- @include: ./slots/headers.md#client|jo.animation.load -->

Load the dictionnary of animation <br>

<!-- @include: ./slots/descriptions.md#client|jo.animation.load -->

#### Syntax

```lua
jo.animation.load(dict, waiter)

```

#### Parameters

`dict` : _string_
> The dictionnary of the animation
>

`waiter` : _boolean_ <BadgeOptional />
> If need to wait the loading to end the function - default:false
>

<!-- @include: ./slots/examples.md#client|jo.animation.load -->

<!-- @include: ./slots/footers.md#client|jo.animation.load -->

---

### jo.animation.play()

<!-- @include: ./slots/headers.md#client|jo.animation.play -->

Play animation. The function load automatically necessary resources. <br>

<!-- @include: ./slots/descriptions.md#client|jo.animation.play -->

#### Syntax

```lua
jo.animation.play(ped, dict, name, duration, flag, offset)

```

#### Parameters

`ped` : _integer_
> The entity where the animation will be played
>

`dict` : _string_
> The dictionnary of the animation
>

`name` : _string_
> The name of the animation
>

`duration` : _integer_ <BadgeOptional />
> Duration of the animation in ms - default:-1
>

`flag` : _integer_ <BadgeOptional />
> The flag of the animation - default:0
>

`offset` : _float_ <BadgeOptional />
> The offset of the animation 0.0 <> 1.0 - default: 0.0
>

#### Return Value

Type : _number_


<!-- @include: ./slots/examples.md#client|jo.animation.play -->

<!-- @include: ./slots/footers.md#client|jo.animation.play -->

---

### jo.animation.setDesiredHeading()

<!-- @include: ./slots/headers.md#client|jo.animation.setDesiredHeading -->

Turn the ped to the desired heading <br>

<!-- @include: ./slots/descriptions.md#client|jo.animation.setDesiredHeading -->

#### Syntax

```lua
jo.animation.setDesiredHeading(ped, heading, waiter)

```

#### Parameters

`ped` : _integer_
> The ped to turn
>

`heading` : _number_
> The desired heading
>

`waiter` : _boolean_ <BadgeOptional />
> If need to reach the heading to end the function - default:true
>

<!-- @include: ./slots/examples.md#client|jo.animation.setDesiredHeading -->

<!-- @include: ./slots/footers.md#client|jo.animation.setDesiredHeading -->

