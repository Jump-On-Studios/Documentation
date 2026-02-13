# Configuration Variables (Convars)

This document lists all configuration variables used in jo_libs, grouped by module.

Total convars: 52

## Modules

### Camera

| Convar | Side | Type | Default | Description |
|--------|------|------|---------|-------------|
| `jo_libs:camera:keys:exit` | <Badge type="client" text="Client" /> | String | `INPUT_QUIT` |  |
| `jo_libs:camera:keys:moveDown` | <Badge type="client" text="Client" /> | String | `INPUT_SCRIPTED_FLY_ZDOWN` | Right stick up (keyboard: F) |
| `jo_libs:camera:keys:moveUp` | <Badge type="client" text="Client" /> | String | `INPUT_SCRIPTED_FLY_ZUP` | Square/X button (keyboard: SPACE) - Context-aware (Move Up / Play-Pause) |
| `jo_libs:camera:keys:moveX` | <Badge type="client" text="Client" /> | String | `INPUT_SCRIPTED_FLY_LR` | A/D keys |
| `jo_libs:camera:keys:moveY` | <Badge type="client" text="Client" /> | String | `INPUT_SCRIPTED_FLY_UD` | W/S keys |
| `jo_libs:camera:keys:speedDown` | <Badge type="client" text="Client" /> | String | `INPUT_SELECT_NEXT_WEAPON` | Scroll down |
| `jo_libs:camera:keys:speedUp` | <Badge type="client" text="Client" /> | String | `INPUT_SELECT_PREV_WEAPON` | Scroll up |
| `jo_libs:camera:movement:maxSpeed` | <Badge type="client" text="Client" /> | Float | `0.5` |  |
| `jo_libs:camera:movement:minSpeed` | <Badge type="client" text="Client" /> | Float | `0.01` |  |
| `jo_libs:camera:movement:speed` | <Badge type="client" text="Client" /> | Float | `0.05` |  |
| `jo_libs:camera:movement:speedIncrement` | <Badge type="client" text="Client" /> | Float | `0.05` |  |
| `jo_libs:camera:rotation:maxY` | <Badge type="client" text="Client" /> | Float | `80.0` |  |
| `jo_libs:camera:rotation:minY` | <Badge type="client" text="Client" /> | Float | `-80.0` |  |
| `jo_libs:camera:rotation:speed` | <Badge type="client" text="Client" /> | Float | `5.0` |  |
| `jo_libs:camera:strings:exit` | <Badge type="client" text="Client" /> | String | `Exit` |  |
| `jo_libs:camera:strings:move` | <Badge type="client" text="Client" /> | String | `Move` |  |
| `jo_libs:camera:strings:moveUpDown` | <Badge type="client" text="Client" /> | String | `Move Up/Down` |  |
| `jo_libs:camera:strings:speed` | <Badge type="client" text="Client" /> | String | `Speed %.2f` |  |

### Emit

| Convar | Side | Type | Default | Description |
|--------|------|------|---------|-------------|
| `jo_libs:emit:bps` | <Badge type="shared" text="Shared" /> | Integer | `100000` | Default bit/s for latent events |

### Framework-bridge

| Convar | Side | Type | Default | Description |
|--------|------|------|---------|-------------|
| `jo_libs:framework` | <Badge type="shared" text="Shared" /> | String | `false` | Force the framework |

### Gizmo

