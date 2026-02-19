# <img src='/images/gunduel.webp' /> Duel Gun
Documentation relating to the kd_gun_duel.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/gun-duel)
:::

::: tab PREVIEW

| <iframe width="560" height="315" src="https://www.youtube.com/embed/DezsrBqHb2g?si=flkm6OHmcw9pXAC4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> | <iframe width="560" height="315" src="https://www.youtube.com/embed/5wicXmBjlXQ?si=l0dj4UUvFV3Me1IU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
:::
::::

## 1. Installation
kd_gun_duel works with VORPcore and RedEM:RP. Be sure you installed one of this two frameworks.

- Drag and drop this 2 resources in your resources folder
  - InteractSound
  - kd_gun_duel
- Add this 2 ensures in your server.cfg
  - `ensure InteractSound`
  - `ensure kd_gun_duel`
- Congratulation, the Duel gun script is ready to be use !

## 2. Usage
Two types of duel are available on the script. Both work the same way but the execution is a bit different.

- First type
  
Use the command `/duel [ID]` to challenge another player (ID is the server ID of the other player). He will have 10s (can be edited) to answer at this request.

If he accepts, both player have to nearby and stand back to back. Next, they have to walk until the **rang of the bells**. At this moment, the first player who hit his opponent wins the duel !
- Second type

Use the command `/duel2 [ID]` to challenge player with this second scenario. In this scenario, both players have to move away from other. When they are far enough, the duel will start with a little cinematic. After a random duration, the bells will ring. The first guy who hit his opponent wins the duel ! 

## 3. Configuration

<ScriptConfig scriptPath="redm/gun-duel" />