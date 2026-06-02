
## JO Functions

### jo.minigame.cancel()

<!-- @include: ./slots/headers.md#client|jo.minigame.cancel -->

Cancels the currently running minigame. <br>

<!-- @include: ./slots/descriptions.md#client|jo.minigame.cancel -->

#### Syntax

```lua
jo.minigame.cancel()
```

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#client|jo.minigame.cancel -->

<!-- @include: ./slots/footers.md#client|jo.minigame.cancel -->

---

### jo.minigame.lockpick()

<!-- @include: ./slots/headers.md#client|jo.minigame.lockpick -->

Starts the lockpick minigame. <br>

<!-- @include: ./slots/descriptions.md#client|jo.minigame.lockpick -->

#### Syntax

```lua
jo.minigame.lockpick(config)
```

#### Parameters

`config` : _table_ <BadgeOptional />

> The lockpick configuration
>

> `config.pins` : _integer_ - Number of lockpicks available before failure; default: 1 <BadgeOptional />
> 
> `config.pinHealth` : _integer_ - Health of each lockpick; default: 100 <BadgeOptional />
> 
> `config.pinDamage` : _integer_ - Damage applied when forcing the lock at a wrong angle; default: 20 <BadgeOptional />
> 
> `config.pinDamageInterval` : _integer_ - Minimum delay in milliseconds between two damage ticks; default: 150 <BadgeOptional />
> 
> `config.solvePadding` : _number_ - Angle tolerance in degrees around the correct position; default: 4 <BadgeOptional />
> 
> `config.maxDistFromSolve` : _number_ - Maximum angle distance used to calculate cylinder allowance; default: 45 <BadgeOptional />
> 
> `config.cylRotSpeed` : _number_ - Cylinder rotation speed per tick while pushing; default: 3 <BadgeOptional />
> 
> `config.onPinBroken` : _function_ - Called each time a lockpick pin breaks <BadgeOptional />
> 
> `config.animPostFx` : _string|false_ - AnimPostFX effect to play while the minigame is open; default: "PauseMenuIn"; use false to disable <BadgeOptional />
> 

#### Return Value

Type : _"success"|"failed"|"canceled"|"busy"_


<!-- @include: ./slots/examples.md#client|jo.minigame.lockpick -->

<!-- @include: ./slots/footers.md#client|jo.minigame.lockpick -->

---

### jo.minigame.qte()

<!-- @include: ./slots/headers.md#client|jo.minigame.qte -->

Starts the QTE minigame. <br>

<!-- @include: ./slots/descriptions.md#client|jo.minigame.qte -->

#### Syntax

```lua
jo.minigame.qte(config)
```

#### Parameters

`config` : _table_ <BadgeOptional />

> The QTE configuration
>

> `config.roundCount` : _integer_ - Number of QTE rounds to complete; default: 4 <BadgeOptional />
> 
> `config.allowedKeys` : _string[]_ - Allowed keys; default: A-Z <BadgeOptional />
> 
> `config.rotationCount` : _integer_ - Number of full indicator rotations allowed per round; default: 1 <BadgeOptional />
> 
> `config.targetStartAngle` : _table_ - Target segment start angle range in degrees <BadgeOptional />
> 
> > `config.targetStartAngle.min` : _number_ - Minimum target start angle; default: 100 <BadgeOptional />
> > 
> > `config.targetStartAngle.max` : _number_ - Maximum target start angle; default: 300 <BadgeOptional />
> > 
> `config.targetArcSize` : _table_ - Target segment size angle range in degrees <BadgeOptional />
> 
> > `config.targetArcSize.min` : _number_ - Minimum target size; default: 50 <BadgeOptional />
> > 
> > `config.targetArcSize.max` : _number_ - Maximum target size; default: 60 <BadgeOptional />
> > 
> `config.rotationDuration` : _table_ - Full rotation duration range in milliseconds <BadgeOptional />
> 
> > `config.rotationDuration.min` : _integer_ - Minimum duration; default: 2000 <BadgeOptional />
> > 
> > `config.rotationDuration.max` : _integer_ - Maximum duration; default: 3000 <BadgeOptional />
> > 
> `config.introDelay` : _integer_ - Delay in milliseconds before the indicator starts after the intro animation; default: 200 <BadgeOptional />
> 
> `config.successDelay` : _integer_ - Delay in milliseconds before continuing after a successful round; default: 450 <BadgeOptional />
> 
> `config.failureDelay` : _integer_ - Delay in milliseconds before closing after a failed round; default: 550 <BadgeOptional />
> 
> `config.roundDelay` : _integer_ - Delay in milliseconds between a successful round and the next intro; default: 100 <BadgeOptional />
> 
> `config.animPostFx` : _string|false_ - AnimPostFX effect to play while the minigame is open; default: "PauseMenuIn"; use false to disable <BadgeOptional />
> 

#### Return Value

Type : _"success"|"failed"|"canceled"|"busy"_


<!-- @include: ./slots/examples.md#client|jo.minigame.qte -->

<!-- @include: ./slots/footers.md#client|jo.minigame.qte -->

