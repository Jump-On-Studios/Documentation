---
outline: [2,4]
---

# :horse: Stable
Documentation relating to the kd_stable.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/horse-stable)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/LUgGS5I5FjM?si=wIuK5RGZWczm_twX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
kd_stable works on all frameworks compatible with jo_libs ([the list](/jo_libs/)).

To install kd_stable :
- Download the library: [jo_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip)
- Unzip the folder and drop it in your resource folder
- Download kd_stable from your [keymaster](https://keymaster.fivem.net/asset-grants?search=stable)
- Unzip the folder and drop it in your resource folder
- Add this ensure in your server.cfg
  - `ensure jo_libs`
  - `ensure kd_stable`

Congratulation, the **Stable** script is ready to be used!
:::warning
Be sure you have oxmysql ensure in your server.cfg
:::
:::tip
The script automatically creates all necessary database tables during its initial startup.
:::

## 2. Usage
Go to the store (blip on the map) to get the prompt. Press the key to open the menu.

## 3. Script configuration
<ScriptConfig scriptPath="redm/horse-stable" />
## 4. Add new activity
You can add more activity to train your horse by edit the file : `overwriteActivities.lua`
```lua
table.insert(trainingTracks,{
	type = "handling", -- Type of training : "handling", "speed" or "acceleration"
	start = vec4(-386.273, 788.489, 115.865, 93.648), -- location of the start
	camPreview = { -- Camera for the trailer
		{ -- Start position
			coords = vec3(-386.293, 800.838, 117.883),
			rot = vec3(-7.000,0.000,155.131),
		},
		{ -- End position
			coords = vec3(-388.248, 800.757, 117.926),
			rot = vec3(-7.000,0.000,165.14),
		},
	},
	props = { -- list of props to spawn for the training
		{
			model = `mp001_p_mp_jump_sackshort01`,
			coords = vec3(-392.630, 768.967, 114.730),
			rotation = vec3(0, 0, -85.999),
		},
	},
	checkpoints = { -- list of checkpoints
		{
			coords = vec3(-392.8, 768.856, 116.826),
			marker = "ring", -- optional : Type of marker "ring", "cylinder" or marker hash
			size = vec2(1.0,1.0), -- optional : Size of the marker
			rotation = vec3(0,0,-85) -- optional : Rotation of the marker
			distance = 3.0 -- optional : Distance to valid the checkpoint
		},
	}
})
```
## 4. Horse statistics

### Attributes

Points required to reach all levels:

#### Acceleration
Determines how ling it takes the horse to reach its top speed
| Level:  | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7    | 8    | 9    |
| ------- | --- | --- | --- | --- | --- | --- | --- | ---- | ---- | ---- |
| Points: | 0   | 50  | 100 | 200 | 350 | 550 | 800 | 1100 | 1400 | 1700 |

#### Agility
Determines how fast the horse can turn.
| Level:  | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7    | 8    | 9    |
| ------- | --- | --- | --- | --- | --- | --- | --- | ---- | ---- | ---- |
| Points: | 0   | 50  | 100 | 200 | 350 | 550 | 800 | 1100 | 1400 | 1700 |

#### Body Heat
Determines the heat of the horse body. The affect in the game in unknown
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Body Weight
Weight affects the top speed. The neutral value is level 50. 
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Bonding
As you level up your horse, you will gain more ability with your horse:
* Travel through difficult area and deeper water
* New horse tricks

| Level | Functions              |	Controls For XBOX                                          |
| ----- | ---------------------- | ----------------------------------------------------------- |
| 1     | -                      | -                                                           |
| 2     | Rear                   | When stationary press **RB + tap X**                        |
| 3     | Skid Turn<br>Skid Stop |	When moving hold **RB + A**<br>When moving hold **RB + X** |
| 4     | Piaffe<br>Drift        | When stationary hold **X**<br>When moving hold **X**         |
  
Bonding level progression depending on the horse model:  
  
:::details models for <0-950>
a_c_horse_belgian_blondchestnut  
a_c_horse_belgian_mealychestnut  
a_c_horse_kentuckysaddle_buttermilkbuckskin_pc  
a_c_horse_morgan_liverchestnut_pc  
a_c_horse_morgan_bay  
a_c_horse_morgan_bayroan  
a_c_horse_morgan_flaxenchestnut  
a_c_horse_morgan_palomino  
a_c_horse_mp_mangy_backup  
a_c_horse_shire_darkbay  
a_c_horse_shire_lightgrey  
a_c_horse_suffolkpunch_redchestnut  
a_c_horse_suffolkpunch_sorrel  
a_c_horse_tennesseewalker_goldpalomino_pc  
a_c_horse_tennesseewalker_mahoganybay  
a_c_horse_tennesseewalker_redroan  
a_c_horse_gang_uncle  
a_c_horse_kentuckysaddle_black  
a_c_horse_kentuckysaddle_chestnutpinto  
a_c_horse_kentuckysaddle_grey  
a_c_horse_kentuckysaddle_silverbay  
a_c_horse_winter02_01  
:::
| Level:  | 0   | 1   | 2   | 3   | 4   |
| ------- | --- | --- | --- | --- | --- |
| Points: | 0   | 50  | 250 | 550 | 950 |
:::details models for <0-1450>
a_c_horse_americanpaint_overo  
a_c_horse_americanpaint_tobiano  
a_c_horse_americanpaint_splashedwhite  
a_c_horse_eagleflies  
a_c_horse_americanstandardbred_black  
a_c_horse_americanstandardbred_buckskin  
a_c_horse_americanstandardbred_palominodapple  
a_c_horse_andalusian_darkbay  
a_c_horse_murfreebrood_mange_03  
a_c_horse_appaloosa_blanket  
a_c_horse_appaloosa_leopardblanket  
a_c_horse_gang_charles  
a_c_horse_gang_uncle_endlesssummer  
a_c_horse_appaloosa_fewspotted_pc  
a_c_horse_breton_redroan  
a_c_horse_breton_sorrel  
a_c_horse_criollo_blueroanovero  
a_c_horse_criollo_dun  
a_c_horse_dutchwarmblood_sealbrown  
a_c_horse_dutchwarmblood_sootybuckskin  
a_c_horse_ardennes_bayroan  
a_c_horse_gang_bill  
a_c_horse_gypsycob_piebald  
a_c_horse_gypsycob_whiteblagdon  
a_c_horse_hungarianhalfbred_darkdapplegrey  
a_c_horse_gang_john  
a_c_horse_hungarianhalfbred_flaxenchestnut  
a_c_horse_hungarianhalfbred_piebaldtobiano  
a_c_horse_kladruber_black  
a_c_horse_kladruber_white  
a_c_horse_mustang_grullodun  
a_c_horse_mustang_wildbay  
a_c_horse_gang_charles_endlesssummer  
a_c_horse_gang_karen  
a_c_horse_murfreebrood_mange_02  
a_c_horse_nokota_blueroan  
a_c_horse_nokota_whiteroan  
a_c_horse_norfolkroadster_black  
a_c_horse_norfolkroadster_speckledgrey  
a_c_horse_shire_ravenblack  
a_c_horse_gang_kieran  
a_c_horse_tennesseewalker_flaxenroan  
a_c_horse_thoroughbred_bloodbay  
a_c_horse_thoroughbred_dapplegrey  
:::
| Level:  | 0   | 1   | 2   | 3   | 4    |
| ------- | --- | --- | --- | --- | ---- |
| Points: | 0   | 50  | 300 | 750 | 1450 |
:::details models for <0-1950>
a_c_horse_americanpaint_greyovero  
a_c_horse_gang_javier  
a_c_horse_americanstandardbred_lightbuckskin  
a_c_horse_americanstandardbred_silvertailbuckskin  
a_c_horse_gang_sean  
a_c_horse_andalusian_perlino  
a_c_horse_andalusian_rosegray  
a_c_horse_appaloosa_blacksnowflake  
a_c_horse_appaloosa_brownleopard  
a_c_horse_gang_trelawney  
a_c_horse_appaloosa_leopard  
a_c_horse_arabian_redchestnut  
a_c_horse_arabian_redchestnut_pc  
a_c_horse_arabian_warpedbrindle_pc  
a_c_horse_ardennes_irongreyroan  
a_c_horse_ardennes_strawberryroan  
a_c_horse_breton_grullodun  
a_c_horse_breton_sealbrown  
a_c_horse_buell_warvets  
a_c_horse_criollo_baybrindle  
a_c_horse_criollo_sorrelovero  
a_c_horse_dutchwarmblood_chocolateroan  
a_c_horse_gypsycob_palominoblagdon  
a_c_horse_gypsycob_skewbald  
a_c_horse_hungarianhalfbred_liverchestnut  
a_c_horse_john_endlesssummer  
a_c_horse_kladruber_cremello  
a_c_horse_kladruber_grey  
a_c_horse_mustang_tigerstripedbay  
a_c_horse_nokota_reversedappleroan  
a_c_horse_norfolkroadster_piebaldroan  
a_c_horse_norfolkroadster_rosegrey  
a_c_horse_thoroughbred_blackchestnut  
a_c_horse_thoroughbred_brindle  
a_c_horse_thoroughbred_reversedappleblack  
:::
| Level:  | 0   | 1   | 2   | 3   | 4    |
| ------- | --- | --- | --- | --- | ---- |
| Points: | 0   | 50  | 350 | 950 | 1950 |
:::details models for <0-2450>
a_c_horse_arabian_black  
a_c_horse_arabian_grey  
a_c_horse_arabian_rosegreybay  
a_c_horse_breton_mealydapplebay  
a_c_horse_breton_steelgrey  
a_c_horse_criollo_bayframeovero  
a_c_horse_criollo_marblesabino  
a_c_horse_arabian_white  
a_c_horse_gypsycob_splashedbay  
a_c_horse_gypsycob_splashedpiebald  
a_c_horse_kladruber_dapplerosegrey  
a_c_horse_kladruber_silver  
a_c_horse_missourifoxtrotter_blacktovero  
a_c_horse_missourifoxtrotter_blueroan  
a_c_horse_missourifoxtrotter_buckskinbrindle  
a_c_horse_missourifoxtrotter_dapplegrey  
a_c_horse_missourifoxtrotter_sablechampagne  
a_c_horse_gang_micah  
a_c_horse_missourifoxtrotter_amberchampagne  
a_c_horse_missourifoxtrotter_silverdapplepinto  
a_c_horse_mustang_goldendun  
a_c_horse_mustang_blackovero  
a_c_horse_mustang_buckskin  
a_c_horse_mustang_chestnuttovero  
a_c_horse_mustang_reddunovero  
a_c_horse_norfolkroadster_dappledbuckskin  
a_c_horse_norfolkroadster_spottedtricolor  
a_c_horse_gang_sadie  
a_c_horse_turkoman_darkbay  
a_c_horse_turkoman_gold  
a_c_horse_turkoman_black  
a_c_horse_turkoman_chestnut  
a_c_horse_turkoman_grey  
a_c_horse_turkoman_perlino  
a_c_horse_gang_hosea  
a_c_horse_turkoman_silver  
:::
| Level:  | 0   | 1   | 2   | 3    | 4    |
| ------- | --- | --- | --- | ---- | ---- |
| Points: | 0   | 50  | 400 | 1150 | 2450 |

#### Courage
Determines how your horse react to danger.
| Level:  | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7    | 8    | 9    |
| ------- | --- | --- | --- | --- | --- | --- | --- | ---- | ---- | ---- |
| Points: | 0   | 50  | 100 | 200 | 350 | 550 | 800 | 1100 | 1400 | 1700 |


#### Dirtiness
Dirtiness is a value that is reset when the horse is cleaned.
| Level:  | 0   | 1   | 2   | ..  | 50     | ..  | 100    |
| ------- | --- | --- | --- | --- | ------ | --- | ------ |
| Points: | 0   | 100 | 200 | ..  | 50.000 | ..  | 10.000 |

#### Dirtiness Hat
Dirtiness Hat is a value that is reset when the horse is cleaned.
| Level:  | 0   | 1   | 2   | ..  | 50     | ..  | 100    |
| ------- | --- | --- | --- | --- | ------ | --- | ------ |
| Points: | 0   | 100 | 200 | ..  | 50.000 | ..  | 10.000 |

#### Dirtiness Skin
Dirtiness Skin is a value that is reset when the horse is cleaned.
| Level:  | 0   | 1   | 2   | ..  | 50     | ..  | 100    |
| ------- | --- | --- | --- | --- | ------ | --- | ------ |
| Points: | 0   | 100 | 200 | ..  | 50.000 | ..  | 10.000 |

#### Fatigued
Affect the top speed of the horse.
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Grit
Unknwon affect in the game
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Health
Determines how much damage the horse can take.
| Level:  | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7    |
| ------- | --- | --- | --- | --- | --- | --- | --- | ---- |
| Points: | 0   | 50  | 100 | 200 | 350 | 550 | 800 | 1100 |

| Level:  | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7    | 8    | 9    |
| ------- | --- | --- | --- | --- | --- | --- | --- | ---- | ---- | ---- |
| Points: | 0   | 50  | 100 | 200 | 350 | 550 | 800 | 1100 | 1400 | 1700 |

#### Hunger
Unknwon affect in the game
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Inebriated
Unknwon affect in the game
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Instinct
Unknwon affect in the game
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Poisoned
Unknwon affect in the game
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Overfed
Unknwon affect in the game
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Sickness
Unknwon affect in the game
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Special Ability
Unknwon affect in the game
| Level:  | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7    |
| ------- | --- | --- | --- | --- | --- | --- | --- | ---- |
| Points: | 0   | 50  | 100 | 200 | 350 | 550 | 800 | 1100 |

#### Speed
Determines the top speed of the horse
| Level:  | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7    | 8    | 9    |
| ------- | --- | --- | --- | --- | --- | --- | --- | ---- | ---- | ---- |
| Points: | 0   | 50  | 100 | 200 | 350 | 550 | 800 | 1100 | 1400 | 1700 |

#### Stamina
Determines how long the horse can gallop or swim.
| Level:  | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7    |
| ------- | --- | --- | --- | --- | --- | --- | --- | ---- |
| Points: | 0   | 50  | 100 | 200 | 350 | 550 | 800 | 1100 |

#### Strength
Unknwon affect in the game
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

#### Unruliness
Determines the frequency of the horse to play its idle animation. More the value is high, more it will play it.
| Level:  | 0   | 1   | 2   | ..  | 50  | ..  | 100 |
| ------- | --- | --- | --- | --- | --- | --- | --- |
| Points: | 0   | 1   | 2   | ..  | 50  | ..  | 100 |

## 6. For developers

### API
#### <Badge type="client" text="Client" /> Add a new horse to the stable
Client event to add a spawned horse to the player stable
```lua
--@param horse - int : entity ID of the horse
--@param name - string : name of the horse
--@param age - int : age of the horse (optional)
--@param noDieByAge - boolean : if true, the horse will not die by aging (optional)
TriggerEvent('kd_stable:client:addHorse',horse,name,age,noDieByAge)
```
#### <Badge type="client" text="Client" /> Stop saddlebag animation
Client event to stop the saddlebag animation
```lua
TriggerEvent('kd_stable:client:closeSaddleBag')
```

#### <Badge type="server" text="Server" /> Create a new wagon
Have to be call from the server side
```lua
-- @param source - int : serverID of the wagon owner
-- @param stableID - string : ID of the stable
-- @param model - string : model of the wagon
-- @param name - string : name of the wagon
TriggerEvent('kd_stable:server:AddNewWagon', source, stableID, model, name)
```
#### <Badge type="server" text="Server" /> Repair horseshoes
This event has to be called from the server side.
```lua
-- @param source - int : serverID of the wagon owner
-- @param sucess - boolean : true if a horse is found around the player
-- @param horseNetId - int : Network ID of the horse
TriggerEvent('kd_stable:server:requestChangeHorseShoes', source, function(success,horseNetId)
	print(success,horseNetId)
end)
```

### Overwrite framework functions

If you need to overwrite a native function linked to the framework (custom inventory for example), you can overwrite my functions by adding them in the config file.
You don't need to use all the functions.

#### <Badge type="client" text="Client" /> Initialize the framework
Function to init your framework
```lua
-- variable "Core" - global variable for core script
-- variable "CoreInv" - global variable for inventory scriot
Config.InitFramework = function()
end
```
#### <Badge type="client" text="Client" /> Change notification functions
Function to use another notifications system
```lua
Config.NotifRight = function(text, dict_icon, icon, color, duration,soundset_ref,soundset_name)
end

Config.NotifLeft = function(title, text, dict_icon, icon, color, duration,soundset_ref,soundset_name)
end

Config.DisplayObjectif = function(text,duration)
end

Config.DisplayTitle = function(text)
end
```
#### <Badge type="client" text="Client" /> Restrict the access to specific stable
Function to restrict access to a specific stable
```lua
-- @param stableID - ID of stable
-- @return false to cancel the access to the stable
Config.CanAccessToStable= function(stableID)
    return true
end
```
#### <Badge type="client" text="Client" /> Restrict the color palette
Function to restrict the color palette
```lua
-- @param typeItem = 'horse' or 'component'
-- @return false if the player can't open the color palette
-- @return true if the player can open the color palette
Config.CanOpenColorPalette = function(typeItem)
    return true
end
```
#### <Badge type="server" text="Server" /> Check money
Function to check if the player has enough money to buy something
```lua
-- @param source - serverID of the player
-- @param price - price of the cloth
-- @param moneyType - devise of the price : 0 for normal & 1 for gold
-- @return true/false to accept/deny the purchase
Config.CanBuy = function(source,price,moneyType)
end
```
#### <Badge type="server" text="Server" /> Get Identifier
Function to get the identifier of player
```lua
-- @param source - serverID of the player
-- @return array with identifier and charid key
Config.GetIdentifier = function(source)
    local player = {
        identifier = identifier, --the identifier of player
        charid = charid --the charid of player. If not needed just use ''
    }
    return player
end
```
#### <Badge type="server" text="Server" /> Get Job
Function to get the player's job
```lua
-- @param source - serverID of the player
-- @return the job name
Config.GetJob = function(source)
end
```
#### <Badge type="server" text="Server" /> Get RP Name
Function to get the player's name
```lua
-- @param source - serverID of the player
-- @return the player name
Config.GetRPName = function(source)
end
```
#### <Badge type="server" text="Server" /> Give money
Function to give money to the player
```lua
-- @param source - serverID of the player
-- @param amount - money amount
Config.GiveMoney = function(source,amount)
end
```
#### <Badge type="server" text="Server" /> Initialize the framework
Function to init your framework
```lua
-- variable "Core" - global variable for core script
-- variable "CoreInv" - global variable for inventory scriot
Config.InitFramework = function()
end
```
#### <Badge type="server" text="Server" /> Notification
Function to send notification to the player
```lua
-- @param source - serverID of the player
-- @param text - text of notification
Config.Notify = function(source,text)
end
```
#### <Badge type="server" text="Server" /> Open saddlebag
Function to open saddlebag
```lua
-- @param source - serverID of the player
-- @param saddlebagID - ID of container
-- @param horseID - ID of the horse
Config.OpenSaddlebag = function(source,saddlebagID, horseID)
end
```
#### <Badge type="server" text="Server" /> Open wagon locker
Function to open wagon locker
```lua
-- @param source - serverID of the player
-- @param wagonID - ID of container
Config.OpenWagonLocker = function(source,wagonID)
end
```
#### <Badge type="server" text="Server" /> Overwrite horse slot
Function to overwrite the number of horses the player can buy
```lua
-- @param typeOrder - type of order : 'horse' or 'wagon'
-- @param source - serverID of the player
Config.overwriteMaxSlot = function(typeOrder,source)
end
```

#### <Badge type="server" text="Server" /> Overwrite price
Function to overwrite order price
```lua
-- @param source - serverID of the player
-- @param typeOrder = 'horse' or 'component' or 'wagon' or 'reviveHorse'
-- @param data - identifiant of item
--       horseID for 'reviveHorse'
--       horseID for 'horse'
--       category for 'component'
--       wagonID for 'wagon'
-- @param price - default price of order
-- @return price with the price format
Config.overwritePrice = function(source,typeOrder, data, price)
    return true
end
```
#### <Badge type="server" text="Server" /> Use Item
Function to use an item
```lua
-- @param source - serverID of the player
-- @param item - item name
-- @param amount - amount used
-- @param meta - meta of item
-- @param remove - if the item have to be removed or not
-- @return true if the item is used
Config.UseItem = function(source,item,amount,meta,remove)
end
```

#### <Badge type="server" text="Server" /> Restrict horse buying
Function to restrict specific horse buying
```lua
-- @param source - serverID of the player
-- @param horseKey - key of Horse in Config.horses list
-- @return false to cancel the order
Config.restrictHorseBuying = function(source,horseKey)
    return true
end
```
:::details Job lock horses
You can job lock some horses by add this snippet in your `overwriteConfig.lua` file:
```lua
if IsDuplicityVersion() then
 jo.ready(function()
	 --job lock the horse number 1 & 2
	 Config.horses[1].job = "horseTrainer"
	 Config.horses[2].job = "horseTrainer"

	 --Function to restrict the horse buying
	 Config.restrictHorseBuying = function(source,horseKey)
		 --Get the horse configuration
	 	local horse = Config.horses[horseKey]
		 --Allow buy if the job lock is not set
	 	if not horse.job then return true end
		 --Get the player job
	 	local job = jo.framework:getJob(source)
 		--Compare the job
 		if job ~= horse.job then
 			--Lock the order because the player's job is not the right
		 	return false
 		end
 		--Allow buy
   return true
  end
 end) 
end
```
:::
#### <Badge type="server" text="Server" /> Restrict wagon buying
Function to restrict specific wagon buying
```lua
-- @param source - serverID of the player
-- @param wagonKey - key of wagon in Config.wagons list
-- @return false to cancel the order
Config.restrictWagonBuying = function(source,wagonKey)
    return true
end
```

### Exports

#### <Badge type="client" text="Client" /> Get player's horses
exports to get the list of player's horses datas
```lua
exports.kd_stable:getMyHorses()
```

#### <Badge type="client" text="Client" /> Get player's wagons
exports to get the list of player's wagons datas
```lua
exports.kd_stable:getMyWagons()
```

#### <Badge type="server" text="Server" /> Get script configuration
exports to get the script configuration
```lua
exports.kd_stable:getConfig()
```

#### <Badge type="server" text="Server" /> Get horse data
exports to get the horse datas
```lua
-- @param horseID - ID of the horse (optional)
-- if horseID is missing, the function returns the full list of horses
exports.kd_stable:getHorses(horseID)
```

#### <Badge type="server" text="Server" /> Get wagon data
exports to get the wagon datas
```lua
-- @param wagonID - ID of the wagon (optional)
-- if wagonID is missing, the function returns the full list of wagons
exports.kd_stable:getWagons(wagonID)
```



### Actions

[Actions](/DeveloperResources/actions) are the new way to modify how the script works or add new features added in the `v1.1.0`. These actions are event that occurs at a specific point in time during the execution of the script. But contrary to events, actions are **synchronous**. 

- Syntax: 
```lua
-- @param <actionName> - name of the action
-- @param <argumentList> - list of arguments which are passed
exports.kd_stable:registerAction(<actionName>, function(<argumentList>)
  -- Add your new feature here
end)
```

- Example :
```lua
exports.kd_stable:registerAction('spawnHorse', function(source,horse,horseID)
  local horseData = Horses[source][horseID]
  local lanternID = horseData.components.saddle_lanterns?.id or false
  if lanternID then
    Entity(horse).state:set('kd_stable_lanternID',tonumber(lanternID),true)
  end
end)
```
- All actions :
#### <Badge type="client" text="Client" /> initHorsePrompt
Fires when the horse prompt is initialized
```lua
-- @param promptGroupId - prompt group ID
-- @param entity - entity ID of the target
exports.kd_stable:registerAction('initHorsePrompt', function(promptGroupId,entity)
end)
```
#### <Badge type="client" text="Client" /> letterBox
Fires when the letter box state is switched
```lua
-- @param show - state of letter box: true/false
exports.kd_stable:registerAction('letterBox', function(show)
end)
```
#### <Badge type="client" text="Client" /> loopTargeting
Fires when the player targets a registered horse
```lua
-- @param target - entity ID of the target
-- @param distance - distance between the player and the entity
exports.kd_stable:registerAction('loopTargeting', function(target,distance)
end)
```
#### <Badge type="client" text="Client" /> refreshPreviewMyHorse
Fires when the horse components are refreshed
```lua
-- @param entity - entity ID of the horse
-- @param horseData - all horse's datas
exports.kd_stable:registerAction('refreshPreviewMyHorse', function(entity,horseData)
end)
```
#### <Badge type="client" text="Client" /> updatePreview
Fires when user select a new item in the menu
```lua
-- @param itemMenuData - all data of menu's item
exports.kd_stable:registerAction('updatePreview', function(itemMenuData)
end)
```
#### <Badge type="server" text="Server" /> bequeathHorse
Fires when the player bequeaths the horse to another player
```lua
-- @param source - serverID of the player
-- @param horseID - ID of the horse
-- @param targetID - serverID of the player targeted
exports.kd_stable:registerAction('bequeathHorse', function(source,horseID,targetID)
end)
```
#### <Badge type="server" text="Server" /> bequeatWagon
Fires when the player bequeaths the wagon to another player
```lua
-- @param source - serverID of the player
-- @param wagonID - ID of the horse
-- @param targetID - serverID of the player targeted
exports.kd_stable:registerAction('bequeathWagon', function(source,wagonID,targetID)
end)
```
#### <Badge type="server" text="Server" /> buyComponent
Fires when the player buys a new component
```lua
-- @param source - serverID of the player
-- @param componentData - information about the component
-- componentData.category - category of the component
-- componentData.hash - hash of the component
-- @param price - price of the horse
-- @param moneyType - devise of the price : 0 for normal & 1 for gold
exports.kd_stable:registerAction('buyComponent', function(source,componentData,price,moneyType)
end)
```
#### <Badge type="server" text="Server" /> buyHorse
Fires when the player buys a new horse
```lua
-- @param source - serverID of the player
-- @param horseData - information about the horse
-- horseData.id - ID of the horse
-- horseData.model - model of the horse
-- horseData.favourite - is favourite horse
-- horseData.name - horse's name
-- horseData.stable - stable where the horse is bought
-- horseData.isFemale - is horse a female
-- horseData.speed - horse's speed statistic
-- horseData.acceleration - horse's acceleration statistic
-- horseData.handling - horse's handling statistic
-- horseData.components - array of horse's components <key: category, value: componentData>
-- horseData.birth - (need aging add-on) horse's birthday
-- horseData.deathAge - (need aging add-on) horse's age of death
-- @param price - price of the horse
-- @param moneyType - devise of the price : 0 for normal & 1 for gold
exports.kd_stable:registerAction('buyHorse', function(source,horseData,price,moneyType)
end)
```
#### <Badge type="server" text="Server" /> buyWagon
Fires when the player buys a new wagon
```lua
-- @param source - serverID of the player
-- @param wagonData - information about the wagon
-- wagonData.id - ID of the wagon
-- wagonData.model - model of the wagon
-- wagonData.name - name of the wagon
-- wagonData.stable - stable where the wagon is bought
-- wagonData.vehicle_tints - tint of the wagon
-- wagonData.vehicle_extras - extra of the wagon
-- wagonData.vehicle_lantern_propsets - lantern of the wagon
-- wagonData.vehicle_propsets - propset of the wagon
-- wagonData.vehicle_liveries - livery of the wagon
-- @param price - price of the wagon
-- @param moneyType - devise of the price : 0 for normal & 1 for gold
exports.kd_stable:registerAction('buyWagon', function(source,wagonData,price,moneyType)
end)
```
#### <Badge type="server" text="Server" /> deleteHorse
Fires when the player deletes a horse
```lua
-- @param source - serverID of the player
-- @param horseID - ID of the horse
exports.kd_stable:registerAction('deleteHorse', function(source,horseID)
end)
```
#### <Badge type="server" text="Server" /> deleteWagon
Fires when the player deletes a wagon
```lua
-- @param source - serverID of the player
-- @param wagonID - ID of the wagon
exports.kd_stable:registerAction('deleteWagon', function(source,wagonID)
end)
```
#### <Badge type="server" text="Server" /> horseDying
Fires when a horse is dying
```lua
-- @param horseID - ID of the horse
exports.kd_stable:registerAction('horseDying', function(horseID)
end)
```
#### <Badge type="server" text="Server" /> horsesLoaded
Fires when the list of horses is loaded
```lua
exports.kd_stable:registerAction('horsesLoaded', function()
end)
```
#### <Badge type="server" text="Server" /> initSQLValues
Fires when all database values are updated after the script is started
```lua
exports.kd_stable:registerAction('initSQLValues', function()
end)
```
#### <Badge type="server" text="Server" /> newFavorite
Fires when the player assigns a new favourite horse
```lua
-- @param source - serverID of the player
-- @param horseID - ID of the horse
exports.kd_stable:registerAction('newFavorite', function(source,horseID)
end)
```
#### <Badge type="server" text="Server" /> openSaddlebag
Fires when the player opens a saddlebag
```lua
-- @param source - serverID of the player
-- @param saddleID - ID of the saddlebag
exports.kd_stable:registerAction('openSaddlebag', function(source,saddleID)
end)
```
#### <Badge type="server" text="Server" /> openWagonLocker
Fires when the player opens a wagon locker
```lua
-- @param source - serverID of the player
-- @param wagonID - ID of the wagon
exports.kd_stable:registerAction('openWagonLocker', function(source,wagonID)
end)
```
#### <Badge type="server" text="Server" /> outHorse
Fires when the player get out a horse
```lua
-- @param source - serverID of the player
-- @param horse - entity ID of the horse (server entity)
-- @param horseID - ID of the horse
exports.kd_stable:registerAction('outHorse', function(source,horse,horseID)
end)
```
#### <Badge type="server" text="Server" /> putSaddlebag
Fires when the player puts a saddlebag on a horse
```lua
-- @param source - serverID of the player
-- @param horseID - ID of the horse
-- @param saddleID - ID of the saddlebag
exports.kd_stable:registerAction('putSaddlebag', function(source,horseID,saddleID)
end)
```
#### <Badge type="server" text="Server" /> reviveHorse
Fires when the player revives a horse
```lua
-- @param source - serverID of the player
-- @param horseID - ID of the horse
-- @param price - price of the wagon
-- @param moneyType - devise of the price : 0 for normal & 1 for gold
exports.kd_stable:registerAction('reviveHorse', function(source,horseID,price,moneyType)
end)
```
#### <Badge type="server" text="Server" /> spawnWagon
Fires when the player spawns a wagon
```lua
-- @param source - serverID of the player
-- @param wagon - entity ID of the wagon (server entity)
-- @param wagonID - ID of the wagon
exports.kd_stable:registerAction('spawnWagon', function(source,wagon,wagonID)
end)
```
#### <Badge type="server" text="Server" /> stableHorse
Fires when the player stables a horse
```lua
-- @param source - serverID of the player
-- @param horseID - ID of the horse
-- @param stableID - ID of the stable
exports.kd_stable:registerAction('stableHorse', function(source,horseID,stableID)
end)
```
#### <Badge type="server" text="Server" /> stableWagon
Fires when the player stables a wagon
```lua
-- @param source - serverID of the player
-- @param wagonID - ID of the wagon
-- @param stableID - ID of the stable
exports.kd_stable:registerAction('stableWagon', function(source,wagonID,stableID)
end)
```
#### <Badge type="server" text="Server" /> takeSaddlebag
Fires when the player takes a saddlebag off a horse
```lua
-- @param source - serverID of the player
-- @param horseID - ID of the horse
-- @param saddleID - ID of the saddlebag
exports.kd_stable:registerAction('takeSaddlebag', function(source,horseID,saddleID)
end)
```
#### <Badge type="server" text="Server" /> updateSQLStructure
Fires when the MySQL is initialized
```lua
exports.kd_stable:registerAction('updateSQLStructure', function()
end)
```
#### <Badge type="server" text="Server" /> wagonsLoaded
Fires when the list of wagons is fully loaded from the database
```lua
exports.kd_stable:registerAction('wagonsLoaded', function()
end)
```

### Filters

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script added in the `v1.2.0`. These filters are fired at a specific point in time during the execution of the script. But contrary to events, filters are **synchronous**. 

- Syntax: 
```lua
-- @param <actionName> - name of the action
-- @param <argumentList> - list of arguments which are passed
exports.kd_stable:registerFilter(<actionName>, function(variable)
  -- Add your new data here
	return variable -- Don't forget to return the value
end)
```

- Example :
```lua
kd_stable:registerFilter('filterHorseData', function(horseData)
  horseData = "New name"
  return horseData
end)
```

#### <Badge type="client" text="Client" /> canAccessToStable
Fires before display of the stable prompt
```lua
-- @param canAccess - boolean
-- @param stable - stable data
exports.kd_stable:registerFilter('canAccessToStable', function(canAccess, stable)
	return canAccess
end)
```
#### <Badge type="client" text="Client" /> canFleeHorse
Overwrite the player's ability to make the horse flee
```lua
-- @param canFlee - boolean
-- @param entity - entity ID of the horse
exports.kd_stable:registerFilter('canFleeHorse', function(canFlee,entity)
	return canFlee
end)
```
#### <Badge type="client" text="Client" /> canUseFixHorseCommand
Fires before display of the fix horse prompt with the command
```lua
-- @param canUse - boolean
exports.kd_stable:registerFilter('canUseFixHorseCommand', function(canUse)
	return canUse
end)
```
#### <Badge type="client" text="Client" /> canUseFixWagonCommand
Fires before fixing a wagon with the command
```lua
-- @param canUse - boolean
exports.kd_stable:registerFilter('canUseFixWagonCommand', function(canUse)
	return canUse
end)
```
#### <Badge type="client" text="Client" /> filterHorseData
Fires before generate horse item in menu
```lua
-- @param horseData - horse's datas
exports.kd_stable:registerFilter('filterHorseData', function(horseData)
	return horseData
end)
```
#### <Badge type="client" text="Client" /> filterNotification
filter the notification messages
```lua
-- @param message - message's datas
-- @param message.type - string : 'notificationLeft' or 'notificationRight' (can't be change)
-- @param message.title - string : notification title
-- @param message.text - string : notification text
-- @param message.dict - string : dictionary of the icon
-- @param message.icon - string : icon name
-- @param message.color - string : color of the text
-- @param message.duration - int : duration of the notification
-- @param message.soundset_ref - string : dictionary of the sound
-- @param message.soundset_name - string : sound name
	}
exports.kd_stable:registerFilter('filterNotification', function(message)
	--return false to turn off the notification
	return message
end)
```
#### <Badge type="client" text="Client" /> filterYourHorseLine
Fires after generated horse item in menu
```lua
-- @param item - menu item
-- @param horseData - horse's datas
exports.kd_stable:registerFilter('filterYourHorseLine', function(item,horseData)
	return item
end)
```
#### <Badge type="client" text="Client" /> generateHorseStatisticsForMenu
Fires before the display of the horse statistics in the menu
```lua
-- @param stats - table of horse's statistics 
-- @param horseData - horse's datas
exports.kd_stable:registerFilter('generateHorseStatisticsForMenu', function(stats,horseData)
	return stats
end)
```
#### <Badge type="client" text="Client" /> isSameMenu
Fires before do update actions when user select new item in menu
```lua
-- @param same - boolean value
-- same = true - Do update actions
-- same = false - Cancel all update actions
exports.kd_stable:registerFilter('isSameMenu', function(same)
	return same
end)
```
#### <Badge type="client" text="Client" /> updateHorseDataBeforeSpawn
Fires before spawn an horse
```lua
-- @param horseData - horse's datas
exports.kd_stable:registerFilter('updateHorseDataBeforeSpawn', function(horseData)
	return item
end)
```
#### <Badge type="client" text="Client" /> updateItemHorseAvailable
Fires before display horse owned line in the menu
```lua
-- @param item - menu item
-- @param horseID - horse ID in the database
exports.kd_stable:registerFilter('updateItemHorseAvailable', function(item, horseID)
	return item
end)
```
#### <Badge type="client" text="Client" /> updateLangForNUI
Fires before update translated string
```lua
-- @param _lang - array of translated script
-- <key> is the key of string (don't edit them)
-- <value> is the translated string
exports.kd_stable:registerFilter('updateLangForNUI', function(_lang)
	return _lang
end)
```
#### <Badge type="client" text="Client" /> updatePreviewPrompt
Fires after all update action to edit the current prompt
```lua
-- @param currentPrompt - name of the current prompt
-- @param itemMenuData - all data of menu's item
exports.kd_stable:registerFilter('updatePreviewPrompt', function(currentPrompt,itemMenuData)
	return currentPrompt
end)
```
#### <Badge type="server" text="Server" /> buyHorse
Fires when player buy a new horse, just before the 'buyHorse' action
```lua
-- @param horseData - horse's datas filtered
-- @param horseID - horse ID in Config.horses table
-- @param source - serverID of the player
exports.kd_stable:registerFilter('buyHorse', function(horseData,horseID,source)
	return horseData
end)

```
#### <Badge type="server" text="Server" /> canBuyTraining
Fires when player try to buy a training
```lua
-- @param canBuy - boolean
-- @param source - serverID of the player
-- @param activity - activity data
-- @param moneyType - the type of money used to buy the training
-- @param horseNetID - the net ID of the horse
-- @param activityIndex - The index of the activity in Config.trainings
exports.kd_stable:registerFilter('canBuyTraining', function(canBuy, source,activity,moneyType,horseNetID,activityIndex)
	return canBuy
end)
```

#### <Badge type="server" text="server" /> canTrainHorse
Fires when player open the training menu
```lua
-- @param canOpen - boolean
-- @param source - serverID of the player
-- @param trainingID - the training ID
-- @param horseID - ID of the horse
exports.kd_stable:registerFilter('canTrainHorse', function(canOpen,source,trainingID,horseID)
	return canOpen
end)
```

#### <Badge type="server" text="server" /> canUseWagonLocker
Manage the access to a specific wagon locker
```lua
-- @param canUse - boolean
-- @param source - int : serverID of the player
-- @param wagonID - int : ID of the wagon
-- @param model - string : model of the wagon
-- @param size - table : size of the wagon locker
-- size.maxWeight
-- size.maxSlots
exports.kd_stable:registerFilter('canUseWagonLocker', function(canUse, source, wagonID, model, size )
	return canUse
end)
```
#### <Badge type="server" text="Server" /> loadHorseData
Fires at the start of the script after all horses data is loaded
```lua
-- @param horseData - horse's datas filtered
-- @param itemMenuData - horse's datas filtered from database
exports.kd_stable:registerFilter('loadHorseData', function(horseData,horseDataFromDB)
	return horseData
end)
```
#### <Badge type="server" text="Server" /> updateExpByWalk
Fires when player rides a horse to update his experience
```lua
-- @param configWinExpByWalk - Config.winExpByWalk
-- @param horseID - ID of the horse
exports.kd_stable:registerFilter('updateExpByWalk', function(configWinExpByWalk,horseID)
	return configWinExpByWalk
end)
```
#### <Badge type="server" text="Server" /> updateMaxStableSlot
Fires when player opens a saddlebag
```lua
-- @param maxAmount - maximum of slot
-- @param source - serverID of the player
-- @param typeOrder - 'horse' or 'wagon'
exports.kd_stable:registerFilter('updateMaxStableSlot', function(maxAmount,source,typeOrder)
	return maxAmount
end)
```
#### <Badge type="server" text="Server" /> updateSaddlebagConfig
Fires when player opens a saddlebag
```lua
-- @param saddlebagConfig - saddlebag configuration
-- saddlebagConfig.maxSlots
-- saddlebagConfig.maxWeight
-- @param hash - saddlebag component hash
-- @param source - serverID of the player
-- @param horseID - ID of the horse
-- @paran invName - ID of the inventory
exports.kd_stable:registerFilter('updateSaddlebagConfig', function(saddlebagConfig,hash,source, horseID, invName)
	return saddlebagConfig
end)
```