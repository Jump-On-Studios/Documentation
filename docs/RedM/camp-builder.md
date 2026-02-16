# :tent: Camp builder
Documentation relating to the kd_campbuilder.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/camp-builder)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/4tKYbyswJGQ?si=vmhF5oiiYUOn8RJp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
kd_campbuilder works with RedEM:RP and VORP. Be sure you installed one of them before to use this script.

- Drag and drop the resource in your resources folder
  - kd_campbuilder
- Add this ensure in your server.cfg
  - `ensure kd_campbuilder`
- Edit the redemrp_inventory to allow kd_campbuilder to add items dynamically.

In redemrp_inventory > client > cl_main.lua add :
```lua
RegisterNetEvent("redemrp_inventory:UpdateItems")
AddEventHandler("redemrp_inventory:UpdateItems", function(_items)
    Config.Items = _items
end)

```

In redemrp_inventory > server > sv_main add : 
```lua
RegisterServerEvent("redemrp_inventory:CreateCustomItem")
AddEventHandler("redemrp_inventory:CreateCustomItem", function(name, data)
    local source = source
    Config.Items[name] = data
    TriggerClientEvent("redemrp_inventory:UpdateItems", source, Config.Items)
end)

```
- Create the table in database
```sql
CREATE TABLE IF NOT EXISTS `camps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `characterid` int NOT NULL,
  `propsetModel` varchar(100) NOT NULL,
  `coordinates` varchar(100) NOT NULL,
  `lastrefresh` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
```
- Congratulation, the Camp builder script is ready to be use !
## 2. Usage
Go to the shop (maker in the map) to buy your camp. You will be able to preview them by pressed E.

To place your camp, use the item in your inventory. A preview of the camp will appears. You can rotate it with the mouse wheel . Press Enter to validate the location. 

A boxes will appears instead of your camp. Wait the countdown to have your camp. 

To remove your camp, use the command `/campunbuild` near than it. A countdown will be display again. Wait the end to take it with the command `/camptake` . The camp will be back in your inventory.

<ScriptConfig scriptPath="redm/camp-builder" />