
## JO Functions

### jo.gizmo.cancel()

<!-- @include: ./slots/headers.md#client|jo.gizmo.cancel -->

Cancels the currently active gizmo interface <br>

<!-- @include: ./slots/descriptions.md#client|jo.gizmo.cancel -->

#### Syntax

```lua
jo.gizmo.cancel()
```

<!-- @include: ./slots/examples.md#client|jo.gizmo.cancel -->

<!-- @include: ./slots/footers.md#client|jo.gizmo.cancel -->

---

### jo.gizmo.moveEntity()

<!-- @include: ./slots/headers.md#client|jo.gizmo.moveEntity -->

Setup a gizmo interface to move an entity in 3D space <br>
Allows for precise positioning and rotation of entities through a visual interface <br>
Uses a camera system for better manipulation when enabled <br>

<!-- @include: ./slots/descriptions.md#client|jo.gizmo.moveEntity -->

#### Syntax

```lua
jo.gizmo.moveEntity(entity, cfg, allowPlace)
```

#### Parameters

`entity` : _integer_
> The entity to move
>

`cfg` : _table_ <BadgeOptional />

> Configuration options to override [defaults](#default-configuration)
>

> `cfg.enableCam` : _boolean_ - Enable/disable camera feature - default based on config
> 
> `cfg.maxDistance` : _number_ - Max distance the entity can be moved from starting position - default based on config
> 
> `cfg.maxCamDistance` : _number_ - Max distance the camera can be moved from player - default based on config
> 
> `cfg.minY` : _number_ - Min Y value from starting position for camera - default based on config
> 
> `cfg.maxY` : _number_ - Max Y value from starting position for camera - default based on config
> 
> `cfg.movementSpeed` : _number_ - Movement speed for camera - default based on config
> 
> `cfg.allowTranslateX` : _boolean_ - Allow translation on X-axis - default `true`
> 
> `cfg.allowTranslateY` : _boolean_ - Allow translation on Y-axis - default `true`
> 
> `cfg.allowTranslateZ` : _boolean_ - Allow translation on Z-axis - default `true`
> 
> `cfg.allowRotateX` : _boolean_ - Allow rotation on X-axis - default `true`
> 
> `cfg.allowRotateY` : _boolean_ - Allow rotation on Y-axis - default `true`
> 
> `cfg.allowRotateZ` : _boolean_ - Allow rotation on Z-axis - default `true`
> 
> `cfg.allowSnapToGround` : _boolean_ - Allow snapping to ground - default `true`
> 
> `cfg.rotationSnap` : _number_ - Rotation snap value - default `5`
> 
> `cfg.onMove` : _function_ - Optional function fired when the entity move with the gizmo
> 

`allowPlace` : _function_ <BadgeOptional />
> Optional callback to validate placement - receives proposed position as parameter
>

#### Return Value

Type : _table|nil_

> Returns entity position and rotation data when completed, nil if already active

<!-- @include: ./slots/examples.md#client|jo.gizmo.moveEntity -->

<!-- @include: ./slots/footers.md#client|jo.gizmo.moveEntity -->

