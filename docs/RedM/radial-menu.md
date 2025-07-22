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

Using the radial menu is straightforward. Simply press the configured key (default is `B` -> `INPUT_SHOP_BOUNTY`) to open the wheel. From there, you can navigate through the different options with your mouse.

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

#### Item Structure

Here is the structure for a single menu item:

  - `label` (string): The text displayed on the menu item. If you want, you can use `▼` to indicate a submenu.
  - `icon` (string, _optional_): The filename of an icon to display (e.g., `weapons.png`). Place images in `jo_radial/nui/img/`.
  - `disabled` (boolean | function, _optional_): If `true`, the item is visible but cannot be interacted with. Can be a function that returns a boolean for dynamic conditions.
  - `visible` (boolean | function, _optional_): If `false`, the item will not be shown. Can be a function for dynamic visibility.
  - `shouldClose` (boolean, _optional_): If `true`, the menu will close after the item's action is performed. Defaults to `false` for submenus and `true` for actions.
  - `onClick` (table, _optional_): Defines the action to take when the item is clicked.
      - `type` (string): The type of action. Can be `clientEvent`, `serverEvent`, `command`, or `function`.
      - `value` (string | function): The event name, command, or function to execute.
      - `args` (table, _optional_): A table of arguments to pass to the event of type `clientEvent` or `serverEvent` .
  - `submenu` (table, _optional_): Defines a submenu.
      - `type` (string): Can be `submenu` (navigates to a new wheel) or `subitems` (displays items on an outer wheel).
      - `items` (table): An array of item tables for the submenu.

#### Basic Configuration Example

```lua
Config.OpenKey = GetHashKey("INPUT_SHOP_BOUNTY") -- Key to open the menu

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

#### Advanced Configuration Example

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