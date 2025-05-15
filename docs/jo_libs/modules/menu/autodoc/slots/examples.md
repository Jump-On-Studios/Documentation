<!-- #region client|MenuClass:addItem -->
#### Example
```lua
-- Create a menu
local menu = jo.menu.create("shopMenu", {
  title = "General Store",
  subtitle = "Available Items"
})

-- Add items using single parameter (adds to the end of the list)
menu:addItem({
  title = "Hunting Knife",
  description = "A sharp knife for skinning animals",
  prefix = "knife", -- Icon before the title
  price = { money = 12.50 },
  statistics = {
    { label = "Damage", type = "bar", value = { 7, 10 } },
    { label = "Durability", type = "bar", value = { 8, 10 } }
  },
  onClick = function(currentData)
    print("Purchasing Hunting Knife")
    -- Code to purchase the item would go here
  end
})

-- Add item at specific position (position 1 - at the beginning)
menu:addItem(1, {
  title = "Horse Brush",
  description = "Keep your horse clean and happy",
  price = { money = 5.75 },
  icon = "brush",     -- Left icon
  disabled = false,
  textRight = "New!", -- Text shown on the right
  onClick = function(currentData)
    print("Purchasing Horse Brush")
    -- Code to purchase the item would go here
  end
})

-- Add another item with sliders
menu:addItem({
  title = "Hunting Outfit",
  description = "Camouflage clothing for hunting",
  price = { money = 45.00, gold = 5 },
  sliders = {
    {
      title = "Colors",
      current = 1,
      values = { "Brown", "Green", "Black" }
    }
  },
  onChange = function(currentData)
    local selectedColor = currentData.item.sliders[1].value.label
    print("Selected color: " .. selectedColor)
  end
})

-- Add a child menu item (opens another menu when selected)
menu:addItem({
  title = "Weapons →",
  child = "weaponsMenu", -- This will open the "weaponsMenu" when activated
  icon = "revolver"
})

-- Send the menu to the NUI layer
menu:send()

-- Set this menu as the current menu and show it
jo.menu.setCurrentMenu("shopMenu")
jo.menu.show(true)

```
<!-- #endregion client|MenuClass:addItem -->


<!-- #region client|MenuClass:refresh -->
#### Example
```lua
local menu = jo.menu.create(id, data)
menu:addItem({ title = "Item 1" })
menu:send()
menu:addItem({ title = "Item 2" })
menu:refresh()

```
<!-- #endregion client|MenuClass:refresh -->


<!-- #region client|MenuClass:reset -->
#### Example
```lua
menu:reset()

```
<!-- #endregion client|MenuClass:reset -->


<!-- #region client|MenuClass:send -->
#### Example
```lua
local menu = jo.menu.create(id, data)
menu:send()

```
<!-- #endregion client|MenuClass:send -->


<!-- #region client|MenuClass:sort -->
#### Example
```lua
-- Sort all menu items alphabetically by title
menu:sort()

-- Sort only items 2 through 5
menu:sort(2, 5)

```
<!-- #endregion client|MenuClass:sort -->


<!-- #region client|MenuClass:updateItem -->
#### Example
```lua
-- Update the title of the second item
menu:updateItem(2, "title", "New Title")

-- Disable the third item
menu:updateItem(3, "disabled", true)

```
<!-- #endregion client|MenuClass:updateItem -->


<!-- #region client|MenuClass:use -->
#### Example
```lua
-- Set this menu as the current active menu
-- Keep navigation history and reset the cursor position
menu:use(true, true)

-- Set this menu as the current active menu
-- Don't keep navigation history
menu:use(false)

```
<!-- #endregion client|MenuClass:use -->


<!-- #region client|jo.menu.addItem -->
#### Example
```lua
-- Add a new item to a menu by its ID
local menuId = "mainMenu"
jo.menu.addItem(menuId, {
  title = "New Option",
  description = "This is a new menu option",
  onClick = function(currentData)
    print("New option clicked")
  end
})

-- Add a new item at a specific position (3rd position)
jo.menu.addItem(menuId, 3, {
  title = "Insert at position 3",
  description = "This item will be inserted at position 3"
})

```
<!-- #endregion client|jo.menu.addItem -->


<!-- #region client|jo.menu.create -->
#### Example
```lua
--The unique ID of the menu
local id = "UniqueId1"
--The menu data
local data = {
  title = "Menu",        --The big title of the menu
  subtitle = "Elements", --The subtitle of the menu
  numberOnScreen = 8,    --The number of item display before add a scroll
  onEnter = function(currentData)
    print("Enter in menu " .. id)
  end,
  onBack = function(currentData)
    print("Backspace/Esc pressed in menu " .. id)
  end,
  onExit = function(currentData)
    print("Exit menu " .. id)
  end,
}
local menu = jo.menu.create(id, data)

```
<!-- #endregion client|jo.menu.create -->


