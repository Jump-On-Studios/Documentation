# 🥷 Ninja roll
Documentation relating to the kd_ninjaroll.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/fivem/ninja-roll)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/8Sqq1nwRBYs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
Ninja roll is a standalone script. You don't need a specific framework or any other resource to use it, so it works with every framework (ESX, QBCore, vRP, ...).

- Drag and drop this folder in your resources folder
  - kd_ninjaroll
- Add this ensure in your server.cfg
  - `ensure kd_ninjaroll`
- Congratulations, the Ninja roll script is ready to use!

## 2. Usage
1. Press `Left Ctrl` to crouch.
2. While crouched, press `Space` to roll.
3. Hold a movement key while pressing `Space` to choose the direction of the roll. Hold two keys to roll diagonally.
4. Press `Left Ctrl` again to stand up.

Crouching is not available while the player is dead or in a vehicle. The jump is disabled while crouched, because the same key is used to roll.

The default crouch key is `Left Ctrl`. Each player can change it in the FiveM key bindings of the game settings.

## 3. Config.lua
`Config.NameKey` is the label of the crouch action in the key bindings menu.

<ScriptConfig scriptPath="fivem/ninja-roll" />
