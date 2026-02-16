<style>
  
</style>
# :horse: Horse taming
Documentation relating to the **kd_stable_taming** add-on for [Stable script](stable).

:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/horse-taming)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/QthVc5bYAhg?si=i6YuwlZLQy8m0oqe" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
::: warning
[Stable script](stable) is required to use this add-on
:::

To install kd_stable_taming:
- Drag and drop the resource into your resources folder
  - kd_stable_taming 
- Add this ensure in your server.cfg after `ensure kd_stable`
  - `ensure kd_stable_taming`

Congratulation, the **Horse taming** add-on is ready to be used!

## 2. Usage

Find a wild horse, calm it and go on stable to tame/sell it.

## 3. Config.lua file
<ScriptConfig scriptPath="redm/horse-taming" />

## 4. For developers

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script. These filters are fired at a specific point in time during the execution of the script. But contrary to events, filters are **synchronous**. 

- Syntax: 
```lua
-- @param <actionName> - name of the action
-- @param <argumentList> - list of arguments which are passed
exports.kd_stable_taming:registerFilter(<actionName>, function(variable)
  -- Add your new data here
	return variable -- Don't forget to return the value
end)
```
#### <Badge type="client" text="Client" /> Restrict the selling
Fires after completed the selling prompt
```lua
-- @param canSell - boolean
exports.kd_stable_taming:registerFilter('canSellWildHorse', function(canSell)
	return canSell
end)
```
#### <Badge type="client" text="Client" /> Restrict the taming
Fires after completed the taming prompt
```lua
-- @param canTame - boolean
exports.kd_stable_taming:registerFilter('canTameWildHorse', function(canTame)
	return canTame
end)
```

:::details Example of job lock for VORP
```lua
AllowedJobs = {
    rhdHorsetrainer = true,
    blwHorsetrainer = true,
    valHorsetrainer = true,
}

exports.kd_stable_taming:registerFilter('canTameWildHorse', function(canTame)
    local job = LocalPlayer.state.Character.Job
    if AllowedJobs[job] then
      return canTame
    else
      jo.notif.rightError("You don't have the right job to tame wild horses")
      return false
    end
end)
```
:::