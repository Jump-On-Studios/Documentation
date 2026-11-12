# :knife: Knife game
Documentation relating to the jo_fivefingerfillet.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/knife-game)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/qdmJtWG-e-M?si=MZxhRbY13OigZpJk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
jo_fivefingerfillet works on all frameworks compatible with jo_libs ([the list](/jo_libs/modules/framework-bridge/#compatible-frameworks)). It does not use any database, so there is no SQL file to import.

To install jo_fivefingerfillet:
- Download the library: [jo_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip)
- Unzip the folder and drop it in your resource folder
- Download jo_fivefingerfillet from your [portal](https://portal.cfx.re/assets/granted-assets?search=fillet)
- Unzip the folder and drop it in your resource folder
- Add these ensures in your server.cfg
  - `ensure jo_libs`
  - `ensure jo_fivefingerfillet`
- Congratulation, the Knife game, aka Five finger fillet script is ready to be used!

## 2. Usage
Go near a supported table with a chair and enter the command `/fff` to start the game (the command name can be changed with `Config.commandName`).<br>
Several vanilla table and chair models are supported by default. You can add other models in the config file with `Config.modelsTable` and `Config.modelsChair`.

## 3. Config.lua file
<ScriptConfig scriptPath="redm/knife-game" />