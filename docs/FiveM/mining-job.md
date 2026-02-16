# :pick: Mining job
Documentation relating to the kd_realistic_mining.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/fivem/mining-job)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/1Tfnyto1sdQ?si=fIWIkDhi_nfuF8sr" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation

kd_realistic_mining is a standalone script. So you don't need a specific framework to use it. It's also mean it works with all framework (Esx, QBCore, VRP, DRP, …).

- Drag and drop the 4 resources in your resources folder
  - kd_realistic_mining
  - kd_custom-native (for optimization)
  - kd_hud-event (for display information)
  - InteractSound (for the sound of hit)
- Add this 4 ensures in your server.cfg
  - `ensure kd_realistic_mining`
  - `ensure kd_custom-native`
  - `ensure kd_hud-event`
  - `ensure InteractSound`
- Congratulation, the Mining script is ready to be use !

## 2. Usage
Start the job with the client event
```lua
TriggerEvent('StartMiningFarm')

```
Stop the job with the client event
```lua
TriggerEvent('StopMiningFarm')

```

## 3. Config.lua
<ScriptConfig scriptPath="fivem/mining-job" />