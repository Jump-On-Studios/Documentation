# 🧵 Tailor
Documentation relating to the **jo_clothingstore_tailor** add-on for [Clothing store script](clothing-store).

:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/clothes-tailor)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/GR9xSUI8GC4?si=Lrqr9_NxGr0R86RB" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation
::: warning
[Clothing store script](clothing-store) is required to use this add-on
:::

To install jo_clothingstore_tailor:
- Drag and drop the resource into your resources folder: `jo_clothingstore_tailor`
- Add these ensures in your server.cfg after `ensure jo_clothingstore`: 
- `ensure jo_clothingstore_tailor`

Congratulation, the **Tailor Mannequins** add-on is ready to be used!

## 2. Usage

- Open the tailor menu with `/tailorMenu` (configurable via `Config.commands.openTailorMenu`).
- Select one of your saved outfits and optionally override the mannequin name, price, and pose.
- Place the mannequin in the world using the gizmo, then confirm to save.
- When a player approaches a mannequin, owners see **Edit** and **Delete** prompts, while other players see **Try outfit** and **Buy outfit** prompts.
- Trying an outfit applies it temporarily; moving away restores the original outfit.
- Buying uses the main clothing-store outfit system (either gives an outfit item or saves/equips the outfit, depending on your jo_clothingstore configuration).

## 3. Configuration

### How to customize the configuration

1. Navigate to `jo_clothingstore_tailor/config/_default.lock/`
2. Copy the file you want to modify (e.g., `global.lua`)
3. Paste it into `jo_clothingstore_tailor/config/custom/`
4. Edit the copied file in the `custom` folder

The script automatically loads files from `custom/` first, and only uses `_default.lock/` as a fallback. This system ensures your customizations are preserved when updating the script.

### Default configuration files

::: code-group
```lua [global.lua]
Config.removeOutfitFromMannequinOnPurchase = false -- If true, the outfit will be removed from the mannequin after a purchase.

Config.maxMannequinsPerTailor = 10                 -- Maximum amount of mannequins allowed per tailor

Config.mannequinsSpawnDistance = 10.0
Config.mannequinPromptsDistance = 2.0
```

```lua [commands.lua]
Config.commands.openTailorMenu = "tailorMenu"
```

```lua [keys.lua]
Config.keys = {
    enter = "ENTER",
    tryOutfit = "E",
    editMannequin = "E",
    deleteMannequin = "X"
}
```
::: 

### Language Configuration

The script supports full translation through the language system. To override any text:

1. Find the key you want to change in `config/_default.lock/lang.lua`
2. Copy `lang.lua` to `config/custom/` and add only the keys you want to override

Example:

```lua
Lang.createMannequinMenuTitle = "New Mannequin"
Lang.buyOutfit = "Buy outfit for $%d"
Lang.maxMannequinsReached = "You have reached the maximum number of mannequins"
```

Available translation categories include:
- General UI & Common Terms
- Prompts
- Notifications


## 4. For developers

### Actions

Actions are one of the two types of Hooks. They provide a way for running a function at a specific point in the execution of scripts. Callback functions for an Action do not return anything back to the calling Action hook. They are the counterpart to Filters.

Below is a complete list of all available actions in the jo_clothingstore_tailor script.

#### <Badge type="shared" text="Shared" /> init
Triggered when the add-on is initialized (after jo_clothingstore starts).

```lua
exports.jo_clothingstore_tailor:registerAction('init', function()
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> mannequinCreated
Triggered after a mannequin is created.

```lua
-- @param source - server ID of the creator
-- @param mannequin - mannequin data
exports.jo_clothingstore_tailor:registerAction('mannequinCreated', function(source, mannequin)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> mannequinUpdated
Triggered after a mannequin is updated.

```lua
-- @param source - server ID of the editor
-- @param mannequin - mannequin data
exports.jo_clothingstore_tailor:registerAction('mannequinUpdated', function(source, mannequin)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> mannequinDeleted
Triggered after a mannequin is deleted.

```lua
-- @param source - server ID of the owner
-- @param mannequinId - number
exports.jo_clothingstore_tailor:registerAction('mannequinDeleted', function(source, mannequinId)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> outfitBought
Triggered after an outfit is purchased from a mannequin.

```lua
-- @param source - server ID of the buyer
-- @param mannequin - mannequin data
-- @param outfit - outfit table
-- @param price - price table/number
exports.jo_clothingstore_tailor:registerAction('outfitBought', function(source, mannequin, outfit, price)
    -- Your code here
end)
```

### Filters

[Filters](/DeveloperResources/filters) allow you to modify data or permissions synchronously at specific points in the script. Below is the complete list of jo_clothingstore_tailor filters and how to use them.

#### <Badge type="server" text="Server" /> canCreateMannequin
Control whether a player can create a mannequin.

```lua
-- @param canCreate - boolean (default true)
-- @param source - server ID of the creator
-- @param mannequin - mannequin data
exports.jo_clothingstore_tailor:registerFilter('canCreateMannequin', function(canCreate, source, mannequin)
    return canCreate
end)
```

#### <Badge type="server" text="Server" /> canUpdateMannequin
Control whether a player can update a mannequin.

```lua
-- @param canUpdate - boolean (default true)
-- @param source - server ID of the editor
-- @param existing - existing mannequin data
-- @param incoming - updated mannequin data
exports.jo_clothingstore_tailor:registerFilter('canUpdateMannequin', function(canUpdate, source, existing, incoming)
    return canUpdate
end)
```

#### <Badge type="server" text="Server" /> canDeleteMannequin
Control whether a player can delete a mannequin.

```lua
-- @param canDelete - boolean (default true)
-- @param source - server ID of the owner
-- @param mannequin - mannequin data
exports.jo_clothingstore_tailor:registerFilter('canDeleteMannequin', function(canDelete, source, mannequin)
    return canDelete
end)
```

#### <Badge type="server" text="Server" /> canBuyOutfit
Control whether a player can buy an outfit from a mannequin.

```lua
-- @param canBuy - boolean (default true)
-- @param source - server ID of the buyer
-- @param mannequin - mannequin data
exports.jo_clothingstore_tailor:registerFilter('canBuyOutfit', function(canBuy, source, mannequin)
    return canBuy
end)
```
