<!-- #region client|MenuClass:addItem -->
#### Example
```lua
local menu = jo.menu.create("tailor", { title = "Tailor", subtitle = "Hats" })

-- Add an item at the end of the menu
local stetson = menu:addItem({
  title = "Stetson",
  icon = "hats",
  description = "A wide brim hat made of felt.",
  price = { money = 12.5 },
  data = { hash = `HAT_STETSON` },
  sliders = {
    { title = "Variation", values = { "Brown", "Black", "Grey" } },
  },
  onClick = function(currentData)
    print("Buy", currentData.item.data.hash)
  end,
})

-- Add an item at the first position
menu:addItem(1, { title = "Remove the hat" })

menu:send()
```
<!-- #endregion client|MenuClass:addItem -->


<!-- #region client|MenuClass:deleteItem -->
#### Example
```lua
local menu = jo.menu.get("tailor")
menu:deleteItem(2)
menu:push()
```
<!-- #endregion client|MenuClass:deleteItem -->


<!-- #region client|MenuClass:deleteValue -->
#### Example
```lua
local menu = jo.menu.get("tailor")
-- Remove the price of the 2nd item
menu:deleteValue({ "items", 2, "price" })
menu:push()
```
<!-- #endregion client|MenuClass:deleteValue -->


<!-- #region client|MenuClass:push -->
#### Example
```lua
local menu = jo.menu.get("tailor")
menu:updateValue("subtitle", "Hats (2)")
menu:updateValue({ "items", 1, "textRight" }, "Owned")
menu:deleteValue({ "items", 1, "price" })
-- Send the 3 changes to the NUI
menu:push()
```
<!-- #endregion client|MenuClass:push -->


<!-- #region client|MenuClass:refresh -->
#### Example
```lua
local menu = jo.menu.get("tailor")
menu:addItem({ title = "Top hat", icon = "hats" })
menu:sort()
-- Send the whole menu again, the cursor stays on the same item
menu:refresh()
```
<!-- #endregion client|MenuClass:refresh -->


<!-- #region client|MenuClass:removeItem -->
#### Example
```lua
local menu = jo.menu.get("tailor")
-- Deprecated: use deleteItem() then push()
menu:deleteItem(2)
menu:push()
```
<!-- #endregion client|MenuClass:removeItem -->


<!-- #region client|MenuClass:reset -->
#### Example
```lua
local menu = jo.menu.get("tailor")
menu:reset()
```
<!-- #endregion client|MenuClass:reset -->


<!-- #region client|MenuClass:send -->
#### Example
```lua
local menu = jo.menu.create("tailor", { title = "Tailor" })
menu:addItem({ title = "Stetson" })
menu:addItem({ title = "Bowler" })
-- Send the menu once all the items are added
menu:send()
```
<!-- #endregion client|MenuClass:send -->


<!-- #region client|MenuClass:setCurrentIndex -->
#### Example
```lua
local menu = jo.menu.get("tailor")
-- Move the cursor to the 3rd item
menu:setCurrentIndex(3)
```
<!-- #endregion client|MenuClass:setCurrentIndex -->


<!-- #region client|MenuClass:sort -->
#### Example
```lua
local menu = jo.menu.create("tailor", { title = "Tailor" })
menu:addItem({ title = "Remove the hat" })
menu:addItem({ title = "Stetson" })
menu:addItem({ title = "Bowler" })
menu:addItem({ title = "Flat cap" })
-- Sort the items from the 2nd one: "Remove the hat" stays first
menu:sort(2)
menu:send()
```
<!-- #endregion client|MenuClass:sort -->


<!-- #region client|MenuClass:updateItem -->
#### Example
```lua
local menu = jo.menu.get("tailor")
-- Deprecated: use updateValue() then push()
menu:updateValue({ "items", 2, "title" }, "Bowler hat")
menu:push()
```
<!-- #endregion client|MenuClass:updateItem -->


<!-- #region client|MenuClass:updateValue -->
#### Example
```lua
local menu = jo.menu.get("tailor")
-- A property of the menu
menu:updateValue("subtitle", "Hats (2)")
-- A property of an item
menu:updateValue({ "items", 2, "disabled" }, true)
-- A nested property
menu:updateValue({ "items", 1, "sliders", 1, "current" }, 3)
menu:push()
```
<!-- #endregion client|MenuClass:updateValue -->


