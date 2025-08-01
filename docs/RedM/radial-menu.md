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

Soon available
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

  - **Open/Close**: Press the configured `Config.OpenKey`.
  - **Navigate**: Move your mouse over an item to select it.
  - **Select**: Click on an item to trigger its action or open a submenu.
  - **Submenus**: Selecting an item with a `submenu` of type `submenu` will open a new set of options.
  - **Back/Close**: Use the central button to go back to the previous menu or close the wheel entirely. You can also use `ESC` or `BACKSPACE` to close it.



## 3. Configuration

The main configuration is done in `jo_radial/shared/config.lua`. This file allows you to define the menu's appearance, behavior, and content.

### General Configuration

You can customize the overall look and feel of the radial menu using the `Config.radialConfig` table.

| Parameter   | Type                | Description                                                                                                                                                      |
| :---------- | :------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `color`     | `string`            | Main color for highlights and hover effects (hex color code)                                                                                                     |
| `backText`  | `string`            | Text for the back button in submenus                                                                                                                             |
| `closeText` | `string`            | Text for the close button on the main menu                                                                                                                       |
| `logo`      | `string` (optional) | Your server's logo. Supports URL (`https://...`), local file (`logo.png` from `jo_radial/nui/img/`), or other script NUI (`nui://...`). Set to `nil` to disable. |

Example :

```lua
Config.radialConfig = {
    color = "#07a3db",
    backText = "Back",
    closeText = "Close",
    logo = "https://jumpon-studios.com/images/logo_no_bg.png"
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

| Parameter | Type     | Description                                                                                            |
| :-------- | :------- | :----------------------------------------------------------------------------------------------------- |
| `type`    | `string` | The type of submenu to display. Valid options are:<br>- `submenu`: Navigates to a new, separate wheel. |
| `items`   | `table`  | An array of item tables that make up the content of the submenu.                                       |



### Configuration Examples


:::tip
The preset configuration that comes with the script is provided 'as is'. It is up to you to customize it to fit your server's specific needs and own particularities.

See examples below.
:::

:::: tabs
::: tab Preset Configuration
```lua
-- ==================================================================================
-- SEE THE FULL DOCUMENTATION HERE : https://docs.jumpon-studios.com/RedM/radial-menu
-- The preset configuration is provided 'as is'. It is up to you to customize it to fit your server's specific needs and own particularities.
-- ==================================================================================


Config = {}

-- Keybind to open the radial menu
Config.OpenKey = "F7"

-- ===== MENU DEFINITIONS =====
-- These are reusable menu definitions that can be referenced in the main menu structure

-- Dynamically created emotes menu (creates 12 emote items)
local emotesMenu = CreateEmotesMenu(12)

-- UI Configuration for the radial menu appearance
Config.radialConfig = {
    color = "#ff0000",                                        -- Primary color for the radial menu (hex color)
    backText = "Back",                                        -- Text displayed on the back button
    closeText = "Close",                                      -- Text displayed on the close button
    logo = "https://jumpon-studios.com/images/logo_no_bg.png" -- Logo URL displayed in center
}

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
-- ⚠️VORP ONLY
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
        label = "Walk style",               -- Change character walking animation ⚠️VORP ONLY
        icon = "emote_dance_formal_a.webp", -- Local file in nui/img/ directory
        onClick = {
            type = "command",               -- Executes chat command
            value = "walkanim"              -- Command to execute
        }
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
:::
::: tab Basic Configuration
```lua

Config = {}

Config.OpenKey = 'F7' -- Key to open the menu, find all the controls here : https://docs.jumpon-studios.com/jo_libs/modules/raw-keys/client#keys

Config.radialConfig = {
    color = "#ff0000",                 -- Main color for highlights and hover effects
    backText = "Back",                 -- Text for the back button in submenus
    closeText = "Close",               -- Text for the close button on the main menu
    logo = nil                         -- Your server's logo. Supports URL (https://...), local file (logo.png from jo_radial/nui/img/), or other script NUI (nui://...). Set to nil to disable.
}

Config.radialMenuItems = {
    {
        label = "Emotes ▼",
        submenu = {
            type = "submenu",
            items = CreateEmotesMenu(12) -- Dynamically generated from emotes.lua
        }
    },
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
:::
::: tab Advanced Configuration
```lua

Config = {}

Config.OpenKey = "F7" -- Key to open the menu

-- General configuration for the radial menu's appearance
Config.radialConfig = {
    color = "#07a3db",                 -- Main color for highlights and hover effects
    backText = "Back",                 -- Text for the back button in submenus
    closeText = "Close",               -- Text for the close button on the main menu
    logo = "https://jumpon-studios.com/images/logo_no_bg.png"  -- Your server's logo. Supports URL (https://...), local file (logo.png from jo_radial/nui/img/), or other script NUI (nui://...). Set to nil to disable.
}

-- An example of a dynamically generated menu from another file
local emotesMenu = CreateEmotesMenu(12) -- This function is defined in shared/data/emotes.lua

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
        label = "Actions",
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
::::

