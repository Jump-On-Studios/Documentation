# <img src='/images/radial.png' /> Radial Menu
Documentation relating to the jo_radial script.


:::: tabs
::: tab BUY
[Buy the script](https://www.google.com/search?q=https://jumpon-studios.com/redm/radial-menu)
:::

::: tab PREVIEW

\<iframe width="560" height="315" src="[invalid URL removed]" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen\>\</iframe\>
:::
::::

## 1\. Installation

The `jo_radial` script works on all frameworks compatible with `jo_libs`.

To install `jo_radial`:

  - Download the library: [jo\_libs](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip)
  - Unzip the folder and drop it in your `resources` folder.
  - Download `jo_radial` from your [Keymaster account](https://www.google.com/search?q=https://keymaster.fivem.net/).
  - Unzip the folder and drop it in your `resources` folder.
  - Add these ensures in your `server.cfg`:
      - `ensure jo_libs`
      - `ensure jo_radial`

Congratulations, the **Radial Menu** script is ready to be used\! 🥳



## 2\. Usage

Using the radial menu is straightforward. Simply press the configured key (default is `B` -> `INPUT_SHOP_BOUNTY`, find all the controls [here](https://github.com/femga/rdr3_discoveries/tree/master/Controls)) to open the wheel. From there, you can navigate through the different options with your mouse.

  - **Open/Close**: Press the configured `Config.OpenKey`.
  - **Navigate**: Move your mouse over an item to select it.
  - **Select**: Click on an item to trigger its action or open a submenu.
  - **Submenus**: Selecting an item with a `submenu` of type `submenu` will open a new set of options.
  - **Subitems**: Selecting an item with a `submenu` of type `subitems` can also display related actions on an outer wheel for quick access.
  - **Back/Close**: Use the central button to go back to the previous menu or close the wheel entirely. You can also use `ESC` or `BACKSPACE` to close it.



## 3\. Configuration

The main configuration is done in `jo_radial/shared/config.lua`. This file allows you to define the menu's appearance, behavior, and content.

### General Configuration

You can customize the overall look and feel of the radial menu using the `Config.radialConfig` table.

```lua
Config.radialConfig = {
    color = "#07a3db",                 -- Main color for highlights and hover effects
    backText = "Back",                 -- Text for the back button in submenus
    closeText = "Close",               -- Text for the close button on the main menu
    logo = "logo.png"                  -- Your server's logo (place in nui/img/). Set to nil to disable.
}
```

### Menu Items (`Config.radialMenuItems`)

This is where you define the structure and actions of your radial menu. It's an array of tables, where each table represents an item on the wheel.

Of course\! Here is the complete Markdown text in a single block for you to copy and paste.


#### Item Structure

Here is the structure for a single menu item:

| Parameter | Type | Description |
| :--- | :--- | :--- |
| `label` | `string` | The text displayed on the menu item. Use `▼` to indicate a submenu. |
| `icon` | `string` (optional) | The filename of an icon from `jo_radial/nui/img/` (e.g., `weapons.png`). |
| `disabled` | `boolean` \| `function` (optional) | If `true`, the item is visible but cannot be clicked. A function returning a boolean can be used for dynamic conditions. |
| `visible` | `boolean` \| `function` (optional) | If `false`, the item will not be shown. A function can be used for dynamic visibility. |
| `shouldClose`| `boolean` (optional) | If `true`, the menu closes after the action. Defaults to `true` for actions and `false` for submenus. |
| `onClick` | `table` (optional) | A table defining the action to take when the item is clicked. See details below. |
| `submenu` | `table` (optional) | A table defining a submenu. See details below. |

---

#### `onClick` Object

| Parameter | Type | Description |
| :--- | :--- | :--- |
| `type` | `string` | The type of action. Valid options are:<br>- `clientEvent`: Triggers a client-side event.<br>- `serverEvent`: Triggers a server-side event.<br>- `command`: Executes a client command.<br>- `function`: Executes a Lua function. |
| `value` | `string` \| `function` | The event name, command string, or function to be executed. |
| `args` | `table` (optional) | An array of arguments to pass to a `clientEvent` or `serverEvent`. |

---

#### `submenu` Object

| Parameter | Type | Description |
| :--- | :--- | :--- |
| `type` | `string` | The type of submenu to display. Valid options are:<br>- `submenu`: Navigates to a new, separate wheel.<br>- `subitems`: Displays items on an outer wheel for quick access. |
| `items` | `table` | An array of item tables that make up the content of the submenu. |


### Basic Configuration Example

```lua
Config.OpenKey = GetHashKey("INPUT_SHOP_BOUNTY") -- Key to open the menu, find all the controls here :https://github.com/femga/rdr3_discoveries/tree/master/Controls

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

### Advanced Configuration Example

```lua
Config.OpenKey = GetHashKey("INPUT_SHOP_BOUNTY") -- Key to open the menu

-- General configuration for the radial menu's appearance
Config.radialConfig = {
    color = "#07a3db",                 -- Main color for highlights and hover effects
    backText = "Back",                 -- Text for the back button in submenus
    closeText = "Close",               -- Text for the close button on the main menu
    logo = "logo.png"                  -- Your server's logo (place in nui/img/). Set to nil to disable.
}

-- An example of a dynamically generated menu from another file
local emotesMenu = CreateEmotesMenu(12) -- This function is defined in shared/data/emotes.lua

-- Define the items for the main radial menu
Config.radialMenuItems = {
    -- 1. Simple Action Item: Executes a command and closes the menu.
    {
        label = "Map",
        icon = "map.png", -- Assumes map.png is in nui/img/
        shouldClose = true,
        onClick = {
            type = "command",
            value = "openMap" -- Executes the 'openMap' command
        }
    },

    -- 2. Submenu Example: Navigates to a new wheel for emotes.
    {
        label = "Emotes ▼",
        icon = "emotes.png",
        submenu = {
            type = "submenu",
            items = emotesMenu -- Items are loaded from the emotesMenu variable
        }
    },

    -- 3. Subitems Example: Displays related actions on an outer wheel.
    {
        label = "Actions",
        icon = "actions.png",
        submenu = {
            type = "subitems", -- This creates the outer wheel
            items = {
                {
                    label = "Hands Up",
                    icon = "hands_up.png",
                    onClick = { type = "function", value = function() print("Hands are up!") end }
                },
                {
                    label = "Kneel",
                    icon = "kneel.png",
                    onClick = { type = "function", value = function() print("Kneeling.") end }
                },
                {
                    label = "Admin Noclip",
                    icon = "noclip.png",
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