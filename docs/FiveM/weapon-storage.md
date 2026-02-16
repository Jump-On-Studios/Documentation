# <img src="/images/gunrack.webp" /> Weapon storage
Documentation relating to the jo_gunrack.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/fivem/weapon-storage)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/wN7W2RE8r4M?si=o_3URKrSNJNL9wKc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
Be sure you installed the required dependencies :
- For ESX : [ox_target](https://github.com/overextended/ox_target/tree/main)
- For QBCore : qb_target

To install jo_gunrack:
- Drag and drop the resource into your resources folder
  - jo_gunrack 
- Add this ensure in your server.cfg
  - `ensure jo_gunrack`
Congratulation, the **Weapon storage** script is ready to be used!

## 2. Usage
Go to one of the locations to see the weapon storage. Press the 3rd eye key to interact with it.

## 3. Script configuration
<ScriptConfig scriptPath="fivem/weapon-storage" />

## 4. Know issues
:::details No such export isActive in resource ox_target
My update of ox_target is in waiting of approval by the OX team. To wait the integration in the main script, you can use my edit : [ox_target](https://github.com/KadDarem/ox_target/tree/isactive-export).<br>
You can find the 3 lines I added here : [the pull request](https://github.com/overextended/ox_target/pull/133/commits/6573d595b86fc41d9bc815795f6ae4ab3bcc3852)
:::

## 5. For developers

### Exports

#### <Badge type="shared" text="Shared" /> Get script configuration
exports to get the script configuration
```lua
exports.jo_gunrack:getConfig()

```

### Filters

[Filters](/DeveloperResources/filters) are the new way to modify data used by the script. These filters are fired at a specific point in time during the execution of the script. But contrary to events, filters are **synchronous**. 

- Syntax: 
```lua
-- @param <actionName> - name of the action
-- @param <argumentList> - list of arguments which are passed
exports.jo_gunrack:RegisterFilter(<actionName>, function(variable)
  -- Add your new data here
	return variable -- Don't forget to return the value
end)
```

#### <Badge type="client" text="Client" /> Limits gun adding
Fires before the player add a weapon into the weapon storage
```lua
-- @param canAdd - boolean : true if can add a weapon
-- @param gunrackId - int : unique identifier of the weapon storage
-- @param rackId - int : number of the rack where the weapon is
exports.jo_gunrack:RegisterFilter('canAddWeapon', function(canAdd, gunrackId, rackId)
	return canAdd
end)

```
#### <Badge type="client" text="Client" /> Limits gun grabbing
Fires before the player takes a weapon stored in the weapon storage
```lua
-- @param isOwner - boolean : true if the player is the owner of the weapon
-- @param gunrackId - int : unique identifier of the weapon storage
-- @param rackId - int : number of the rack where the weapon is
exports.jo_gunrack:RegisterFilter('canTakeWeapon', function(isOwner, gunrackId, rackId)
	return isOwner
end)

```