<!-- #region client|MenuClass:use -->
#### Example
```lua
local menu = jo.menu.get("tailor")
menu:use()
jo.menu.show(true)
```
<!-- #endregion client|MenuClass:use -->


<!-- #region client|MenuItemClass:deleteValue -->
#### Example
```lua
local menu = jo.menu.create("tailor", { title = "Tailor" })
local stetson = menu:addItem({ title = "Stetson", price = { money = 12.5 } })
menu:send()

-- Later
stetson:deleteValue("price")
menu:push()
```
<!-- #endregion client|MenuItemClass:deleteValue -->


<!-- #region client|MenuItemClass:getParentMenu -->
#### Example
```lua
local menu = jo.menu.create("tailor", { title = "Tailor" })
local stetson = menu:addItem({ title = "Stetson" })

local parent = stetson:getParentMenu()
print(parent.id) -- "tailor"
```
<!-- #endregion client|MenuItemClass:getParentMenu -->


<!-- #region client|MenuItemClass:updateValue -->
#### Example
```lua
local menu = jo.menu.create("tailor", { title = "Tailor" })
local stetson = menu:addItem({ title = "Stetson", price = { money = 12.5 } })
menu:send()

-- Later, the player bought the hat
stetson:updateValue("textRight", "Owned")
stetson:updateValue("iconRight", "tick")
menu:push()
```
<!-- #endregion client|MenuItemClass:updateValue -->


<!-- #region client|jo.menu.addItem -->
#### Example
```lua
jo.menu.create("tailor", { title = "Tailor" })
jo.menu.addItem("tailor", { title = "Stetson", icon = "hats" })
jo.menu.addItem("tailor", 1, { title = "Remove the hat" })
jo.menu.send("tailor")
```
<!-- #endregion client|jo.menu.addItem -->


<!-- #region client|jo.menu.create -->
#### Example
```lua
local menu = jo.menu.create("tailor", {
  title = "Tailor",
  subtitle = "Clothes",
  type = "list",
  numberOnScreen = 12,
  onEnter = function(currentData)
    print("Enter the tailor")
  end,
  onBack = function(currentData)
    jo.menu.show(false)
  end,
})

menu:addItem({ title = "Hats", icon = "hats", child = "hats" })
menu:addItem({ title = "Coats", icon = "coats", child = "coats" })
menu:send()

menu:use()
jo.menu.show(true)
```
<!-- #endregion client|jo.menu.create -->


<!-- #region client|jo.menu.createIfNotExist -->
#### Example
```lua
local menu, created = jo.menu.createIfNotExist("tailor", { title = "Tailor" })
if created then
  menu:addItem({ title = "Stetson" })
  menu:send()
end
menu:use()
jo.menu.show(true)
```
<!-- #endregion client|jo.menu.createIfNotExist -->


<!-- #region client|jo.menu.delete -->
#### Example
```lua
jo.menu.delete("tailor")
print(jo.menu.isExist("tailor")) -- false
```
<!-- #endregion client|jo.menu.delete -->


<!-- #region client|jo.menu.displayLoader -->
#### Example
```lua
jo.menu.displayLoader()
local outfits = jo.callback.triggerServer("myResource:getOutfits")
-- build the menu with the outfits...
jo.menu.hideLoader()
```
<!-- #endregion client|jo.menu.displayLoader -->


<!-- #region client|jo.menu.doesActiveButtonChange -->
#### Example
```lua
menu:addItem({
  title = "Stetson",
  sliders = { { title = "Variation", values = { 1, 2, 3 } } },
  onChange = function(currentData)
    if jo.menu.doesActiveButtonChange() then return end
    print("The slider moved to", currentData.item.sliders[1].value)
  end,
})
```
<!-- #endregion client|jo.menu.doesActiveButtonChange -->


<!-- #region client|jo.menu.fireAllLevelsEvent -->
#### Example
```lua
-- Fire the onTick of the current menu and of its active item
jo.menu.fireAllLevelsEvent("onTick")
```
<!-- #endregion client|jo.menu.fireAllLevelsEvent -->


