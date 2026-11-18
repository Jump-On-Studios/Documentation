# :truck: Car shop delivery
Documentation relating to the kd_carshop

<BuyScript script="fivem/car-delivery" />

## 1. Installation
kd_carshop is a standalone script. So you don't need a specific framework to use it. It's also mean it works with all framework (Esx, QBCore, VRP, DRP, …).

- Drag and drop the resource in your resources folder
  - kd_carshop
- Add this ensure in your server.cfg
  - `ensure kd_carshop``
- Congratulation, the Car Shop Delivery script is ready to be use !
## 2. Usage
Start the job with the client event
```lua
TriggerEvent('StartFarmConcess')

```
You can also use the command. This command can be remove in the config.lua file.
```lua
/farm
```
## 3. Config.lua
<ScriptConfig scriptPath="fivem/car-delivery" />