<!-- #region client|jo.menu.delete -->
#### Example
```lua
local id = "UniqueId1"
jo.menu.delete(id)

```
<!-- #endregion client|jo.menu.delete -->


<!-- #region client|jo.menu.doesActiveButtonChange -->
#### Example
```lua
-- Check if the selected button has changed since last update
if jo.menu.doesActiveButtonChange() then
  print("Player selected a different button")
end

```
<!-- #endregion client|jo.menu.doesActiveButtonChange -->


<!-- #region client|jo.menu.fireAllLevelsEvent -->
#### Example
```lua
-- Fire a custom event across all menu levels
jo.menu.fireAllLevelsEvent("onCustomEvent", "Parameter 1", 42, { data = "Extra data" })

```
<!-- #endregion client|jo.menu.fireAllLevelsEvent -->


<!-- #region client|jo.menu.fireEvent -->
#### Example
```lua
-- Get the current item and fire a custom event on it
local currentItem = jo.menu.getCurrentItem()
jo.menu.fireEvent(currentItem, "onClick")

-- Fire a custom event on a specific menu
local menu = jo.menu.get("mainMenu")
jo.menu.fireEvent(menu, "onExit")

```
<!-- #endregion client|jo.menu.fireEvent -->


<!-- #region client|jo.menu.forceBack -->
#### Example
```lua
-- Force the menu to go back to the previous menu
jo.menu.forceBack()

```
<!-- #endregion client|jo.menu.forceBack -->


<!-- #region client|jo.menu.get -->
#### Example
```lua
-- Get a menu instance by its ID
local menuId = "mainMenu"
local menu = jo.menu.get(menuId)

-- Now you can work with this menu instance
if menu then
  print("Menu title: " .. menu.title)
  print("Number of items: " .. #menu.items)
end

```
<!-- #endregion client|jo.menu.get -->


<!-- #region client|jo.menu.getCurrentData -->
#### Example
```lua
-- Get data about the current menu state
local currentData = jo.menu.getCurrentData()
print("Current menu ID: " .. tostring(currentData.menu))
print("Current item index: " .. tostring(currentData.index))

```
<!-- #endregion client|jo.menu.getCurrentData -->


<!-- #region client|jo.menu.getCurrentItem -->
#### Example
```lua
-- Get the currently selected menu item
local currentItem = jo.menu.getCurrentItem()

-- Access properties of the current item
if currentItem then
  print("Selected item: " .. currentItem.title)
  if currentItem.description then
    print("Description: " .. currentItem.description)
  end
end

```
<!-- #endregion client|jo.menu.getCurrentItem -->


<!-- #region client|jo.menu.getCurrentMenu -->
#### Example
```lua
-- Get the currently active menu
local currentMenu = jo.menu.getCurrentMenu()

-- Access properties of the current menu
if currentMenu then
  print("Active menu title: " .. currentMenu.title)
  print("Number of items: " .. #currentMenu.items)
end

```
<!-- #endregion client|jo.menu.getCurrentMenu -->


<!-- #region client|jo.menu.getPreviousData -->
#### Example
```lua
-- Get data about the previous menu state
local previousData = jo.menu.getPreviousData()
print("Previous menu ID: " .. tostring(previousData.menu))
print("Previous item index: " .. tostring(previousData.index))

```
<!-- #endregion client|jo.menu.getPreviousData -->


<!-- #region client|jo.menu.isOpen -->
#### Example
```lua
local isOpen = jo.menu.isOpen()
print(isOpen)

```
<!-- #endregion client|jo.menu.isOpen -->


<!-- #region client|jo.menu.onChange -->
#### Example
```lua
-- Register a callback function for menu change events
jo.menu.onChange(function(currentData)
  print("Menu changed to: " .. tostring(currentData.menu))
  print("Selected item: " .. tostring(currentData.item.title))

  -- You can handle different menus here
  if currentData.menu == "mainMenu" then
    -- Do something specific for the main menu
  elseif currentData.menu == "settingsMenu" then
    -- Do something specific for the settings menu
  end
end)

```
<!-- #endregion client|jo.menu.onChange -->


<!-- #region client|jo.menu.refresh -->
#### Example
```lua
-- Refresh a menu by its ID to update its display
local menuId = "mainMenu"
jo.menu.refresh(menuId)

```
<!-- #endregion client|jo.menu.refresh -->


