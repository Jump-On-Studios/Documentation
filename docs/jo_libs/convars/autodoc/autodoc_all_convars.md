# Configuration Variables (Convars)

This document lists all configuration variables used in jo_libs, grouped by module.

Total convars: 20

## Modules

### Emit
| Convar             | Side   | Type    | Default | Description |
| ------------------ | ------ | ------- | ------- | ----------- |
| `jo_libs:emit:bps` | Server | Integer | `20000` |             |

## Gizmo
| Convar                               | Side   | Type    | Default                                 | Description                                                                              |
| ------------------------------------ | ------ | ------- | --------------------------------------- | ---------------------------------------------------------------------------------------- |
| `jo_libs:gizmo:enableCam`            | Client | Boolean | `true`                                  | Enable/Disable camera feature                                                            |
| `jo_libs:gizmo:keys:cameraSpeedDown` | Client | Integer | ``INPUT_SELECT_NEXT_WEAPON``            | Scroll UP                                                                                |
| `jo_libs:gizmo:keys:cameraSpeedUp`   | Client | Integer | ``INPUT_SELECT_PREV_WEAPON``            | Scroll UP                                                                                |
| `jo_libs:gizmo:keys:cancel`          | Client | Integer | ``INPUT_GAME_MENU_TAB_RIGHT_SECONDARY`` | X                                                                                        |
| `jo_libs:gizmo:keys:confirm`         | Client | Integer | ``INPUT_FRONTEND_ACCEPT``               | ENTER                                                                                    |
| `jo_libs:gizmo:keys:focusEntity`     | Client | Integer | ``INPUT_SHOP_SPECIAL``                  | F                                                                                        |
| `jo_libs:gizmo:keys:moveDown`        | Client | Integer | ``INPUT_FRONTEND_RUP``                  | E                                                                                        |
| `jo_libs:gizmo:keys:moveUp`          | Client | Integer | ``INPUT_FRONTEND_X``                    | Q                                                                                        |
| `jo_libs:gizmo:keys:moveX`           | Client | Integer | ``INPUT_SCRIPTED_FLY_LR``               | W_S                                                                                      |
| `jo_libs:gizmo:keys:moveY`           | Client | Integer | ``INPUT_SCRIPTED_FLY_UD``               | A-D                                                                                      |
| `jo_libs:gizmo:keys:snapToGround`    | Client | Integer | ``INPUT_INTERACT_OPTION1``              | G                                                                                        |
| `jo_libs:gizmo:keys:switchMode`      | Client | Integer | ``INPUT_RELOAD``                        | R                                                                                        |
| `jo_libs:gizmo:maxCamDistance`       | Client | Integer | `80`                                    | Max distance the camera can be moved from the player                                     |
| `jo_libs:gizmo:maxDistance`          | Client | Integer | `100`                                   | Max disatnce the gizmo can be moved from the starting position (set to false to disable) |
| `jo_libs:gizmo:maxMovementSpeed`     | Client | Float   | `0.2`                                   | Max movement speed for camera                                                            |
| `jo_libs:gizmo:maxY`                 | Client | Integer | `40`                                    | Max Y value starting position for camera                                                 |
| `jo_libs:gizmo:minMovementSpeed`     | Client | Float   | `0.001`                                 | min movement speed for camera                                                            |
| `jo_libs:gizmo:minY`                 | Client | Integer | `-40`                                   | Min Y value from starting position for camera                                            |
| `jo_libs:gizmo:movementSpeed`        | Client | Float   | `0.1`                                   | Movement speed for camera                                                                |