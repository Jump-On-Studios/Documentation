# :gun: Airsoft
Documentation relating to the kd_airsoft.

:::: tabs

::: tab BUY
[Buy the script](https://jumpon-studios.com/fivem/airsoft-game)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/qNjlH7Z-9ek?si=dAgoUv36ZaZqiRts" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::



## 1. Installation

AIRSOFT is a standalone script. So you don't need a specific framework to use it. It's also mean it works with all framework (Esx, QBCore, VRP, DRP, …).
- Drag and drop this 3 resources in your resources folder
  - kd_appmenu
  - kd_hud-event
  - kd_airsoft
- Add this 3 ensures in your server.cfg
  - `ensure kd_appmenu`
  - `ensure kd_hud-event`
  - `ensure kd_airsoft`
- Congratulation, the AIRSOFT script is ready to be use !

## 2. Usage

Airsoft script is very friendly. Just go in the maker visible on the map and create a new lobby to start game.

A few options are available to custom the lobby :
- Different maps
- Duration of the game in minute
- Number of player
- Number of life by player (team life = Number of player * Number of life/player)

When the lobby is created, other players can join it by finding it in the list of lobbies. Players can switch between teams A and B. If necessary, the lobby creator can change the game options after creating it.

The game will be over in once of this two conditions :
- One of team lost all those lives : Other team wins !
- The duration of the game is over : the team with the most of live wins !

## 3. Config.lua
<ScriptConfig scriptPath="fivem/airsoft-game" />

## 4. Add a new map
You can add as many maps as you want. Copy a default map and edit the configuration.
Example :
```lua
{
      nom = "Quarry",
      Sortie = vec3(1452.675,-122.087,15.099),
      PlayZone = {
          vec3(1240.,-1819.,30.),
          vec3(1240.,-4502.,50.),
          vec3(1911.,-4502.,30.),
          vec3(1911.,-1819.,30.)
      EquipeA = {
          Casque = {id = 125,couleur = 6},
          Gilet = {idH = 22,idF=20,couleur = 2},
          Veste = {idH = 34,idF=3,couleurH = 0, couleurF = 1 }, 
          Haut = {idH = 15,idF=4,couleurH = 0, couleurF = 0 }, 
          Pantalon = {idH = 130,idF=30,couleurH = 1, couleurF = 0}, 
          Chaussure = {idH = 24,idF=25,couleurH = 0, couleurF = 0}, 
          Main = {idH = 171,idF=212,couleurH = 0, couleurF = 0},   
          Marker = {r=100,g=100,b=255},
          Spawn = { x = 3076.443, y = -4647.22, z = 5.076, a= 136.154},
      },
      EquipeB = {
          Casque = {id = 125,couleur = 4},
          Gilet = {idH = 22,idF=20,couleur = 0},
          Veste = {idH = 34,idF=3,couleurH = 0, couleurF = 1 }, 
          Haut = {idH = 15,idF=4,couleurH = 0, couleurF = 0 }, 
          Pantalon = {idH = 130,idF=30,couleurH = 1, couleurF = 0}, 
          Chaussure = {idH = 24,idF=25,couleurH = 0, couleurF = 0}, 
          Main = {idH = 171,idF=212,couleurH = 0, couleurF = 0},  
          Marker = {r=0,g=255,b=0},
          Spawn = {x = 3100.021, y = -4802.58, z = 1.036, a= 11.352},
      },
      WeaponChoisi = GetHashKey("WEAPON_ADVANCEDRIFLE")
  }
```