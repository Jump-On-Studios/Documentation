
## JO Functions

### jo.debugger.drawSphere()

<!-- @include: ./slots/headers.md#jo.debugger.drawSphere -->

Draws a 3D sphere at the specified coordinates. <br>

<!-- @include: ./slots/descriptions.md#jo.debugger.drawSphere -->

#### Syntax

```lua
jo.debugger.drawSphere(coords, size, color)
```

#### Parameters

`coords` : _vector_
> The coordinates where the sphere will be drawn
>

`size` : _vector_ <BadgeOptional />
> The size of the sphere in x,y,z dimensions - default:vec3(0.5, 0.5, 0.5)
>

`color` : _table_ <BadgeOptional />

> The color of the sphere
>

> `color.r` : _number_ - Red component 0-255 - default:255
> 
> `color.g` : _number_ - Green component 0-255 - default:0
> 
> `color.b` : _number_ - Blue component 0-255 - default:0
> 
> `color.a` : _number_ - Alpha/transparency 0-255 - default:100
> 

<!-- @include: ./slots/examples.md#jo.debugger.drawSphere -->

<!-- @include: ./slots/footers.md#jo.debugger.drawSphere -->

---

### jo.debugger.drawText()

<!-- @include: ./slots/headers.md#jo.debugger.drawText -->

Draws text on the screen with specified parameters. <br>

<!-- @include: ./slots/descriptions.md#jo.debugger.drawText -->

#### Syntax

```lua
jo.debugger.drawText(text, x, y)
```

#### Parameters

`text` : _string_
> The text content to be displayed
>

`x` : _number_ <BadgeOptional />
> The x-coordinate position on screen - default:0.01
>

`y` : _number_ <BadgeOptional />
> The y-coordinate position on screen - if not provided, uses and increments the global offset
>

<!-- @include: ./slots/examples.md#jo.debugger.drawText -->

<!-- @include: ./slots/footers.md#jo.debugger.drawText -->

---

### jo.debugger.resetText()

<!-- @include: ./slots/headers.md#jo.debugger.resetText -->

Resets the text display offset to its starting position. <br>

<!-- @include: ./slots/descriptions.md#jo.debugger.resetText -->

#### Syntax

```lua
jo.debugger.resetText()
```

<!-- @include: ./slots/examples.md#jo.debugger.resetText -->

<!-- @include: ./slots/footers.md#jo.debugger.resetText -->

