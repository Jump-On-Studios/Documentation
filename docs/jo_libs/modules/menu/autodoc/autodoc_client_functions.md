
## Constructor

### jo.menu.create()

<!-- @include: ./slots/headers.md#client|jo.menu.create -->

Create a new menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.create -->

#### Syntax

```lua
jo.menu.create(id, data)
```

#### Parameters

`id` : _string_
> Unique ID of the menu
>

`data` : _table_ <BadgeOptional />

> Menu configuration data
>

> `data.title` : _string_ - The big title of the menu  ![The menu title](https://docs.jumpon-studios.com/images/previews/menu/bigTitle.jpg)
> 
> `data.subtitle` : _string_ - The subtitle of the menu  ![The subtitle](https://docs.jumpon-studios.com/images/previews/menu/subtitle.jpg)
> 
> `data.numberOnScreen` : _integer_ - Maximum number of items visibles at the same time <br> default : `8` <BadgeOptional />
> 
> `data.distanceToClose` : _float_ - Distance at which the menu will self close if the player is moving away <br> default: `false`
> 
> `data.onEnter` : _function_ - Fired when the menu is opened <BadgeOptional />
> 
> `data.onBack` : _function_ - Fired when the backspace/Escape is pressed <BadgeOptional />
> 
> `data.onExit` : _function_ - Fired when the menu is exited <BadgeOptional />
> 
> `data.onTick` : _function_ - Fired every tick <BadgeOptional />
> 

#### Return Value

Type : _[MenuClass](#menuclass-methods)_

> The newly created menu object

<!-- @include: ./slots/examples.md#client|jo.menu.create -->

<!-- @include: ./slots/footers.md#client|jo.menu.create -->


## MenuClass Methods

### MenuClass:addItem()

<!-- @include: ./slots/headers.md#client|MenuClass:addItem -->

Add an item to a menu <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:addItem -->

#### Syntax

```lua
MenuClass:addItem(p, item)
```

#### Parameters

`p` : _integer|table_
> Position index or item table if used as single parameter
>

`item` : _table_ <BadgeOptional />

> The item to add - if not provided, p is used as the item
>

> `item.title` : _string_ - The item label
> 
> `item.child` : _string_ - The menu to open when Enter is pressed <br> default: false <BadgeOptional />
> 
> `item.visible` : _boolean_ - If the item is visible in the menu <br> default: true <BadgeOptional />
> 
> `item.data` : _table_ - Variable to store custom data in the item <BadgeOptional />
> 
> `item.description` : _string_ - Description text for the item <BadgeOptional />
> 
> `item.prefix` : _string_ - The little icon before the title from `nui\menu\assets\images\icons` folder  ![prefix Icon](/images/previews/menu/prefixIcon.jpg) <BadgeOptional />
> 
> `item.icon` : _string_ - The left icon filename from `nui\menu\assets\images\icons` folder  ![Icon](/images/previews/menu/leftIcon.jpg) <BadgeOptional />
> 
> `item.iconRight` : _string_ - The right icon filename from `nui\menu\assets\images\icons` folder  ![icon right](/images/previews/menu/iconRight.jpg) <BadgeOptional />
> 
> `item.iconClass` : _string_ - CSS class for the icon <BadgeOptional />
> 
> `item.price` : _table_ - The price of the item. Use 0 to display "free" <br> default: false  ![preview price](/images/previews/menu/price.jpg) <BadgeOptional />
> 
> > `item.price.money` : _number_ - The price in $ <BadgeOptional />
> > 
> > `item.price.gold` : _number_ - The price in gold <BadgeOptional />
> > 
> `item.priceTitle` : _string_ - Replace the "Price" label <BadgeOptional />
> 
> `item.priceRight` : _boolean_ - Display the price at the right of the item title  ![price to the right](/images/previews/menu/priceRight.jpg) <BadgeOptional />
> 
> `item.statistics` : _table_ - List of [statistics](#statistics) to display for the item <BadgeOptional />
> 
> `item.disabled` : _boolean_ - If the item is disabled (grey) in the menu  ![disable item](/images/previews/menu/disableItem.jpg) <BadgeOptional />
> 
> `item.textRight` : _string_ - The label displayed at the right of the item  ![Right text](/images/previews/menu/rightText.jpg) <BadgeOptional />
> 
> `item.previewPalette` : _boolean_ - Display a color square at the right of the item <br> default: true  ![preview palette](/images/previews/menu/previewPalette.jpg) <BadgeOptional />
> 
> `item.sliders` : _table_ - List of [sliders](#sliders) for the item <BadgeOptional />
> 
> `item.onActive` : _function_ - Fired when the item is selected <BadgeOptional />
> 
> `item.onClick` : _function_ - Fired when Enter is pressed on the item <BadgeOptional />
> 
> `item.onChange` : _function_ - Fired when a slider value changes <BadgeOptional />
> 
> `item.onExit` : _function_ - Fired when the item is exited <BadgeOptional />
> 
> `item.onTick` : _function_ - Fired every tick <BadgeOptional />
> 

#### Return Value

Type : _table_

> The added item

<!-- @include: ./slots/examples.md#client|MenuClass:addItem -->

<!-- @include: ./slots/footers.md#client|MenuClass:addItem -->

---

### MenuClass:refresh()

<!-- @include: ./slots/headers.md#client|MenuClass:refresh -->

Refresh the menu display without changing the current state <br>
Used when menu items have been modified <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:refresh -->

#### Syntax

```lua
MenuClass:refresh()
```

<!-- @include: ./slots/examples.md#client|MenuClass:refresh -->

<!-- @include: ./slots/footers.md#client|MenuClass:refresh -->

---

### MenuClass:reset()

<!-- @include: ./slots/headers.md#client|MenuClass:reset -->

Reset the menu to its initial state <br>
Moves the cursor back to the first item <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:reset -->

#### Syntax

```lua
MenuClass:reset()
```

<!-- @include: ./slots/examples.md#client|MenuClass:reset -->

<!-- @include: ./slots/footers.md#client|MenuClass:reset -->

---

### MenuClass:send()

<!-- @include: ./slots/headers.md#client|MenuClass:send -->

Send the menu data to the NUI layer <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:send -->

#### Syntax

```lua
MenuClass:send()
```

<!-- @include: ./slots/examples.md#client|MenuClass:send -->

<!-- @include: ./slots/footers.md#client|MenuClass:send -->

---

### MenuClass:setCurrentIndex()

<!-- @include: ./slots/headers.md#client|MenuClass:setCurrentIndex -->

Change the current active item index <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:setCurrentIndex -->

#### Syntax

```lua
MenuClass:setCurrentIndex(index)
```

#### Parameters

`index` : _integer_
> The item index to switch to
>

<!-- @include: ./slots/examples.md#client|MenuClass:setCurrentIndex -->

<!-- @include: ./slots/footers.md#client|MenuClass:setCurrentIndex -->

---

### MenuClass:sort()

<!-- @include: ./slots/headers.md#client|MenuClass:sort -->

Sort menu items alphabetically by title <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:sort -->

#### Syntax

```lua
MenuClass:sort(first, last)
```

#### Parameters

`first` : _integer_ <BadgeOptional />
> Position of the first element to sort <br> default: `1`
>

`last` : _integer_ <BadgeOptional />
> Position of the last element to sort <br> default: `#self.items`
>

<!-- @include: ./slots/examples.md#client|MenuClass:sort -->

<!-- @include: ./slots/footers.md#client|MenuClass:sort -->

---

### MenuClass:updateItem()

<!-- @include: ./slots/headers.md#client|MenuClass:updateItem -->

Update a specific property of a menu item <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:updateItem -->

#### Syntax

```lua
MenuClass:updateItem(index, key, value)
```

#### Parameters

`index` : _integer_
> The index of the item to update
>

`key` : _string_
> The property name to update
>

`value` : _any_
> The new value for the property
>

<!-- @include: ./slots/examples.md#client|MenuClass:updateItem -->

<!-- @include: ./slots/footers.md#client|MenuClass:updateItem -->

---

### MenuClass:use()

<!-- @include: ./slots/headers.md#client|MenuClass:use -->

Set this menu as the current active menu <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:use -->

#### Syntax

```lua
MenuClass:use(keepHistoric, resetMenu)
```

#### Parameters

`keepHistoric` : _boolean_ <BadgeOptional />
> Whether to keep navigation history <br> default: `true`
>

`resetMenu` : _boolean_ <BadgeOptional />
> Whether to reset the menu state <br> default: `true`
>

<!-- @include: ./slots/examples.md#client|MenuClass:use -->

<!-- @include: ./slots/footers.md#client|MenuClass:use -->


## JO Functions

### jo.menu.addItem()

<!-- @include: ./slots/headers.md#client|jo.menu.addItem -->

Add an item to a menu by its ID <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.addItem -->

#### Syntax

```lua
jo.menu.addItem(id, p, item)
```

#### Parameters

`id` : _string_
> The menu ID
>

`p` : _integer|table_
> Position index or item table if used as single parameter
>

`item` : _table_ <BadgeOptional />

> The item to add - if not provided, p is used as the item
>

> `item.title` : _string_ - The item label
> 
> `item.child` : _string_ - The menu to open when Enter is pressed <br> default: false <BadgeOptional />
> 
> `item.visible` : _boolean_ - If the item is visible in the menu <br> default: true <BadgeOptional />
> 
> `item.data` : _table_ - Variable to store custom data in the item <BadgeOptional />
> 
> `item.description` : _string_ - Description text for the item <BadgeOptional />
> 
> `item.prefix` : _string_ - The little icon before the title from `nui\menu\assets\images\icons` folder  ![prefix Icon](/images/previews/menu/prefixIcon.jpg) <BadgeOptional />
> 
> `item.icon` : _string_ - The left icon filename from `nui\menu\assets\images\icons` folder  ![Icon](/images/previews/menu/leftIcon.jpg) <BadgeOptional />
> 
> `item.iconRight` : _string_ - The right icon filename from `nui\menu\assets\images\icons` folder  ![icon right](/images/previews/menu/iconRight.jpg) <BadgeOptional />
> 
> `item.iconClass` : _string_ - CSS class for the icon <BadgeOptional />
> 
> `item.price` : _table_ - The price of the item. Use 0 to display "free" <br> default: false  ![preview price](/images/previews/menu/price.jpg) <BadgeOptional />
> 
> > `item.price.money` : _number_ - The price in $ <BadgeOptional />
> > 
> > `item.price.gold` : _number_ - The price in gold <BadgeOptional />
> > 
> `item.priceTitle` : _string_ - Replace the "Price" label <BadgeOptional />
> 
> `item.priceRight` : _boolean_ - Display the price at the right of the item title  ![price to the right](/images/previews/menu/priceRight.jpg) <BadgeOptional />
> 
> `item.statistics` : _table_ - List of [statistics](#statistics) to display for the item <BadgeOptional />
> 
> `item.disabled` : _boolean_ - If the item is disabled (grey) in the menu  ![disable item](/images/previews/menu/disableItem.jpg) <BadgeOptional />
> 
> `item.textRight` : _string_ - The label displayed at the right of the item  ![Right text](/images/previews/menu/rightText.jpg) <BadgeOptional />
> 
> `item.previewPalette` : _boolean_ - Display a color square at the right of the item <br> default: true  ![preview palette](/images/previews/menu/previewPalette.jpg) <BadgeOptional />
> 
> `item.sliders` : _table_ - List of [sliders](#sliders) for the item <BadgeOptional />
> 
> `item.onActive` : _function_ - Fired when the item is selected <BadgeOptional />
> 
> `item.onClick` : _function_ - Fired when Enter is pressed on the item <BadgeOptional />
> 
> `item.onChange` : _function_ - Fired when a slider value changes <BadgeOptional />
> 
> `item.onExit` : _function_ - Fired when the item is exited <BadgeOptional />
> 

<!-- @include: ./slots/examples.md#client|jo.menu.addItem -->

<!-- @include: ./slots/footers.md#client|jo.menu.addItem -->

---

### jo.menu.delete()

<!-- @include: ./slots/headers.md#client|jo.menu.delete -->

Delete a menu from memory <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.delete -->

#### Syntax

```lua
jo.menu.delete(id)
```

#### Parameters

`id` : _string_
> The menu ID to delete
>

<!-- @include: ./slots/examples.md#client|jo.menu.delete -->

<!-- @include: ./slots/footers.md#client|jo.menu.delete -->

---

### jo.menu.doesActiveButtonChange()

<!-- @include: ./slots/headers.md#client|jo.menu.doesActiveButtonChange -->

Check if the active button has changed since last update <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.doesActiveButtonChange -->

#### Syntax

```lua
jo.menu.doesActiveButtonChange()
```

#### Return Value

Type : _boolean_

> Returns `true` if the active button has changed

<!-- @include: ./slots/examples.md#client|jo.menu.doesActiveButtonChange -->

<!-- @include: ./slots/footers.md#client|jo.menu.doesActiveButtonChange -->

---

### jo.menu.fireAllLevelsEvent()

<!-- @include: ./slots/headers.md#client|jo.menu.fireAllLevelsEvent -->

Fire an event across all menu levels (current menu and current item) <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.fireAllLevelsEvent -->

#### Syntax

```lua
jo.menu.fireAllLevelsEvent(eventName, ...)
```

#### Parameters

`eventName` : _string_
> The name of the event to fire
>

`...` : _any_ <BadgeOptional />
> Additional arguments to pass to the event handlers
>

<!-- @include: ./slots/examples.md#client|jo.menu.fireAllLevelsEvent -->

<!-- @include: ./slots/footers.md#client|jo.menu.fireAllLevelsEvent -->

---

### jo.menu.fireEvent()

<!-- @include: ./slots/headers.md#client|jo.menu.fireEvent -->

Fire an event for a specific menu item <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.fireEvent -->

#### Syntax

```lua
jo.menu.fireEvent(item, eventName, ...)
```

#### Parameters

`item` : _table_

> The item to trigger the event on
>


`eventName` : _string_
> The name of the event to fire
>

`...` : _any_ <BadgeOptional />
> Additional arguments to pass to the event handler
>

<!-- @include: ./slots/examples.md#client|jo.menu.fireEvent -->

<!-- @include: ./slots/footers.md#client|jo.menu.fireEvent -->

---

### jo.menu.forceBack()

<!-- @include: ./slots/headers.md#client|jo.menu.forceBack -->

Force the menu to go back to the previous menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.forceBack -->

#### Syntax

```lua
jo.menu.forceBack()
```

<!-- @include: ./slots/examples.md#client|jo.menu.forceBack -->

<!-- @include: ./slots/footers.md#client|jo.menu.forceBack -->

---

### jo.menu.get()

<!-- @include: ./slots/headers.md#client|jo.menu.get -->

Get a menu instance by its ID <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.get -->

#### Syntax

```lua
jo.menu.get(id)
```

#### Parameters

`id` : _string_
> The menu ID
>

#### Return Value

Type : _[MenuClass](#menuclass-methods)_

> The menu object

<!-- @include: ./slots/examples.md#client|jo.menu.get -->

<!-- @include: ./slots/footers.md#client|jo.menu.get -->

---

### jo.menu.getCurrentData()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentData -->

Get data about the current menu state <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentData -->

#### Syntax

```lua
jo.menu.getCurrentData()
```

#### Return Value

Type : _table_

> Current menu data including menu ID and selected item

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentData -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentData -->

---

### jo.menu.getCurrentItem()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentItem -->

Get the currently selected menu item <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentItem -->

#### Syntax

```lua
jo.menu.getCurrentItem()
```

#### Return Value

Type : _table_

> The currently selected item

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentItem -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentItem -->

---

### jo.menu.getCurrentMenu()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentMenu -->

Get the currently active menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentMenu -->

#### Syntax

```lua
jo.menu.getCurrentMenu()
```

#### Return Value

Type : _[MenuClass](#menuclass-methods)_

> The currently active menu

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentMenu -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentMenu -->

---

### jo.menu.getPreviousData()

<!-- @include: ./slots/headers.md#client|jo.menu.getPreviousData -->

Get data about the previous menu state <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getPreviousData -->

#### Syntax

```lua
jo.menu.getPreviousData()
```

#### Return Value

Type : _table_

> Previous menu data including menu ID and selected item

<!-- @include: ./slots/examples.md#client|jo.menu.getPreviousData -->

<!-- @include: ./slots/footers.md#client|jo.menu.getPreviousData -->

---

### jo.menu.isExist()

<!-- @include: ./slots/headers.md#client|jo.menu.isExist -->

Check if a menu exist <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.isExist -->

#### Syntax

```lua
jo.menu.isExist(id)
```

#### Parameters

`id` : _string_
> the menu ID
>

#### Return Value

Type : _boolean_

> Returns `true` if the menu exists

<!-- @include: ./slots/examples.md#client|jo.menu.isExist -->

<!-- @include: ./slots/footers.md#client|jo.menu.isExist -->

---

### jo.menu.isOpen()

<!-- @include: ./slots/headers.md#client|jo.menu.isOpen -->

Check if any menu is currently open <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.isOpen -->

#### Syntax

```lua
jo.menu.isOpen()
```

#### Return Value

Type : _boolean_

> Returns `true` if a menu is open

<!-- @include: ./slots/examples.md#client|jo.menu.isOpen -->

<!-- @include: ./slots/footers.md#client|jo.menu.isOpen -->

---

### jo.menu.missingMenuHandler()

<!-- @include: ./slots/headers.md#client|jo.menu.missingMenuHandler -->

 <br>
 <br>
Register a handler for missing menu error <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.missingMenuHandler -->

#### Syntax

```lua
jo.menu.missingMenuHandler(id, callback)
```

#### Parameters

`id` : _string_
> The menu ID
>

`callback` : _function_
> The handler function
>

<!-- @include: ./slots/examples.md#client|jo.menu.missingMenuHandler -->

<!-- @include: ./slots/footers.md#client|jo.menu.missingMenuHandler -->

---

### jo.menu.onChange()

<!-- @include: ./slots/headers.md#client|jo.menu.onChange -->

Register a callback function for menu change events <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.onChange -->

#### Syntax

```lua
jo.menu.onChange(cb)
```

#### Parameters

`cb` : _function_
> The callback function to register
>

<!-- @include: ./slots/examples.md#client|jo.menu.onChange -->

<!-- @include: ./slots/footers.md#client|jo.menu.onChange -->

---

### jo.menu.playAudio()

<!-- @include: ./slots/headers.md#client|jo.menu.playAudio -->

A function to play a NUI sound <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.playAudio -->

#### Syntax

```lua
jo.menu.playAudio(sound)
```

#### Parameters

`sound` : _string_

<!-- @include: ./slots/examples.md#client|jo.menu.playAudio -->

<!-- @include: ./slots/footers.md#client|jo.menu.playAudio -->

---

### jo.menu.refresh()

<!-- @include: ./slots/headers.md#client|jo.menu.refresh -->

Refresh a menu by its ID <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.refresh -->

#### Syntax

```lua
jo.menu.refresh(id)
```

#### Parameters

`id` : _string_
> The menu ID to refresh
>

<!-- @include: ./slots/examples.md#client|jo.menu.refresh -->

<!-- @include: ./slots/footers.md#client|jo.menu.refresh -->

---

### jo.menu.reset()

<!-- @include: ./slots/headers.md#client|jo.menu.reset -->

Reset a menu by its ID <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.reset -->

#### Syntax

```lua
jo.menu.reset(id)
```

#### Parameters

`id` : _string_
> The menu ID to reset
>

<!-- @include: ./slots/examples.md#client|jo.menu.reset -->

<!-- @include: ./slots/footers.md#client|jo.menu.reset -->

---

### jo.menu.send()

<!-- @include: ./slots/headers.md#client|jo.menu.send -->

Send a menu to the NUI layer by its ID <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.send -->

#### Syntax

```lua
jo.menu.send(id)
```

#### Parameters

`id` : _string_
> The menu ID
>

<!-- @include: ./slots/examples.md#client|jo.menu.send -->

<!-- @include: ./slots/footers.md#client|jo.menu.send -->

---

### jo.menu.set()

<!-- @include: ./slots/headers.md#client|jo.menu.set -->

Set or replace a menu instance <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.set -->

#### Syntax

```lua
jo.menu.set(id, menu)
```

#### Parameters

`id` : _string_
> The menu ID
>

`menu` : _[MenuClass](#menuclass-methods)_
> The menu object to set
>

<!-- @include: ./slots/examples.md#client|jo.menu.set -->

<!-- @include: ./slots/footers.md#client|jo.menu.set -->

---

### jo.menu.setCurrentMenu()

<!-- @include: ./slots/headers.md#client|jo.menu.setCurrentMenu -->

Set a menu as the current active menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.setCurrentMenu -->

#### Syntax

```lua
jo.menu.setCurrentMenu(id, keepHistoric, resetMenu)
```

#### Parameters

`id` : _string_
> ID of the menu to activate
>

`keepHistoric` : _boolean_ <BadgeOptional />
> Keep the menu navigation history <br> default: `true`
>

`resetMenu` : _boolean_ <BadgeOptional />
> Clear and redraw the menu before displaying <br> default: `true`
>

<!-- @include: ./slots/examples.md#client|jo.menu.setCurrentMenu -->

<!-- @include: ./slots/footers.md#client|jo.menu.setCurrentMenu -->

---

### jo.menu.show()

<!-- @include: ./slots/headers.md#client|jo.menu.show -->

Show or hide a menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.show -->

#### Syntax

```lua
jo.menu.show(show, keepInput, hideRadar, animation, hideCursor)
```

#### Parameters

`show` : _boolean_
> Whether to show or hide the menu
>

`keepInput` : _boolean_ <BadgeOptional />
> Whether to keep game input controls active <br> default: `true`
>

`hideRadar` : _boolean_ <BadgeOptional />
> Whether to hide the radar when menu is shown <br> default: `true`
>

`animation` : _boolean_ <BadgeOptional />
> Whether to use animation when showing/hiding the menu <br> default: `true`
>

`hideCursor` : _boolean_ <BadgeOptional />
> Whether to hide the cursor <br> default: `false`
>

<!-- @include: ./slots/examples.md#client|jo.menu.show -->

<!-- @include: ./slots/footers.md#client|jo.menu.show -->

---

### jo.menu.softHide()

<!-- @include: ./slots/headers.md#client|jo.menu.softHide -->

A function to hide temporary the menu and do action <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.softHide -->

#### Syntax

```lua
jo.menu.softHide(cb, animation)
```

#### Parameters

`cb` : _function_
> Action executed before show again the menu
>

`animation` : _boolean_ <BadgeOptional />
> Whether to use animation when showing/hiding the menu <br> default: `true`
>

<!-- @include: ./slots/examples.md#client|jo.menu.softHide -->

<!-- @include: ./slots/footers.md#client|jo.menu.softHide -->

---

### jo.menu.sort()

<!-- @include: ./slots/headers.md#client|jo.menu.sort -->

Sort menu items alphabetically by title using menu ID <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.sort -->

#### Syntax

```lua
jo.menu.sort(id, first, last)
```

#### Parameters

`id` : _string_
> The menu ID
>

`first` : _integer_ <BadgeOptional />
> Position of the first element to sort <br> default: `1`
>

`last` : _integer_ <BadgeOptional />
> Position of the last element to sort <br> default: `#self.items`
>

<!-- @include: ./slots/examples.md#client|jo.menu.sort -->

<!-- @include: ./slots/footers.md#client|jo.menu.sort -->

---

### jo.menu.updateItem()

<!-- @include: ./slots/headers.md#client|jo.menu.updateItem -->

Update a specific property of a menu item by menu ID <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.updateItem -->

#### Syntax

```lua
jo.menu.updateItem(id, index, key, value)
```

#### Parameters

`id` : _string_
> The menu ID
>

`index` : _integer_
> The index of the item to update
>

`key` : _string_
> The property name to update
>

`value` : _any_
> The new value for the property
>

<!-- @include: ./slots/examples.md#client|jo.menu.updateItem -->

<!-- @include: ./slots/footers.md#client|jo.menu.updateItem -->

---

### jo.menu.updateLang()

<!-- @include: ./slots/headers.md#client|jo.menu.updateLang -->

Update menu language text <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.updateLang -->

#### Syntax

```lua
jo.menu.updateLang(lang)
```

#### Parameters

`lang` : _table_

> List of translated strings
>

> `lang.of` : _string_ - The bottom right text displaying current item number <br> default : `"%1 of %2"` <BadgeOptional />
> 
> `lang.selection` : _string_ - The "Selection" text <br> default : `"Selection"` <BadgeOptional />
> 
> `lang.devise` : _string_ - The devise text <br> default : `"$"` <BadgeOptional />
> 
> `lang.number` : _string_ - The number text <br> default : `"Number %1"` <BadgeOptional />
> 
> `lang.free` : _string_ - The "Free" text <br> default : `"Free"` <BadgeOptional />
> 
> `lang.variation` : _string_ - The variatio, text <br> default : `"Variation"` <BadgeOptional />
> 

<!-- @include: ./slots/examples.md#client|jo.menu.updateLang -->

<!-- @include: ./slots/footers.md#client|jo.menu.updateLang -->

---

### jo.menu.updateVolume()

<!-- @include: ./slots/headers.md#client|jo.menu.updateVolume -->

Set the volume level for menu sound effects <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.updateVolume -->

#### Syntax

```lua
jo.menu.updateVolume(volume)
```

#### Parameters

`volume` : _number_
> Volume of sound effects 0.0 to 1.0
>

<!-- @include: ./slots/examples.md#client|jo.menu.updateVolume -->

<!-- @include: ./slots/footers.md#client|jo.menu.updateVolume -->

