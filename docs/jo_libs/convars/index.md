



<!--@include: ./autodoc/autodoc_all_convars.md-->

## Example Configuration in server.cfg
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