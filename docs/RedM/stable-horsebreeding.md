# :horse: Horse breeding
Documentation relating to the **jo_stable_breeding** add-on for [Stable script](stable).

:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/horse-breeding)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/04A0kd0a8xg?si=n7lf5Dd5czIXD_A_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
::: warning
[Stable script](stable) is required to use this add-on
:::

To install jo_stable_breeding:
- Drag and drop the resource into your resources folder
  - jo_stable_breeding 
- Add this ensure in your server.cfg after `ensure kd_stable`
  - `ensure jo_stable_breeding`

Congratulation, the **Horse breeding** add-on is ready to be used!

## 2. Usage

Go in the stable to start the breeding.
You can select parents between your own horses. 

## 3. Config.lua file
<ScriptConfig scriptPath="redm/horse-breeding" />

## 4. For developers

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script. These filters are fired at a specific point in time during the execution of the script. But contrary to events, filters are **synchronous**. 

- Syntax: 
```lua
-- @param <actionName> - name of the action
-- @param <argumentList> - list of arguments which are passed
exports.jo_stable_breeding:registerFilter(<actionName>, function(variable)
  -- Add your new data here
	return variable -- Don't forget to return the value
end)
```
#### <Badge type="client" text="Client" /> Restrict the breeding
Use it to restrict who can see the "Breeding" button in the stable menu
```lua
-- @param canBreed - boolean
exports.jo_stable_breeding:registerFilter('canOpenBreedingMenu', function(canBreed)
	return canBreed
end)
```
:::details Example of job lock for VORP
```lua
AllowedJobs = {
    rhdHorsetrainer = true,
    blwHorsetrainer = true,
    valHorsetrainer = true,
}

exports.jo_stable_breeding:registerFilter('canOpenBreedingMenu', function(canBreed)
    local job = LocalPlayer.state.Character.Job
    if AllowedJobs[job] then
      return canBreed
    else
      jo.notif.rightError("You don't have the right job to tame wild horses")
      return false
    end
end)
```
:::