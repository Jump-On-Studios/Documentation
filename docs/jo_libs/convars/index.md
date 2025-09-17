



<!--@include: ./autodoc/autodoc_all_convars.md-->

## Debug
You can turn on/off the debug prints on all libraries or on a specific module with this convars:

| Convar                      | Side   | Type   | Default | Values     | Description                                                                 |
| --------------------------- | ------ | ------ | ------- | ---------- | --------------------------------------------------------------------------- |
| `<resource>:debug:<module>` | Shared | String | `off`   | `on`/`off` | Enable/Disable debug prints for **one module** running **in the resource**  |
| `<resource>:debug`          | Shared | String | `off`   | `on`/`off` | Enable/Disable debug prints for **all modules** running **in the resource** |
| `all:debug:<module>`        | Shared | String | `off`   | `on`/`off` | Enable/Disable debug prints for **all modules** running **in all resource** |



## Example Configuration in server.cfg
Here's how you can override some of the default settings in your server.cfg file:

::: code-group
```cfg [server.cfg]
## Gizmo Module Configuration
setr jo_libs:gizmo:enableCam true
setr jo_libs:gizmo:maxDistance 150
setr jo_libs:gizmo:maxCamDistance 100
setr jo_libs:gizmo:movementSpeed 0.15

## Custom key bindings
setr jo_libs:gizmo:keys:confirm "INPUT_FRONTEND_ACCEPT"
setr jo_libs:gizmo:keys:cancel "INPUT_FRONTEND_CANCEL"

## Debug
# Enable the debug of all modules in kd_stable resource
setr kd_stable:debug on 

# Enable the debug of the component module in the kd_clothingstore resource
setr kd_clothingstore:debug:component on 

# Enable the debug of all modules in the framework-bridge resource
setr all:debug:framework-bridge on 
```