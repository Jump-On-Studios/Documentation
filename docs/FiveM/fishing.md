# :fishing_pole_and_fish: Fishing
Documentation relating to the kd_peche.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/fivem/fishing)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/d5lysom6yWI?si=_qPVqNxG_A8yErdS" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::



## 1. Installation

kd_peche is a standalone script. So you don't need a specific framework to use it. It's also mean it works with all framework (Esx, QBCore, VRP, DRP, …).

- Drag and drop the resource in your resources folder
  - kd_peche
- Add this ensure in your server.cfg
  - `ensure kd_peche`
- Congratulation, the Fishing script is ready to be use !

## 2. Usage

Start fishing with the client event. 3 level are availables by default
- 1 - Easy level : Easy to catch fish but less expensive
- 2 - Medium level : Hard to catch but better loot
- 3 - Hard level : Very hard to catch but exclusive loot
```lua
TriggerEvent('fish', <level> )
```
You can add custom level in the config file.

## 3. Config.lua
<ScriptConfig scriptPath="fivem/fishing" />