<!-- #region client|jo.menu.fireEvent -->
#### Example
```lua
-- Fire the onActive callback of the active item again
jo.menu.fireEvent(jo.menu.getCurrentItem(), "onActive")

-- With additional arguments
jo.menu.fireEvent(jo.menu.getCurrentMenu(), "onRefresh", "myArgument")
```
<!-- #endregion client|jo.menu.fireEvent -->


<!-- #region client|jo.menu.forceBack -->
#### Example
```lua
menu:addItem({
  title = "Validate",
  onClick = function()
    -- save the choice, then go back to the previous menu
    jo.menu.forceBack()
  end,
})
```
<!-- #endregion client|jo.menu.forceBack -->


<!-- #region client|jo.menu.get -->
#### Example
```lua
local menu = jo.menu.get("tailor")
menu:updateValue("subtitle", "Hats")
menu:push()
```
<!-- #endregion client|jo.menu.get -->


<!-- #region client|jo.menu.getCurrentData -->
#### Example
```lua
local data = jo.menu.getCurrentData()
print(data.menu, data.index, data.item.title)
```
<!-- #endregion client|jo.menu.getCurrentData -->


<!-- #region client|jo.menu.getCurrentIndex -->
#### Example
```lua
local index = jo.menu.getCurrentIndex()
print("The active item is the item", index)
```
<!-- #endregion client|jo.menu.getCurrentIndex -->


<!-- #region client|jo.menu.getCurrentItem -->
#### Example
```lua
local item = jo.menu.getCurrentItem()
print(item.title)
```
<!-- #endregion client|jo.menu.getCurrentItem -->


<!-- #region client|jo.menu.getCurrentMenu -->
#### Example
```lua
local menu = jo.menu.getCurrentMenu()
print(menu.title)
```
<!-- #endregion client|jo.menu.getCurrentMenu -->


<!-- #region client|jo.menu.getCurrentMenuId -->
#### Example
```lua
if jo.menu.getCurrentMenuId() == "tailor" then
  print("The player is in the tailor menu")
end
```
<!-- #endregion client|jo.menu.getCurrentMenuId -->


<!-- #region client|jo.menu.getPreviousData -->
#### Example
```lua
menu:addItem({
  title = "Stetson",
  onActive = function(currentData)
    local previous = jo.menu.getPreviousData()
    print("Previous item:", previous.item and previous.item.title)
  end,
})
```
<!-- #endregion client|jo.menu.getPreviousData -->


<!-- #region client|jo.menu.hideLoader -->
#### Example
```lua
jo.menu.displayLoader()
Wait(1000)
jo.menu.hideLoader()
```
<!-- #endregion client|jo.menu.hideLoader -->


<!-- #region client|jo.menu.isCurrentMenu -->
#### Example
```lua
if jo.menu.isCurrentMenu("tailor") then
  jo.menu.get("tailor"):refresh()
end
```
<!-- #endregion client|jo.menu.isCurrentMenu -->


<!-- #region client|jo.menu.isExist -->
#### Example
```lua
if not jo.menu.isExist("tailor") then
  createTailorMenu()
end
```
<!-- #endregion client|jo.menu.isExist -->


<!-- #region client|jo.menu.isOpen -->
#### Example
```lua
RegisterCommand("tailor", function()
  if jo.menu.isOpen() then return end
  jo.menu.setCurrentMenu("tailor")
  jo.menu.show(true)
end)
```
<!-- #endregion client|jo.menu.isOpen -->


<!-- #region client|jo.menu.isSoftHidden -->
#### Example
```lua
CreateThread(function()
  while jo.menu.isOpen() do
    if not jo.menu.isSoftHidden() then
      -- draw something only when the menu is visible
    end
    Wait(0)
  end
end)
```
<!-- #endregion client|jo.menu.isSoftHidden -->


