# :tophat: Clothes Wheel
Documentation relating to the kd_clotheswheel.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/clothes-wheel)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/DfbGIS4tGo8?si=G71Vam6KQBNYn-Bh" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation

- Drag and drop the resource in your resources folder
  - kd_clotheswheel
- Add this ensure in your server.cfg
  - `ensure kd_clotheswheel`
- Congratulation, the Clothes Wheel script is ready to be use !
## 2. Usage
The script will automatically detect what clothes you wear to only display them. 
By default, press the key `B` to open the wheel. 

You can also open the wheel from other resource by using the server side event :
```lua
TriggerServerEvent("kd_clotheswheel:server:getClothes")

```
For shirt and neckwear, you have the possibility to put them up/down too.

Listen the action on bandana with this client event :
```lua
AddEventHandler('kd_clotheswheel:client:bandanaUp', function(isUp)
    -- isUp = true if bandana up
    -- isUp = false if bandana down
end)

```

## 3. Config.lua
<ScriptConfig scriptPath="redm/clothes-wheel" />
## 4. Custom Frameworks

It's possible to force the reload of the clothes equiped by using this client event :
```lua
--Event to send custom data
--@param category : category of clothes you need to reload. Set nil to reload all clothes
TriggerClientEvent('kd_clotheswheel:updateClothes', source, category)

```

## 5. For developers

### Filters

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script added in the `v1.2.0`. These filters are fired at a specific point in time during the execution of the script. But contrary to events, filters are **synchronous**. 

::: tip  
You can create a filter in another resource. To do that, replace `jo.hook.registerFilter()` by `exports.kd_clotheswheel:registerFilter()`
:::

#### <Badge type="client" text="Client" /> canOpenWheel
Fired before open the clothes wheel
```lua
jo.hook.registerFilter('canOpenWheel', function(canOpen)
    --return false to cancel the opening of the clothes wheel
    return canOpen
end)

```