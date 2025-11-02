## Configuration Variables (Convars)

| Convar | Side | Type | Default | Description |
|--------|------|------|---------|-------------|
| `jo_libs:gizmo:allowRotateX` | Client | Boolean | `true` | Allow rotation on X-axis |
| `jo_libs:gizmo:allowRotateY` | Client | Boolean | `true` | Allow rotation on Y-axis |
| `jo_libs:gizmo:allowRotateZ` | Client | Boolean | `true` | Allow rotation on Z-axis |
| `jo_libs:gizmo:allowSnapToGround` | Client | Boolean | `true` | Allow snapping to ground |
| `jo_libs:gizmo:allowTranslateX` | Client | Boolean | `true` | Allow translation on X-axis |
| `jo_libs:gizmo:allowTranslateY` | Client | Boolean | `true` | Allow translation on Y-axis |
| `jo_libs:gizmo:allowTranslateZ` | Client | Boolean | `true` | Allow translation on Z-axis |
| `jo_libs:gizmo:enableCam` | Client | Boolean | `true` | Enable/Disable camera feature |
| `jo_libs:gizmo:keys:cameraSpeedDown` | Client | Integer | ``INPUT_SELECT_NEXT_WEAPON`` | Decrease camera speed |
| `jo_libs:gizmo:keys:cameraSpeedUp` | Client | Integer | ``INPUT_SELECT_PREV_WEAPON`` | Increase camera speed |
| `jo_libs:gizmo:keys:cancel` | Client | Integer | ``INPUT_GAME_MENU_TAB_RIGHT_SECONDARY`` | Cancel operation |
| `jo_libs:gizmo:keys:confirm` | Client | Integer | ``INPUT_FRONTEND_ACCEPT`` | Confirm placement |
| `jo_libs:gizmo:keys:focusEntity` | Client | Integer | ``INPUT_SHOP_SPECIAL`` | Toggle focus on entity |
| `jo_libs:gizmo:keys:moveDown` | Client | Integer | ``INPUT_FRONTEND_RUP`` | Move down |
| `jo_libs:gizmo:keys:moveUp` | Client | Integer | ``INPUT_FRONTEND_X`` | Move up |
| `jo_libs:gizmo:keys:moveX` | Client | Integer | ``INPUT_SCRIPTED_FLY_LR`` | Move left/right |
| `jo_libs:gizmo:keys:moveY` | Client | Integer | ``INPUT_SCRIPTED_FLY_UD`` | Move forward/backward |
| `jo_libs:gizmo:keys:rotationSnap` | Client | Integer | ``INPUT_FRONTEND_Y`` | Rotation snap key |
| `jo_libs:gizmo:keys:snapToGround` | Client | Integer | ``INPUT_INTERACT_OPTION1`` | Snap entity to ground |
| `jo_libs:gizmo:keys:switchMode` | Client | Integer | ``INPUT_RELOAD`` | Switch between translate/rotate modes |
| `jo_libs:gizmo:maxCamDistance` | Client | Integer | `80` | Maximum distance camera can be moved from player |
| `jo_libs:gizmo:maxDistance` | Client | Integer | `100` | Maximum distance entity can be moved from starting position (set to false to disable) |
| `jo_libs:gizmo:maxMovementSpeed` | Client | Float | `0.2` | Maximum movement speed for camera |
| `jo_libs:gizmo:maxY` | Client | Integer | `40` | Maximum Y value for camera rotation |
| `jo_libs:gizmo:minMovementSpeed` | Client | Float | `0.001` | Minimum movement speed for camera |
| `jo_libs:gizmo:minY` | Client | Integer | `-40` | Minimum Y value for camera rotation |
| `jo_libs:gizmo:movementSpeed` | Client | Float | `0.1` | Default movement speed for camera |
| `jo_libs:gizmo:movementSpeedIncrement` | Client | Float | `0.01` | Increment value when adjusting camera speed |
| `jo_libs:gizmo:rotationSnap` | Client | Integer | `5` | Rotation snap value |