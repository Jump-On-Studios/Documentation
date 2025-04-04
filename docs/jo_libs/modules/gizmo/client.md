---
outline: [2,3]
---
# Gizmo

Gizmo module is a specialized tool for manipulating entities in 3D space within RedM. It provides a visual interface for moving, rotating, and precisely positioning objects with optional camera controls.

<!--@include: ./autodoc/autodoc_client_functions.md-->

## Configuration

The Gizmo module uses a configuration system that can be overridden through server convars. Below is the default configuration and how to customize it for your server.

### Default Configuration

```lua
local config = {
    enableCam = true,                 -- Enable/Disable camera feature
    maxDistance = 100,                -- Max distance the gizmo can be moved from starting position
    maxCamDistance = 80,              -- Max distance the camera can be moved from the player
    minY = -40,                       -- Min Y value from starting position for camera
    maxY = 40,                        -- Max Y value starting position for camera
    movementSpeed = 0.1,              -- Movement speed for camera
    maxMovementSpeed = 0.2,           -- Max movement speed for camera
    minMovementSpeed = 0.001,         -- Min movement speed for camera
    movementSpeedIncrement = 0.01,    -- Increment value when adjusting camera speed
    keys = {
        moveX = `INPUT_SCRIPTED_FLY_LR`,                     -- Left & Right (A-D)
        moveY = `INPUT_SCRIPTED_FLY_UD`,                     -- Forward & Backward (W-S)
        moveUp = `INPUT_FRONTEND_X`,                         -- Move Up (Q)
        moveDown = `INPUT_FRONTEND_RUP`,                     -- Move Down (E)
        cancel = `INPUT_GAME_MENU_TAB_RIGHT_SECONDARY`,      -- Cancel (X)
        switchMode = `INPUT_RELOAD`,                         -- Switch mode (R)
        snapToGround = `INPUT_INTERACT_OPTION1`,             -- Snap to ground (G)
        confirm = `INPUT_FRONTEND_ACCEPT`,                   -- Confirm (ENTER)
        focusEntity = `INPUT_SHOP_SPECIAL`,                  -- Focus entity (F)
        cameraSpeedUp = `INPUT_SELECT_PREV_WEAPON`,          -- Increase camera speed (Scroll UP)
        cameraSpeedDown = `INPUT_SELECT_NEXT_WEAPON`,        -- Decrease camera speed (Scroll DOWN)
    }
}
```

### Overriding Configuration with Convars

You can override any of these settings by adding convars to your **server.cfg** file. The Gizmo module reads these convars at startup.

#### Available Convars

| Convar | Type | Default | Description |
|--------|------|---------|-------------|
| `jo_libs:gizmo:enableCam` | Boolean | `true` | Enable/disable the camera feature |
| `jo_libs:gizmo:maxDistance` | Integer | `100` | Maximum distance entity can be moved from starting position |
| `jo_libs:gizmo:maxCamDistance` | Integer | `80` | Maximum distance camera can be moved from player |
| `jo_libs:gizmo:minY` | Integer | `-40` | Minimum Y value for camera rotation |
| `jo_libs:gizmo:maxY` | Integer | `40` | Maximum Y value for camera rotation |
| `jo_libs:gizmo:movementSpeed` | Float | `0.1` | Default movement speed for camera |
| `jo_libs:gizmo:maxMovementSpeed` | Float | `0.2` | Maximum movement speed for camera |
| `jo_libs:gizmo:minMovementSpeed` | Float | `0.001` | Minimum movement speed for camera |
| `jo_libs:gizmo:movementSpeedIncrement` | Float | `0.01` | Increment value when adjusting camera speed |

#### Key Binding Convars

| Convar | Default | Description |
|--------|---------|-------------|
| `jo_libs:gizmo:keys:moveX` | `INPUT_SCRIPTED_FLY_LR` | Move left/right |
| `jo_libs:gizmo:keys:moveY` | `INPUT_SCRIPTED_FLY_UD` | Move forward/backward |
| `jo_libs:gizmo:keys:moveUp` | `INPUT_FRONTEND_X` | Move up |
| `jo_libs:gizmo:keys:moveDown` | `INPUT_FRONTEND_RUP` | Move down |
| `jo_libs:gizmo:keys:cancel` | `INPUT_GAME_MENU_TAB_RIGHT_SECONDARY` | Cancel operation |
| `jo_libs:gizmo:keys:switchMode` | `INPUT_RELOAD` | Switch between translate/rotate modes |
| `jo_libs:gizmo:keys:snapToGround` | `INPUT_INTERACT_OPTION1` | Snap entity to ground |
| `jo_libs:gizmo:keys:confirm` | `INPUT_FRONTEND_ACCEPT` | Confirm placement |
| `jo_libs:gizmo:keys:focusEntity` | `INPUT_SHOP_SPECIAL` | Toggle focus on entity |
| `jo_libs:gizmo:keys:cameraSpeedUp` | `INPUT_SELECT_PREV_WEAPON` | Increase camera speed |
| `jo_libs:gizmo:keys:cameraSpeedDown` | `INPUT_SELECT_NEXT_WEAPON` | Decrease camera speed |

### Example Configuration in server.cfg

Here's how you can override some of the default settings in your server.cfg file:

```
# Gizmo Module Configuration
set jo_libs:gizmo:enableCam true
set jo_libs:gizmo:maxDistance 150
set jo_libs:gizmo:maxCamDistance 100
set jo_libs:gizmo:movementSpeed 0.15

# Custom key bindings
set jo_libs:gizmo:keys:confirm "INPUT_FRONTEND_ACCEPT"
set jo_libs:gizmo:keys:cancel "INPUT_FRONTEND_CANCEL"
```

### Runtime Configuration

You can also override specific configuration options when calling `jo.gizmo.moveEntity()` by passing a configuration table as the second parameter:

```lua
local result = jo.gizmo.moveEntity(object, {
    enableCam = false,           -- Disable camera for this specific call
    maxDistance = 200,           -- Allow movement up to 200 units away
    movementSpeed = 0.2          -- Set faster movement speed for this instance
})
```

This allows for flexible configuration on a per-call basis without changing the server-wide defaults.