| Convar | Side | Type | Default | Description |
|--------|------|------|---------|-------------|
| `jo_libs:gizmo:allowRotateX` | <Badge type="client" text="Client" /> | Boolean | `true` | Allow rotation on X-axis |
| `jo_libs:gizmo:allowRotateY` | <Badge type="client" text="Client" /> | Boolean | `true` | Allow rotation on Y-axis |
| `jo_libs:gizmo:allowRotateZ` | <Badge type="client" text="Client" /> | Boolean | `true` | Allow rotation on Z-axis |
| `jo_libs:gizmo:allowSnapToGround` | <Badge type="client" text="Client" /> | Boolean | `true` | Allow snapping to ground |
| `jo_libs:gizmo:allowTranslateX` | <Badge type="client" text="Client" /> | Boolean | `true` | Allow translation on X-axis |
| `jo_libs:gizmo:allowTranslateY` | <Badge type="client" text="Client" /> | Boolean | `true` | Allow translation on Y-axis |
| `jo_libs:gizmo:allowTranslateZ` | <Badge type="client" text="Client" /> | Boolean | `true` | Allow translation on Z-axis |
| `jo_libs:gizmo:enableCam` | <Badge type="client" text="Client" /> | Boolean | `true` | Enable/Disable camera feature |
| `jo_libs:gizmo:keys:cameraSpeedDown` | <Badge type="client" text="Client" /> | Integer | ``INPUT_SELECT_NEXT_WEAPON`` | Decrease camera speed |
| `jo_libs:gizmo:keys:cameraSpeedUp` | <Badge type="client" text="Client" /> | Integer | ``INPUT_SELECT_PREV_WEAPON`` | Increase camera speed |
| `jo_libs:gizmo:keys:cancel` | <Badge type="client" text="Client" /> | Integer | ``INPUT_GAME_MENU_TAB_RIGHT_SECONDARY`` | Cancel operation |
| `jo_libs:gizmo:keys:confirm` | <Badge type="client" text="Client" /> | Integer | ``INPUT_FRONTEND_ACCEPT`` | Confirm placement |
| `jo_libs:gizmo:keys:focusEntity` | <Badge type="client" text="Client" /> | Integer | ``INPUT_SHOP_SPECIAL`` | Toggle focus on entity |
| `jo_libs:gizmo:keys:moveDown` | <Badge type="client" text="Client" /> | Integer | ``INPUT_FRONTEND_RUP`` | Move down |
| `jo_libs:gizmo:keys:moveUp` | <Badge type="client" text="Client" /> | Integer | ``INPUT_FRONTEND_X`` | Move up |
| `jo_libs:gizmo:keys:moveX` | <Badge type="client" text="Client" /> | Integer | ``INPUT_SCRIPTED_FLY_LR`` | Move left/right |
| `jo_libs:gizmo:keys:moveY` | <Badge type="client" text="Client" /> | Integer | ``INPUT_SCRIPTED_FLY_UD`` | Move forward/backward |
| `jo_libs:gizmo:keys:rotationSnap` | <Badge type="client" text="Client" /> | Integer | ``INPUT_FRONTEND_Y`` | Rotation snap key |
| `jo_libs:gizmo:keys:snapToGround` | <Badge type="client" text="Client" /> | Integer | ``INPUT_INTERACT_OPTION1`` | Snap entity to ground |
| `jo_libs:gizmo:keys:switchMode` | <Badge type="client" text="Client" /> | Integer | ``INPUT_RELOAD`` | Switch between translate/rotate modes |
| `jo_libs:gizmo:maxCamDistance` | <Badge type="client" text="Client" /> | Integer | `80` | Maximum distance camera can be moved from player |
| `jo_libs:gizmo:maxDistance` | <Badge type="client" text="Client" /> | Integer | `100` | Maximum distance entity can be moved from starting position (set to false to disable) |
| `jo_libs:gizmo:maxMovementSpeed` | <Badge type="client" text="Client" /> | Float | `0.2` | Maximum movement speed for camera |
| `jo_libs:gizmo:maxY` | <Badge type="client" text="Client" /> | Integer | `40` | Maximum Y value for camera rotation |
| `jo_libs:gizmo:minMovementSpeed` | <Badge type="client" text="Client" /> | Float | `0.001` | Minimum movement speed for camera |
| `jo_libs:gizmo:minY` | <Badge type="client" text="Client" /> | Integer | `-40` | Minimum Y value for camera rotation |
| `jo_libs:gizmo:movementSpeed` | <Badge type="client" text="Client" /> | Float | `0.1` | Default movement speed for camera |
| `jo_libs:gizmo:movementSpeedIncrement` | <Badge type="client" text="Client" /> | Float | `0.01` | Increment value when adjusting camera speed |
| `jo_libs:gizmo:rotationSnap` | <Badge type="client" text="Client" /> | Integer | `5` | Rotation snap value |

### I18n

| Convar | Side | Type | Default | Description |
|--------|------|------|---------|-------------|
| `jo_libs:i18n:allowSwitchLocale` | <Badge type="client" text="Client" /> | String | `true` | Allow switching locale |
| `jo_libs:i18n:localeCommand` | <Badge type="client" text="Client" /> | String | `setLocale` | Command to switch locale |
| `jo_libs:i18n:locale` | <Badge type="shared" text="Shared" /> | String | `en` |  |