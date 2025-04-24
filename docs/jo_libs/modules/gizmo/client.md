---
outline: [2,3]
---
# Gizmo <BadgeClient/>

Gizmo module is a specialized tool for manipulating entities in 3D space within RedM. It provides a visual interface for moving, rotating, and precisely positioning objects with optional camera controls.

<!--@include: ./autodoc/convars/autodoc_client_convars.md-->

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

<!--@include: ./autodoc/autodoc_client_functions.md-->

