# :package: Movable chest
Documentation relating to the kd_coffre-deplacable.

<BuyScript script="fivem/movable-chest" />

## 1. Installation

kd_coffre-deplacable is a standalone script. So you don't need a specific framework to use it. It's also mean it works with all framework (Esx, QBCore, VRP, DRP, …).

- Drag and drop the resource in your resources folder
  - kd_coffre-deplacable
- Add this 4 ensures in your server.cfg
  - `ensure kd_coffre-deplacable`
- Run this SQL command on your database
```sql
CREATE TABLE IF NOT EXISTS `coffre_deplacable` (
  `autoinc_coffre` int NOT NULL AUTO_INCREMENT,
  `coords` text NOT NULL,
  `code` int NOT NULL,
  PRIMARY KEY (`autoinc_coffre`),
  KEY `autoinc_coffre` (`autoinc_coffre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
```
- Congratulation, the Movable chest script is ready to be use !

## 2. Usage
Put the chest on the ground with the client event
```lua
TriggerEvent('AddChest')

```
Use the decoder device with the client event
```lua
TriggerEvent('DecodeChest')

```

## 3. Config.lua
<ScriptConfig scriptPath="fivem/movable-chest" />