<!-- #region client|jo.menu.reset -->
#### Example
```lua
-- Reset a menu by its ID
-- This moves the cursor back to the first item
local menuId = "mainMenu"
jo.menu.reset(menuId)

```
<!-- #endregion client|jo.menu.reset -->


<!-- #region client|jo.menu.send -->
#### Example
```lua
-- Send a menu to the NUI layer by its ID
local menuId = "mainMenu"
jo.menu.send(menuId)

-- Send without resetting cursor position
jo.menu.send(menuId, false)

```
<!-- #endregion client|jo.menu.send -->


<!-- #region client|jo.menu.set -->
#### Example
```lua
-- Create a new menu instance
local newMenu = {
  id = "customMenu",
  title = "Custom Menu",
  subtitle = "Created with jo.menu.set",
  items = {
    { title = "Option 1" },
    { title = "Option 2" }
  }
}

-- Set this as a menu by its ID
jo.menu.set("customMenu", newMenu)

```
<!-- #endregion client|jo.menu.set -->


<!-- #region client|jo.menu.setCurrentMenu -->
#### Example
```lua
local id = "UniqueId1"
local keepHistoric = true
local resetMenu = true
jo.menu.setCurrentMenu(id, keepHistoric, resetMenu)

```
<!-- #endregion client|jo.menu.setCurrentMenu -->


<!-- #region client|jo.menu.show -->
#### Example
```lua
local visible = true
local keepInput = true
local hideRadar = true
jo.menu.show(visible, keepInput, hideRadar)

```
<!-- #endregion client|jo.menu.show -->


<!-- #region client|jo.menu.sort -->
#### Example
```lua
-- Sort all items in a menu alphabetically by title
local menuId = "mainMenu"
jo.menu.sort(menuId)

-- Sort only items 2 through 5
jo.menu.sort(menuId, 2, 5)

```
<!-- #endregion client|jo.menu.sort -->


<!-- #region client|jo.menu.updateItem -->
#### Example
```lua
-- Update the title of the second item in a menu
local menuId = "mainMenu"
jo.menu.updateItem(menuId, 2, "title", "New Title")

-- Disable the third item
jo.menu.updateItem(menuId, 3, "disabled", true)

```
<!-- #endregion client|jo.menu.updateItem -->


<!-- #region client|jo.menu.updateLang -->
#### Example
```lua
-- Update menu language text
jo.menu.updateLang({
  of = "%1 of %2",
  selection = "Selection",
  devise = "$",
  number = "Number %1",
  free = "Free",
  variation = "Variation"
})

```
<!-- #endregion client|jo.menu.updateLang -->


<!-- #region client|jo.menu.updateVolume -->
#### Example
```lua
-- Set the volume level for menu sound effects
-- Volume range is 0.0 to 1.0
jo.menu.updateVolume(0.8)

```
<!-- #endregion client|jo.menu.updateVolume -->



<!-- #region client|MenuClass:setCurrentIndex -->
#### Example
```lua
local menu = jo.menu.create(id, data)

menu:addItem({
  title = "Item 1",
})

menu:addItem({
  title = "Item 2",
})

menu:addItem({
  title = "Item 3",
})

menu:setCurrentIndex(2) -- set item 2 as active

```
<!-- #endregion client|MenuClass:setCurrentIndex -->

<!-- #region client|jo.menu.playAudio -->
#### Example
```lua
jo.menu.playAudio('coins')
```
<!-- #endregion client|jo.menu.playAudio -->

<!-- #region client|jo.menu.softHide -->
#### Example
```lua
menu:addItem({
  title = "Title",
  onClick = function(currentData)
    jo.menu.softHide(function()
      local title = jo.input.native("Enter the new title", currentData.item.title, 100)
      if title then
        currentData.item.title = title
        menu:refresh()
      end
    end)
  end
})

```
<!-- #endregion client|jo.menu.softHide -->

<!-- #region client|jo.menu.isExist -->
#### Example
```lua
local menuId = "home"
local isExist = jo.menu.isExist(menuId)
-- Expected output: `true` if the menu was created before, else `false`
```
<!-- #endregion client|jo.menu.isExist -->

<!-- #region client|jo.menu.missingMenuHandler -->
#### Example
```lua
jo.menu.missingMenuHandler('home', function()
  print('home menu is missing')
  local menu = jo.menu.create('home', {
    title = "home"
  })
  menu:addItem({title = "item"})
  menu:send()
  menu:use()
end)
```
<!-- #endregion client|jo.menu.missingMenuHandler -->