<!-- #region client|jo.menu.missingMenuHandler -->
#### Example
```lua
-- The "hats" menu is created the first time it's opened
jo.menu.missingMenuHandler("hats", function()
  local hats = jo.menu.create("hats", { title = "Tailor", subtitle = "Hats" })
  hats:addItem({ title = "Stetson" })
  hats:send()
  hats:use(true)
end)

local menu = jo.menu.create("tailor", { title = "Tailor" })
menu:addItem({ title = "Hats", child = "hats" })
menu:send()
```
<!-- #endregion client|jo.menu.missingMenuHandler -->


<!-- #region client|jo.menu.onChange -->
#### Example
```lua
jo.menu.onChange(function(data)
  print(("Menu %s, item %d: %s"):format(data.menu, data.index, data.item.title))
end)
```
<!-- #endregion client|jo.menu.onChange -->


<!-- #region client|jo.menu.playAudio -->
#### Example
```lua
menu:addItem({
  title = "Buy",
  onClick = function()
    jo.menu.playAudio("coins")
  end,
})
```
<!-- #endregion client|jo.menu.playAudio -->


<!-- #region client|jo.menu.refresh -->
#### Example
```lua
jo.menu.addItem("tailor", { title = "Top hat" })
jo.menu.refresh("tailor")
```
<!-- #endregion client|jo.menu.refresh -->


<!-- #region client|jo.menu.reset -->
#### Example
```lua
jo.menu.reset("tailor")
```
<!-- #endregion client|jo.menu.reset -->


<!-- #region client|jo.menu.runRefreshEvents -->
#### Example
```lua
-- Fire onExit and onActive of the active item again
jo.menu.runRefreshEvents(false, true)
```
<!-- #endregion client|jo.menu.runRefreshEvents -->


<!-- #region client|jo.menu.send -->
#### Example
```lua
jo.menu.create("tailor", { title = "Tailor" })
jo.menu.addItem("tailor", { title = "Stetson" })
jo.menu.send("tailor")
```
<!-- #endregion client|jo.menu.send -->


<!-- #region client|jo.menu.set -->
#### Example
```lua
local menu = jo.menu.get("tailor")
jo.menu.set("tailor_copy", menu)
```
<!-- #endregion client|jo.menu.set -->


<!-- #region client|jo.menu.setCurrentMenu -->
#### Example
```lua
-- Open the menu, with the cursor on the first item
jo.menu.setCurrentMenu("tailor")
jo.menu.show(true)

-- Open a menu without history: Backspace won't go back to "tailor"
jo.menu.setCurrentMenu("hats", false)

-- Go back to a menu without moving its cursor
jo.menu.setCurrentMenu("tailor", true, false)
```
<!-- #endregion client|jo.menu.setCurrentMenu -->


<!-- #region client|jo.menu.show -->
#### Example
```lua
-- Show the menu, the player can move
jo.menu.show(true)

-- Show the menu and block the game controls
jo.menu.show(true, false)

-- Hide the menu
jo.menu.show(false)
```
<!-- #endregion client|jo.menu.show -->


<!-- #region client|jo.menu.softHide -->
#### Example
```lua
menu:addItem({
  title = "Try on",
  onClick = function()
    -- Hide the menu 3 seconds, keep its background
    jo.menu.softHide(function()
      Wait(3000)
    end, true, true)
  end,
})
```
<!-- #endregion client|jo.menu.softHide -->


<!-- #region client|jo.menu.sort -->
#### Example
```lua
jo.menu.sort("tailor")
jo.menu.refresh("tailor")
```
<!-- #endregion client|jo.menu.sort -->


<!-- #region client|jo.menu.updateItem -->
#### Example
```lua
-- Deprecated: use updateValue() then push()
local menu = jo.menu.get("tailor")
menu:updateValue({ "items", 2, "title" }, "Bowler hat")
menu:push()
```
<!-- #endregion client|jo.menu.updateItem -->


<!-- #region client|jo.menu.updateLang -->
#### Example
```lua
jo.menu.updateLang({
  of = "%1 sur %2",
  price = "Prix",
  devise = "€",
  free = "Gratuit",
  number = "Numéro %1",
})
```
<!-- #endregion client|jo.menu.updateLang -->


<!-- #region client|jo.menu.updateVolume -->
#### Example
```lua
jo.menu.updateVolume(0.2)
```
<!-- #endregion client|jo.menu.updateVolume -->


