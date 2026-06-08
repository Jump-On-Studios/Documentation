# <img src='/images/radial.png' class="icon-light" /><img src='/images/radial-dark.png' class="icon-dark" /> Radial Menu

<style>
.icon-light {
    display: none;
}
.icon-dark {
    display: none;
}
.dark .icon-dark {
    display: block;
}
html:not(.dark) .icon-light {
    display: block;
}
</style>

Documentation relating to the jo_radial script.

:::: tabs
::: tab BUY
[Buy the script](https://jumpon-studios.com/redm/radial-menu)
:::

::: tab PREVIEW

<iframe width="560" height="315" src="https://www.youtube.com/embed/zeMpRXC8kJk?si=wIuK5RGZWczm_twX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation

The `jo_radial` script works on all frameworks.

To install `jo_radial`:

  - Download the library: [jo\_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip)
  - Unzip the folder and drop it in your `resources` folder.
  - Download `jo_radial` from your [account](https://jumpon-studios.com/account).
  - Unzip the folder and drop it in your `resources` folder.
  - Add these ensures in your `server.cfg`:
      - `ensure jo_libs`
      - `ensure jo_radial`

Congratulations, the **Radial Menu** script is ready to be used\! 🥳



## 2. Usage

Using the radial menu is straightforward. Simply press the configured key (default is `F7`, find all the usable controls [here](https://docs.jumpon-studios.com/jo_libs/modules/raw-keys/client#keys)) to open the wheel. From there, you can navigate through the different options with your mouse.

  - **Open/Close**: Press the configured `Config.openKey`.
  - **Navigate**: Move your mouse over an item to select it.
  - **Select**: Click on an item to trigger its action or open a submenu.
  - **Submenus**: Selecting an item with a `submenu` of type `submenu` will open a new set of options.
  - **Back/Close**: Use the central button to go back to the previous menu or close the wheel entirely. You can also use `ESC` or `BACKSPACE` to close it.
  - **Hotkeys (if enabled)**:
      - With the wheel open, hover an actionable item (must have `onClick`, no submenu, not disabled/hidden) and long-press an allowed key (~1s) to bind it. Long-pressing the same key on the same item removes the binding. A circular loader shows progress.
      - In `hotbar` mode, only `0-9` are allowed and a bottom hotbar appears while the wheel is open; clicking a filled slot triggers the bound action.
      - To execute a bound action with the wheel closed, hold the `activationKey` (default `L ALT`) and tap the bound key. Badges on slices (and the hotbar in `hotbar` mode) show current bindings.



## 3. Configuration

The main configuration is done in `jo_radial/shared/config.lua`. This file allows you to define the menu's appearance, behavior, and content.

### General Configuration

You can modify the menu open/close behavior by changing properties of the `Config` table.

| Parameter           | Type                | Default value  | Description                                                                                                                   |
| :------------------ | :------------------ | :------------- | :---------------------------------------------------------------------------------------------------------------------------- |
| `Config.openKey`    | `string`\|`false`   | `F7`           | Key to open the menu (find all usable controls [here](https://docs.jumpon-studios.com/jo_libs/modules/raw-keys/client#keys)). Set `false` to disable manual opening via key (useful when controlling the menu only through exports or events). |
| `Config.holdToOpen` | `boolean`           | `false`        | Hold key to open menu (`true`) or toggle on/off (`false`).                                                                    |
| `Config.postFX`     | `string`\|`boolean` | `"WheelHUDIn"` | Post-processing effect to play when opening the menu. Set `false` to disable.                                                 |



You can customize the overall look and feel of the radial menu using the `Config.radial` table.

| Parameter       | Type                | Default value | Description                                                                                                                                                   |
| :-------------- | :------------------ | :------------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `color`         | `string`            | `"#ff0000"`   | Main color for highlights and hover effects (hex color code).                                                                                                 |
| `centerOpacity` | `float`             | `0.6`         | Opacity of the center background.                                                                                                                             |
| `logo`          | `string` (optional) | `nil`         | Your server's logo. Supports URL (`https://...`), local file (`logo.png` from `jo_radial/nui/img/`), or other script NUI (`nui://...`). Set `nil` to disable. |
| `hotkeys`       | `table`             | See below     | The hotkeys system configuration (see below).                                                                                                                 |


### Hotkeys / Hotbar

The radial menu can expose a hotkey/hotbar layer. Players can bind actions from the wheel to keys and trigger them later without opening the wheel.

| Parameter                          | Type                      | Default value | Description                                                                                                                                                                       |
| :--------------------------------- | :------------------------ | :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `hotkeys.enabled`                  | `boolean`                 | `true`        | Enable/disable the hotkey system.                                                                                                                                                 |
| `hotkeys.mode`                     | `"hotbar"` or `"hotkeys"` | `"hotbar"`    | `hotbar`: only `0-9` keys are allowed and a bottom hotbar is shown while the wheel is open. <br>`hotkeys`: any key can be bound (no hotbar overlay, badges still show on slices). |
| `hotkeys.activationKey`            | `string`                  | `"L ALT"`     | Modifier key to hold when triggering a hotkey while the wheel is closed (find usable controls [here](https://docs.jumpon-studios.com/jo_libs/modules/raw-keys/client#keys)).      |
| `hotkeys.disableAllControlActions` | `boolean`                 | `true`        | When `true`, disables all control actions while the activation key is held to avoid conflicts.                                                                                    |



Full Example:

```lua
Config.radial = {
    color = "#ff0000",                                         -- Primary color for the radial menu (hex color)
    centerOpacity = 0.6,                                       -- Opacity of the center background
    logo = "https://jumpon-studios.com/images/logo_no_bg.png", -- Logo URL displayed in center
    hotkeys = {
        enabled = true,                                        -- Enable/disable hotkey binding feature
        mode = "hotbar",                                       -- "hotbar" (0-9 keys) or "hotkeys" (Any key)
        activationKey = "L ALT",                               -- Modifier key required to trigger (CTRL, ALT, SHIFT), , find all the usable controls here :https://docs.jumpon-studios.com/jo_libs/modules/raw-keys/client#keys
        disableAllControlActions = true                        -- When `true`, disables all control actions while the activation key is held to avoid conflicts
    }
}
```

### Commands (`Config.commands`)

You can customize the command names used by the radial menu.

| Parameter                         | Type     | Default value       | Description                                                  |
| :-------------------------------- | :------- | :------------------ | :----------------------------------------------------------- |
| `Config.commands.clearAllHotkeys` | `string` | `"clearAllHotkeys"` | Command to clear all hotkey bindings for the current player. |

Example:

```lua
Config.commands = {
    clearAllHotkeys = "clearAllHotkeys" -- Command to clear all hotkey bindings for the current player.
}
```

### Menu Items (`Config.radialMenuItems`)

This is where you define the structure and actions of your radial menu. It's an array of tables, where each table represents an item on the wheel.

#### Item Structure

Here is the structure for a single menu item:

| Parameter     | Type                               | Description                                                                                                                                                                                              |
| :------------ | :--------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `label`       | `string`                           | The text displayed on the menu item. Use `▼` to indicate a submenu.                                                                                                                                      |
| `icon`        | `string` (optional)                | The icon to display. Supports three formats:<br>- Local file: `weapons.png` (from `jo_radial/nui/img/`)<br>- Web URL: `https://example.com/icon.png`<br>- Other script NUI: `nui://script_name/icon.png` |
| `hideLabel`   | `boolean` (optional)               | Show the label within each wheel slice. Defaults to `false`.                                                                                                                                             |
| `disabled`    | `boolean` \| `function` (optional) | If `true`, the item is visible but cannot be clicked. A function returning a boolean can be used for dynamic conditions.                                                                                 |
| `visible`     | `boolean` \| `function` (optional) | If `false`, the item will not be shown. A function can be used for dynamic visibility.                                                                                                                   |
| `shouldClose` | `boolean` (optional)               | If `true`, the menu closes after the action. Defaults to `true` for actions and `false` for submenus.                                                                                                    |
| `onClick`     | `table` (optional)                 | A table defining the action to take when the item is clicked. See details below.                                                                                                                         |
| `submenu`     | `table` (optional)                 | A table defining a submenu. See details below.                                                                                                                                                           |

---

#### `onClick` Object

| Parameter | Type                   | Description                                                                                                                                                                                                                     |
| :-------- | :--------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `type`    | `string`               | The type of action. Valid options are:<br>- `clientEvent`: Triggers a client-side event.<br>- `serverEvent`: Triggers a server-side event.<br>- `command`: Executes a client command.<br>- `function`: Executes a Lua function. |
| `value`   | `string` \| `function` | The event name, command string, or function to be executed.                                                                                                                                                                     |
| `args`    | `table` (optional)     | An array of arguments to pass to a `clientEvent` or `serverEvent`.                                                                                                                                                              |

---

#### `submenu` Object

| Parameter | Type                  | Description                                                                                                                                                      |
| :-------- | :-------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `type`    | `string`              | The type of submenu to display. Valid options are:<br>- `submenu`: Navigates to a new, separate wheel.                                                           |
| `items`   | `table` \| `function` | * table: list of item tables that make up the content of the submenu.<br>* function: fire everytime the menu is opened: it should returns a list of item tables. |
| `creator` | `function`(optional)  | A function fired the first time the submenu is needed                                                                                                            |

### Emotes Configuration (`Config.emotes`)

The default emote catalog used by `CreateEmotesMenu()` is configurable through `Config.emotes`. The preset list is defined in `jo_radial/config/_default.lock/listEmotes.lua`.

#### Standard RDO emote entry

| Field   | Required | Description                            |
| :------ | :------- | :------------------------------------- |
| `image` | optional | Icon filename (from `nui/img/`) or URL |
| `anim`  | required | RDO animation hash name                |
| `label` | required | Display text or `__("i18n_key")`       |

Set `anim = "unknown"` or `image = "unknown"` to hide an entry without deleting it.

#### Custom animation entry (dict-based)

When the `dict` field is present the entry bypasses the RDO emote system and plays the animation directly via `jo.animation.play()` instead.

| Field      | Required | Description                                                                          |
| :--------- | :------- | :----------------------------------------------------------------------------------- |
| `image`    | optional | Icon filename (from `nui/img/`) or URL                                               |
| `anim`     | required | Animation clip name inside the dictionary                                            |
| `dict`     | required | Animation dictionary name                                                            |
| `label`    | required | Display text or `__("i18n_key")`                                                     |
| `duration` | optional | Duration in ms — default: `-1` (plays the full clip once)                            |
| `flag`     | optional | Animation flags — default: `{}`. Table of bit indices or plain integer (used as-is). |
| `offset`   | optional | Start offset `0.0` → `1.0` — default: `0.0`                                         |

Two formats are accepted for `flag`:
- **Table of bit indices** (recommended): `flag = {0, 3}` — each number is a bit index
- **Plain integer**: `flag = 9` — the value is passed directly to the native

Common bit indices:

| Bit index | Integer value | Name | Description |
| :-------- | ------------: | :--- | :---------- |
| `0` | `1` | `AF_LOOPING` | Loop the animation continuously |
| `1` | `2` | `AF_HOLD_LAST_FRAME` | Freeze on the last frame when done |
| `2` | `4` | `AF_NOT_INTERRUPTABLE` | Prevent other tasks from cancelling the animation |
| `3` | `8` | `AF_UPPERBODY` | Play on upper body only (allows movement) |
| `4` | `16` | `AF_SECONDARY` | Play as a secondary/blended animation |

Full flag list: https://docs.jumpon-studios.com/jo_libs/modules/animation/client#jo-animation-play

Example with flags:

```lua
table.insert(Config.emotes.Dances, {
    anim     = "arthur_dance_loop",
    dict     = "cnv_camp@rchso@cnv@ccdtc33@player_karen",
    label    = "Arthur Dance",
    flag     = {0},   -- AF_LOOPING
    duration = -1,
})

-- Upper body only, looping
table.insert(Config.emotes.Action, {
    anim  = "my_anim",
    dict  = "my_dict",
    label = "Wave",
    flag  = {0, 3},   -- AF_LOOPING + AF_UPPERBODY
})
```

#### Stop emote

`CreateEmotesMenu()` automatically prepends a **Stop emote** item at the top of the wheel. It calls `ClearPedTasksImmediately` to instantly cancel any playing animation.

#### Adding and removing emotes

You can:
- Add emotes to any existing category
- Remove individual emotes or entire categories
- Hide an entry temporarily with `anim = "unknown"`

You cannot create new categories. `CreateEmotesMenu()` only supports these built-in categories: `Reaction`, `Action`, `Taunts`, `Greets`, `TwirlGun`, `Dances`.

Example:

```lua
-- Standard RDO emote
table.insert(Config.emotes.Action, {
    image = "my_custom_emote.webp",
    anim = "KIT_EMOTE_ACTION_POINT_1",
    label = "My Custom Emote"
})

-- Custom dict-based animation
table.insert(Config.emotes.Dances, {
    anim  = "arthur_dance_loop",
    dict  = "cnv_camp@rchso@cnv@ccdtc33@player_karen",
    label = "Arthur Dance"
})

Config.emotes.TwirlGun = nil -- Removes the whole category from the radial menu
```

### Walk Anims Configuration (`Config.walkAnims`)

The built-in walk style menu is powered by `Config.walkAnims`. The preset list is defined in `jo_radial/config/_default.lock/listWalkAnims.lua`. A **Reset to default** entry is always prepended automatically.

Two native approaches are supported and detected from the entry's fields:

#### Clipset + movetype

| Field      | Required | Description                                                        |
| :--------- | :------- | :----------------------------------------------------------------- |
| `label`    | required | Display text                                                       |
| `clipset`  | required | Locomotion archetype        |
| `movetype` | required | Movement type             |
| `image`    | optional | Icon filename (from `nui/img/`) or URL                             |

Available `clipset` values: `algie`, `angry_female`, `arthur_healthy`, `cowboy`, `cowboy_f`, `default_female`, `free_slave_01`, `free_slave_02`, `gold_panner`, `guard_lantern`, `injured_general`, `john_marston`, `lilly_millet`, `lone_prisoner`, `lost_man`, `mp_ova_hunter`, `mp_ova_hunter_female`, `murfree`, `old_female`, `primate`, `rally`, `waiter`, `war_veteran`

#### MP_Style_*

| Field   | Required | Description                                                              |
| :------ | :------- | :----------------------------------------------------------------------- |
| `label` | required | Display text                                                             |
| `style` | required | Style name    |
| `image` | optional | Icon filename (from `nui/img/`) or URL                                   |


#### Using the menu

```lua
{
    label = "Walk Styles",
    submenu = {
        type = "submenu",
        creator = function()
            return CreateWalkAnimsMenu(12) -- 12 items per page
        end
    }
}
```

#### Adding and removing styles

```lua
table.insert(Config.walkAnims, {
    label    = "My Style",
    clipset  = "war_veteran",
    movetype = "normal"
})

table.insert(Config.walkAnims, {
    label = "Drunk",
    style = "MP_Style_drunk"
})
```

To override the entire catalog, copy `config/_default.lock/listWalkAnims.lua` to `config/custom/listWalkAnims.lua` and edit the copy.



### Full Configuration Examples


:::warning
The preset configuration that comes with the script is provided 'as is'. It is up to you to customize it to fit your server's specific needs and own particularities.

See examples below.
:::

::: code-group

```lua [Basic Configuration]
-- ==================================================================================
-- Add inside the jo_radial\config\custom\menus.lua file
-- ==================================================================================


Config.radialMenuItems = {
    {
        label = "Emotes ▼",
        submenu = {
            type = "submenu",
            creator = function()
                --Only fire the first time the submenu is opened
                return CreateEmotesMenu(12) -- Dynamically generated from Config.emotes
            end
        }
    },
    { 
        label = "Dynamic submenu",
        submenu = {
            type = "submenu",
            items = function()
                -- Fire everytime the submenu is opened
                return {
                    label = math.random(1, 100),
                    onClick = {
                        type = "clientEvent",
                        value = "jo_radial:client:test",
                        args = { "arg1", { test = "arg2" } }
                    }
                },
            end
            }
        }
    }
    {
        label = "Dynamic Disabled",
        disabled = function()
            return true -- This item will always be disabled
        end
    },
    {
        label = "Dynamic Visible",
        visible = function()
            return false -- This item will never be visible
        end
    },
    {
        label = "Client Event",
        onClick = {
            type = "clientEvent",
            value = "jo_radial:client:test",
            args = { "arg1", { test = "arg2" } }
        }
    },
    {
        label = "Server Event",
        onClick = {
            type = "serverEvent",
            value = "jo_radial:server:test",
            args = { "arg1", { test = "arg2" } }
        }
    },
    {
        label = "Function",
        onClick = {
            type = "function",
            value = function() print("hello") end
        }
    },
    {
        label = "Command",
        shouldClose = false, -- Dont't close menu after executing
        onClick = {
            type = "command",
            value = "openMap"
        }
    },
}
```


```lua [VORP]
-- ==================================================================================
-- Add inside the jo_radial\config\custom\menus.lua file
-- ==================================================================================

-- ===== MENU DEFINITIONS =====
-- These are reusable menu definitions that can be referenced in the main menu structure

-- Dynamically created emotes menu from Config.emotes (creates 12 emote items)
local emotesMenu = CreateEmotesMenu(12)


-- Example menu demonstrating different item types and properties
local exampleMenu = {
    {
        label = "Dynamic Disabled",
        disabled = function()
            return true -- Returns true to disable the item (greyed out but visible)
        end
    },
    {
        label = "Dynamic Visible",
        visible = function()
            return false -- Returns false to hide the item completely
        end
    },
    {
        label = "Client Event", -- Triggers a client-side event when clicked
        onClick = {
            type = "clientEvent",
            value = "jo_radial:client:test",
            args = { "arg1", { test = "arg2" } } -- Optional arguments to pass
        }

    },
    {
        label = "disabled",
        disabled = true -- Static disabled state (always greyed out)
    },

    {
        label = "Server Event", -- Triggers a server-side event when clicked
        onClick = {
            type = "serverEvent",
            value = "jo_radial:server:test",
            args = { "arg1", { test = "arg2" } } -- Optional arguments to pass
        }
    },
    {
        label = "Function", -- Executes a Lua function directly when clicked
        onClick = {
            type = "function",
            value = function() print("hello") end
        }
    },
    {
        label = "Command", -- Executes a chat command when clicked
        onClick = {
            type = "command",
            value = "openMap"
        }
    },
}

-- Admin-only menu items for staff functions
local adminMenu = {
    {
        label = "Admin menu", -- Opens the main admin panel
        onClick = {
            type = "command",
            value = "adminMenu"
        }
    },
    {
        label = "TPM", -- Teleport to marker command
        onClick = {
            type = "command",
            value = "tpm"
        }
    },
}

-- Job-specific menu items that show based on player's current job
local jobMenu = {
    {
        label = "Doctor menu",
        visible = function() -- Only visible if player is a doctor
            return LocalPlayer.state.Character.Job == "doctor"
        end,
        onClick = {
            type = "command",
            value = "doctormenu"
        }
    },
    {
        label = "Doctor Alert",
        visible = function() -- Only visible if player is a doctor
            return LocalPlayer.state.Character.Job == "doctor"
        end,
        onClick = {
            type = "command",
            value = "doctorAlert"
        }
    },
    {
        label = "Police menu",
        visible = function() -- Only visible if player is police
            return LocalPlayer.state.Character.Job == "police"
        end,
        onClick = {
            type = "command",
            value = "policeMenu"
        }
    }
}

-- Wagon management options
-- ⚠️Works only if you have https://jumpon-studios.com/redm/horse-stable
local wagonMenu = {
    {
        label = "Call Wagon",                                          -- Spawns the player's wagon nearby
        icon = "nui://jo_libs/nui/menu/assets/images/icons/wagon.png", -- Local NUI resource icon
        onClick = {
            type = "command",
            value = "callWagon"
        }
    },
    {
        label = "Flee Wagon",                                                                                   -- Dismisses the current wagon
        icon = "https://femga.com/images/samples/ui_textures_no_bg/inventory_items/kit_upgrade_camp_wagon.png", -- External URL icon
        onClick = {
            type = "command",
            value = "fleeWagon"
        }
    }
}

-- Horse management and interaction options
-- ⚠️Works only if you have https://jumpon-studios.com/redm/horse-stable
local horseMenu = {
    {
        label = "Call Horse", -- Whistles for the player's horse (simulates whistle key)
        icon = "https://femga.com/images/samples/ui_textures_no_bg/inventory_items/generic_horse_equip_stirrup.png",
        onClick = {
            type = "function",                                    -- Direct function execution
            value = function()
                SetControlValueNextFrame(0, `INPUT_WHISTLE`, 1.0) -- Simulates whistle input
            end
        }
    },
    {
        label = "Flee Horse", -- Dismisses the current horse
        icon = "nui://jo_libs/nui/menu/assets/images/icons/transferStable.png",
        onClick = {
            type = "command",
            value = "fleeHorse"
        }
    },
    {
        label = "Sidesaddle", -- Changes riding style to sidesaddle
        icon = "https://femga.com/images/samples/ui_textures_no_bg/inventory_items/generic_horse_equip_saddle.png",
        onClick = {
            type = "command",
            value = "sidesaddle"
        }
    }
}



-- ===== MAIN RADIAL MENU STRUCTURE =====
-- This is the main menu that appears when the radial menu is opened
-- Items are arranged in a circle and can have actions or submenus
Config.radialMenuItems = {
    {
        label = "Emotes",                     -- Character animations and expressions
        icon = "emote_dance_carefree_a.webp", -- Local file in nui/img/ directory
        submenu = {
            type = "submenu",                 -- Navigate to new wheel level with fade transition
            items = emotesMenu                -- Reference to the dynamically created emotes menu
        }
    },
    {
        label = "Examples", -- Demonstration of different item types and properties
        icon = "https://femga.com/images/samples/ui_textures_no_bg/ui_textures_mp/inventory_items_mp/generic_camp_flag.png",
        submenu = {
            type = "submenu",   -- Navigate to new wheel level
            items = exampleMenu -- Reference to example menu defined above
        }
    },
    {
        label = "Clothes",                                                 -- Opens clothing customization system
        --⚠️Works only if you have https://jumpon-studios.com/redm/clothes-wheel
        icon = "nui://jo_libs/nui/menu/assets/images/icons/myclothes.png", -- NUI resource path
        onClick = {
            type = "serverEvent",                                          -- Triggers server-side event
            value = "kd_clotheswheel:server:getClothes"                    -- Event name to trigger
        }
    },
    {
        label = "Admin",     -- Admin panel access (staff only)  ⚠️VORP ONLY
        icon = "https://femga.com/images/samples/ui_textures_no_bg/ui_textures_mp/mp_online_options/online_options_defensive.png",
        visible = function() -- Dynamic visibility based on admin permissions
            local VORP = exports.vorp_core:GetCore()
            return VORP.Callback.TriggerAwait("vorp_admin:CanOpenStaffMenu", "vorp.staff.OpenMenu")
        end,
        submenu = {
            type = "submenu", -- Navigate to admin menu
            items = adminMenu -- Reference to admin menu defined above
        }
    },
    {
        label = "Job", -- Job-specific actions and menus
        icon = "https://femga.com/images/samples/ui_textures_no_bg/ui_textures_mp/inventory_items_mp/generic_bundle_crafting.png",
        submenu = {
            type = "submenu", -- Navigate to job menu
            items = jobMenu   -- Reference to job menu defined above
        }
    },
    {
        label = "Call doctor", -- Emergency medical assistance request
        icon = "https://femga.com/images/samples/ui_textures_no_bg/ui_textures_mp/inventory_items_mp/kit_role_naturalist_sample_kit.png",
        onClick = {
            type = "command",    -- Executes chat command
            value = "callDoctor" -- Command to execute
        }
    },
    {
        label = "Call Police", -- Emergency law enforcement request
        icon = "https://femga.com/images/samples/ui_textures_no_bg/inventory_items/provision_sheriff_star.png",
        onClick = {
            type = "command",    -- Executes chat command
            value = "callPolice" -- Command to execute
        }
    },
  {
    label = "Walk Styles",
    icon = "emote_dance_formal_a.webp", -- Local file in nui/img/ directory
    submenu = {
      type = "submenu",
      creator = function()
        return CreateWalkAnimsMenu(12) -- Configure in  jo_radial\config\_default.lock\listWalkAnims.lua
      end,
    },
  },
    {
        label = "Wagon",                                               -- Wagon management options
        -- ⚠️Works only if you have https://jumpon-studios.com/redm/horse-stable
        icon = "nui://jo_libs/nui/menu/assets/images/icons/wagon.png", -- NUI resource path
        submenu = {
            type = "submenu",                                          -- Navigate to wagon menu
            items = wagonMenu                                          -- Reference to wagon menu defined above
        }
    },
    {
        label = "Horse",                                                    -- Horse management and interaction options
        -- ⚠️Works only if you have https://jumpon-studios.com/redm/horse-stable
        icon = "nui://jo_libs/nui/menu/assets/images/icons/horse_coat.png", -- NUI resource path
        submenu = {
            type = "submenu",                                               -- Navigate to horse menu
            items = horseMenu                                               -- Reference to horse menu defined above
        }
    },
    {
        label = "inventory",                                              -- Quick access to player inventory
        icon = "nui://jo_libs/nui/menu/assets/images/icons/satchels.png", -- NUI resource path
        onClick = {
            type = "function",                                            -- Direct function execution
            value = function()                                            -- Simulates the inventory key press
                SetControlValueNextFrame(0, `INPUT_QUICK_USE_ITEM`, 1.0)
            end
        }
    }
}

```

```lua [RSG]
-- ==================================================================================
-- Add inside the jo_radial\config\custom\menus.lua file
-- ==================================================================================

-- ===== MENU DEFINITIONS =====
-- These are reusable menu definitions that can be referenced in the main menu structure

-- Dynamically created emotes menu from Config.emotes (creates 12 emote items)
local emotesMenu = CreateEmotesMenu(12)
local RSG = exports['rsg-core']:GetCoreObject()


-- Example menu demonstrating different item types and properties
local exampleMenu = {
    {
        label = "Dynamic Disabled",
        disabled = function()
            return true -- Returns true to disable the item (greyed out but visible)
        end
    },
    {
        label = "Dynamic Visible",
        visible = function()
            return false -- Returns false to hide the item completely
        end
    },
    {
        label = "Client Event", -- Triggers a client-side event when clicked
        onClick = {
            type = "clientEvent",
            value = "jo_radial:client:test",
            args = { "arg1", { test = "arg2" } } -- Optional arguments to pass
        }

    },
    {
        label = "disabled",
        disabled = true -- Static disabled state (always greyed out)
    },

    {
        label = "Server Event", -- Triggers a server-side event when clicked
        onClick = {
            type = "serverEvent",
            value = "jo_radial:server:test",
            args = { "arg1", { test = "arg2" } } -- Optional arguments to pass
        }
    },
    {
        label = "Function", -- Executes a Lua function directly when clicked
        onClick = {
            type = "function",
            value = function() print("hello") end
        }
    },
    {
        label = "Command", -- Executes a chat command when clicked
        onClick = {
            type = "command",
            value = "openMap"
        }
    },
}

-- Admin-only menu items for staff functions
local adminMenu = {
    {
        label = "Admin menu", -- Opens the main admin panel
        onClick = {
            type = "command",
            value = "adminMenu"
        }
    },
    {
        label = "TPM", -- Teleport to marker command
        onClick = {
            type = "command",
            value = "tpm"
        }
    },
}

-- Job-specific menu items that show based on player's current job
local jobMenu = {
    {
        label = "Doctor menu",
        visible = function() -- Only visible if player is a doctor
            return RSGCore.Functions.GetPlayerData().citizenid.job.name == "doctor"
        end,
        onClick = {
            type = "command",
            value = "doctormenu"
        }
    },
    {
        label = "Doctor Alert",
        visible = function() -- Only visible if player is a doctor
            return RSGCore.Functions.GetPlayerData().citizenid.job.name == "doctor"
        end,
        onClick = {
            type = "command",
            value = "doctorAlert"
        }
    },
    {
        label = "Police menu",
        visible = function() -- Only visible if player is police
            return RSGCore.Functions.GetPlayerData().citizenid.job.name == "police"
        end,
        onClick = {
            type = "command",
            value = "policeMenu"
        }
    }
}

-- Wagon management options
-- ⚠️Works only if you have https://jumpon-studios.com/redm/horse-stable
local wagonMenu = {
    {
        label = "Call Wagon",                                          -- Spawns the player's wagon nearby
        icon = "nui://jo_libs/nui/menu/assets/images/icons/wagon.png", -- Local NUI resource icon
        onClick = {
            type = "command",
            value = "callWagon"
        }
    },
    {
        label = "Flee Wagon",                                                                                   -- Dismisses the current wagon
        icon = "https://femga.com/images/samples/ui_textures_no_bg/inventory_items/kit_upgrade_camp_wagon.png", -- External URL icon
        onClick = {
            type = "command",
            value = "fleeWagon"
        }
    }
}

-- Horse management and interaction options
-- ⚠️Works only if you have https://jumpon-studios.com/redm/horse-stable
local horseMenu = {
    {
        label = "Call Horse", -- Whistles for the player's horse (simulates whistle key)
        icon = "https://femga.com/images/samples/ui_textures_no_bg/inventory_items/generic_horse_equip_stirrup.png",
        onClick = {
            type = "function",                                    -- Direct function execution
            value = function()
                SetControlValueNextFrame(0, `INPUT_WHISTLE`, 1.0) -- Simulates whistle input
            end
        }
    },
    {
        label = "Flee Horse", -- Dismisses the current horse
        icon = "nui://jo_libs/nui/menu/assets/images/icons/transferStable.png",
        onClick = {
            type = "command",
            value = "fleeHorse"
        }
    },
    {
        label = "Sidesaddle", -- Changes riding style to sidesaddle
        icon = "https://femga.com/images/samples/ui_textures_no_bg/inventory_items/generic_horse_equip_saddle.png",
        onClick = {
            type = "command",
            value = "sidesaddle"
        }
    }
}

-- ===== MAIN RADIAL MENU STRUCTURE =====
-- This is the main menu that appears when the radial menu is opened
-- Items are arranged in a circle and can have actions or submenus
Config.radialMenuItems = {
    {
        label = "Emotes",                     -- Character animations and expressions
        icon = "emote_dance_carefree_a.webp", -- Local file in nui/img/ directory
        submenu = {
            type = "submenu",                 -- Navigate to new wheel level with fade transition
            items = emotesMenu                -- Reference to the dynamically created emotes menu
        }
    },
    {
        label = "Examples", -- Demonstration of different item types and properties
        icon = "https://femga.com/images/samples/ui_textures_no_bg/ui_textures_mp/inventory_items_mp/generic_camp_flag.png",
        submenu = {
            type = "submenu",   -- Navigate to new wheel level
            items = exampleMenu -- Reference to example menu defined above
        }
    },
    {
        label = "Clothes",                                                 -- Opens clothing customization system
        --⚠️Works only if you have https://jumpon-studios.com/redm/clothes-wheel
        icon = "nui://jo_libs/nui/menu/assets/images/icons/myclothes.png", -- NUI resource path
        onClick = {
            type = "serverEvent",                                          -- Triggers server-side event
            value = "kd_clotheswheel:server:getClothes"                    -- Event name to trigger
        }
    },
    {
        label = "Admin",     -- Admin panel access (staff only)
        icon = "https://femga.com/images/samples/ui_textures_no_bg/ui_textures_mp/mp_online_options/online_options_defensive.png",
        visible = function() -- Dynamic visibility based on admin permissions
            return RSGCore.Functions.GetPlayerData().citizenid = "steam:xxxxxxxxx"
        end,
        submenu = {
            type = "submenu", -- Navigate to admin menu
            items = adminMenu -- Reference to admin menu defined above
        }
    },
    {
        label = "Job", -- Job-specific actions and menus
        icon = "https://femga.com/images/samples/ui_textures_no_bg/ui_textures_mp/inventory_items_mp/generic_bundle_crafting.png",
        submenu = {
            type = "submenu", -- Navigate to job menu
            items = jobMenu   -- Reference to job menu defined above
        }
    },
    {
        label = "Call doctor", -- Emergency medical assistance request
        icon = "https://femga.com/images/samples/ui_textures_no_bg/ui_textures_mp/inventory_items_mp/kit_role_naturalist_sample_kit.png",
        onClick = {
            type = "command",    -- Executes chat command
            value = "callDoctor" -- Command to execute
        }
    },
    {
        label = "Call Police", -- Emergency law enforcement request
        icon = "https://femga.com/images/samples/ui_textures_no_bg/inventory_items/provision_sheriff_star.png",
        onClick = {
            type = "command",    -- Executes chat command
            value = "callPolice" -- Command to execute
        }
    },
  {
    label = "Walk Styles",
    icon = "emote_dance_formal_a.webp", -- Local file in nui/img/ directory
    submenu = {
      type = "submenu",
      creator = function()
        return CreateWalkAnimsMenu(12) -- Configure in  jo_radial\config\_default.lock\listWalkAnims.lua
      end,
    },
  },
    {
        label = "Wagon",                                               -- Wagon management options
        -- ⚠️Works only if you have https://jumpon-studios.com/redm/horse-stable
        icon = "nui://jo_libs/nui/menu/assets/images/icons/wagon.png", -- NUI resource path
        submenu = {
            type = "submenu",                                          -- Navigate to wagon menu
            items = wagonMenu                                          -- Reference to wagon menu defined above
        }
    },
    {
        label = "Horse",                                                    -- Horse management and interaction options
        -- ⚠️Works only if you have https://jumpon-studios.com/redm/horse-stable
        icon = "nui://jo_libs/nui/menu/assets/images/icons/horse_coat.png", -- NUI resource path
        submenu = {
            type = "submenu",                                               -- Navigate to horse menu
            items = horseMenu                                               -- Reference to horse menu defined above
        }
    },
    {
        label = "inventory",                                              -- Quick access to player inventory
        icon = "nui://jo_libs/nui/menu/assets/images/icons/satchels.png", -- NUI resource path
        onClick = {
            type = "function",                                            -- Direct function execution
            value = function()                                            -- Simulates the inventory key press
                SetControlValueNextFrame(0, `INPUT_QUICK_USE_ITEM`, 1.0)
            end
        }
    }
}

```



```lua [Advanced Configuration]
-- ==================================================================================
-- Add inside the jo_radial\config\custom\menus.lua file
-- ==================================================================================


-- An example of a dynamically generated menu from another file
local emotesMenu = CreateEmotesMenu(12) -- This function reads from Config.emotes

-- Define the items for the main radial menu
Config.radialMenuItems = {
    -- 1. Simple Action Item: Executes a command and closes the menu.
    {
        label = "Map",
        icon = "map.png", -- Local file from jo_radial/nui/img/
        shouldClose = true,
        onClick = {
            type = "command",
            value = "openMap" -- Executes the 'openMap' command
        }
    },

    -- 2. Submenu Example: Navigates to a new wheel for emotes.
    {
        label = "Emotes ▼",
        icon = "https://example.com/emotes.png", -- Web URL icon
        submenu = {
            type = "submenu",
            items = emotesMenu -- Items are loaded from the emotesMenu variable
        }
    },

    -- 3. Submenu inline Example
    {
        label = "Actions ▼",
        icon = "nui://another_script/actions.png", -- Icon from another script's NUI
        submenu = {
            type = "submenu", -- Navigate to submenu
            items = {
                {
                    label = "Hands Up",
                    icon = "hands_up.png", -- Local file
                    onClick = { type = "function", value = function() print("Hands are up!") end }
                },
                {
                    label = "Kneel",
                    icon = "https://example.com/kneel.png", -- Web URL
                    onClick = { type = "function", value = function() print("Kneeling.") end }
                },
                {
                    label = "Admin Noclip",
                    icon = "nui://admin_menu/noclip.png", -- Other script NUI
                    visible = function()
                        -- Only show this item if the player is an admin
                        return true -- TODO: Replace with your admin check, e.g., exports.my_admin:isAdmin(source)
                    end,
                    onClick = { type = "command", value = "noclip" }
                }
            }
        }
    },

    -- 4. Deeply Nested Submenu Example
    {
        label = "Inventory ▼",
        icon = "satchels.png",
        submenu = {
            type = "submenu",
            items = {
                {
                    label = "Food ▼",
                    icon = "food.png",
                    submenu = {
                        type = "submenu",
                        items = {
                            { label = "Eat Bread", onClick = { type = "clientEvent", value = "inventory:useItem", args = {"bread"} } },
                            { label = "Eat Apple", onClick = { type = "clientEvent", value = "inventory:useItem", args = {"apple"} } }
                        }
                    }
                },
                {
                    label = "Drinks ▼",
                    icon = "drinks.png",
                    submenu = {
                        type = "submenu",
                        items = {
                            { label = "Drink Water", onClick = { type = "serverEvent", value = "inventory:useItem", args = {"water"} } },
                        }
                    }
                },
                { label = "Medical", icon = "medical.png", onClick = { type = "clientEvent", value = "inventory:openCategory", args = {"medical"} } }
            }
        }
    },

    -- 5. Dynamic & Disabled Item Example
    {
        label = "Call Horse",
        icon = "horse.png",
        disabled = function()
            -- Example: Disable this if the player's horse is already nearby
            local isHorseNear = false -- TODO: Replace with your logic, e.g., isEntityNearby(GetPlayerHorse())
            return isHorseNear
        end,
        onClick = {
            type = "clientEvent",
            value = "stables:whistle"
        }
    },

    -- 6. Server Event Example
    {
        label = "Request Help",
        icon = "help.png",
        onClick = {
            type = "serverEvent",
            value = "support:requestAdmin",
            args = { "Player needs help at their location!" }
        }
    }
}
```
:::



### Language Configuration

The script supports full translation through the language system. To override any text in the script:

1. Find the key you want to change in `jo_radial\config\_default.lock\lang.lua`
2. Add only that key to `jo_radial\config\custom\lang.lua` with your new text

Example:

```lua
-- In jo_radial\config\custom\lang.lua
Lang.backText = "Назад"
Lang.closeText = "Закрыть"
Lang.invalidHotkeyRegistration = "Неверные данные регистрации горячей клавиши"
```

Available translation categories include:
- General UI & Common Terms
- Notifications & Messages (success and error messages)
- Emotes names

:::tip 💡Only change the key you need to translate
You only need to include the specific keys you want to change in `jo_radial\config\custom\lang.lua`. Don't copy the entire language file.
:::

### External Control

You can open or close the radial menu programmatically from other scripts using either an **export** or a **client event**.

#### Export

```lua
exports.jo_radial:showMenu(true)  -- Open the menu
exports.jo_radial:showMenu(false) -- Close the menu
```

#### Client Event

```lua
TriggerEvent("jo_radial:client:showMenu", true)  -- Open the menu (from client)
TriggerEvent("jo_radial:client:showMenu", false)  -- Close the menu (from client)
-- or
TriggerClientEvent("jo_radial:client:showMenu", source, true) -- Open the menu (from server)
TriggerClientEvent("jo_radial:client:showMenu", source, false) -- Close the menu (from server)
```

:::tip
If you want to control the menu **only** through exports or events, set `Config.openKey = false` to disable the manual keybind.
:::
