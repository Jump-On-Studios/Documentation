<!-- #region group_1 -->
## Constructor

### <Badge type="client" text="Client" /> jo.menu.create()

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
> `data.numberOnScreen` : _integer_ - Maximum number of [item](#item-methods)s visibles at the same time <br> default : `8` <BadgeOptional />
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

<!-- #endregion group_1 -->

<!-- #region group_2 -->
## MenuClass Methods

### <Badge type="client" text="Client" /> MenuClass:addItem()

<!-- @include: ./slots/headers.md#client|MenuClass:addItem -->

Add an [item](#item-methods) to a menu <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:addItem -->

#### Syntax

```lua
MenuClass:addItem(index, item)
```

#### Parameters

`index` : _integer|table_
> Position index or [item](#item-methods) table if used as single parameter
>

`[item](#item-methods)` : _table_ <BadgeOptional />

> The [item](#item-methods) to add - if not provided, p is used as the [item](#item-methods)
>

> `[item](#item-methods).title` : _string_ - The [item](#item-methods) label
> 
> `[item](#item-methods).child` : _string_ - The menu to open when Enter is pressed <br> default: false <BadgeOptional />
> 
> `[item](#item-methods).visible` : _boolean_ - If the [item](#item-methods) is visible in the menu <br> default: true <BadgeOptional />
> 
> `[item](#item-methods).data` : _table_ - Variable to store custom data in the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).description` : _string_ - Description text for the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).prefix` : _string_ - The little icon before the title from `nui\menu\assets\images\icons` folder  ![prefix Icon](/images/previews/menu/prefixIcon.jpg) <BadgeOptional />
> 
> `[item](#item-methods).icon` : _string_ - The left icon filename from `nui\menu\assets\images\icons` folder  ![Icon](/images/previews/menu/leftIcon.jpg) <BadgeOptional />
> 
> `[item](#item-methods).iconRight` : _string_ - The right icon filename from `nui\menu\assets\images\icons` folder  ![icon right](/images/previews/menu/iconRight.jpg) <BadgeOptional />
> 
> `[item](#item-methods).iconClass` : _string_ - CSS class for the icon <BadgeOptional />
> 
> `[item](#item-methods).price` : _table_ - The price of the [item](#item-methods). Use 0 to display "free" <br> default: false  ![preview price](/images/previews/menu/price.jpg) <BadgeOptional />
> 
> > `[item](#item-methods).price.money` : _number_ - The price in $ <BadgeOptional />
> > 
> > `[item](#item-methods).price.gold` : _number_ - The price in gold <BadgeOptional />
> > 
> `[item](#item-methods).priceTitle` : _string_ - Replace the "Price" label <BadgeOptional />
> 
> `[item](#item-methods).priceRight` : _boolean_ - Display the price at the right of the [item](#item-methods) title  ![price to the right](/images/previews/menu/priceRight.jpg) <BadgeOptional />
> 
> `[item](#item-methods).statistics` : _table_ - List of [statistics](#statistics) to display for the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).disabled` : _boolean_ - If the [item](#item-methods) is disabled (grey) in the menu  ![disable item](/images/previews/menu/disableItem.jpg) <BadgeOptional />
> 
> `[item](#item-methods).textRight` : _string_ - The label displayed at the right of the [item](#item-methods)  ![Right text](/images/previews/menu/rightText.jpg) <BadgeOptional />
> 
> `[item](#item-methods).previewPalette` : _boolean_ - Display a color square at the right of the [item](#item-methods) <br> default: true  ![preview palette](/images/previews/menu/previewPalette.jpg) <BadgeOptional />
> 
> `[item](#item-methods).sliders` : _table_ - List of [sliders](#sliders) for the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).onActive` : _function_ - Fired when the [item](#item-methods) is selected <BadgeOptional />
> 
> `[item](#item-methods).onClick` : _function_ - Fired when Enter is pressed on the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).onChange` : _function_ - Fired when a slider value changes <BadgeOptional />
> 
> `[item](#item-methods).onExit` : _function_ - Fired when the [item](#item-methods) is exited <BadgeOptional />
> 
> `[item](#item-methods).onTick` : _function_ - Fired every tick <BadgeOptional />
> 

#### Return Value

Type : _[MenuItem](#menu[item](#item-methods)-methods)Class_

> The added [item](#item-methods)

<!-- @include: ./slots/examples.md#client|MenuClass:addItem -->

<!-- @include: ./slots/footers.md#client|MenuClass:addItem -->

---

### <Badge type="client" text="Client" /> MenuClass:deleteItem()

<!-- @include: ./slots/headers.md#client|MenuClass:deleteItem -->

<!-- @include: ./slots/descriptions.md#client|MenuClass:deleteItem -->

#### Syntax

```lua
MenuClass:deleteItem(index)
```

<!-- @include: ./slots/examples.md#client|MenuClass:deleteItem -->

<!-- @include: ./slots/footers.md#client|MenuClass:deleteItem -->

---

### <Badge type="client" text="Client" /> MenuClass:deleteValue()

<!-- @include: ./slots/headers.md#client|MenuClass:deleteValue -->

Delete a specific property of a menu. Requires MenuClass:push() to be called to apply the changes <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:deleteValue -->

#### Syntax

```lua
MenuClass:deleteValue(keys)
```

#### Parameters

`keys` : _string|table_
> The list of property name to access to the value
>

<!-- @include: ./slots/examples.md#client|MenuClass:deleteValue -->

<!-- @include: ./slots/footers.md#client|MenuClass:deleteValue -->

---

### <Badge type="client" text="Client" /> MenuClass:push()

<!-- @include: ./slots/headers.md#client|MenuClass:push -->

Push the updated values to the NUI layer <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:push -->

#### Syntax

```lua
MenuClass:push()
```

<!-- @include: ./slots/examples.md#client|MenuClass:push -->

<!-- @include: ./slots/footers.md#client|MenuClass:push -->

---

### <Badge type="client" text="Client" /> MenuClass:refresh()

<!-- @include: ./slots/headers.md#client|MenuClass:refresh -->

Refresh all the menu without changing the current state <br>
Used when you want rebuild the menu <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:refresh -->

#### Syntax

```lua
MenuClass:refresh()
```

<!-- @include: ./slots/examples.md#client|MenuClass:refresh -->

<!-- @include: ./slots/footers.md#client|MenuClass:refresh -->

---

### <Badge type="client" text="Client" /> MenuClass:removeItem()

<!-- @include: ./slots/headers.md#client|MenuClass:removeItem -->

Remove an [item](#item-methods) from a menu by its index. Requires MenuClass:push() to be called to apply the changes <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:removeItem -->

#### Syntax

```lua
MenuClass:removeItem(index)
```

#### Parameters

`index` : _integer_
> The index of the [item](#item-methods) to remove
>

<!-- @include: ./slots/examples.md#client|MenuClass:removeItem -->

<!-- @include: ./slots/footers.md#client|MenuClass:removeItem -->

---

### <Badge type="client" text="Client" /> MenuClass:reset()

<!-- @include: ./slots/headers.md#client|MenuClass:reset -->

Reset the menu to its initial state <br>
Moves the cursor back to the first [item](#item-methods) <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:reset -->

#### Syntax

```lua
MenuClass:reset()
```

<!-- @include: ./slots/examples.md#client|MenuClass:reset -->

<!-- @include: ./slots/footers.md#client|MenuClass:reset -->

---

### <Badge type="client" text="Client" /> MenuClass:send()

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

### <Badge type="client" text="Client" /> MenuClass:setCurrentIndex()

<!-- @include: ./slots/headers.md#client|MenuClass:setCurrentIndex -->

Change the current active [item](#item-methods) index <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:setCurrentIndex -->

#### Syntax

```lua
MenuClass:setCurrentIndex(index)
```

#### Parameters

`index` : _integer_
> The [item](#item-methods) index to switch to
>

<!-- @include: ./slots/examples.md#client|MenuClass:setCurrentIndex -->

<!-- @include: ./slots/footers.md#client|MenuClass:setCurrentIndex -->

---

### <Badge type="client" text="Client" /> MenuClass:sort()

<!-- @include: ./slots/headers.md#client|MenuClass:sort -->

Sort menu [item](#item-methods)s alphabetically by title <br>

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
> Position of the last element to sort <br> default: `#self.[item](#item-methods)s`
>

<!-- @include: ./slots/examples.md#client|MenuClass:sort -->

<!-- @include: ./slots/footers.md#client|MenuClass:sort -->

---

### <Badge type="client" text="Client" /> MenuClass:updateItem()

<!-- @include: ./slots/headers.md#client|MenuClass:updateItem -->

 <br>
 <br>
Update a specific property of a menu [item](#item-methods) <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:updateItem -->

#### Syntax

```lua
MenuClass:updateItem(index, key, value)
```

#### Parameters

`index` : _integer_
> The index of the [item](#item-methods) to update
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

### <Badge type="client" text="Client" /> MenuClass:updateValue()

<!-- @include: ./slots/headers.md#client|MenuClass:updateValue -->

Update a specific property of a menu. Requires MenuClass:push() to be called to apply the changes <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:updateValue -->

#### Syntax

```lua
MenuClass:updateValue(keys, value)
```

#### Parameters

`keys` : _string|table_
> The list of property name to access to the value
>

`value` : _any_
> The new value
>

<!-- @include: ./slots/examples.md#client|MenuClass:updateValue -->

<!-- @include: ./slots/footers.md#client|MenuClass:updateValue -->

---

### <Badge type="client" text="Client" /> MenuClass:use()

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

<!-- #endregion group_2 -->

<!-- #region group_3 -->
## MenuItem Methods

### <Badge type="client" text="Client" /> MenuItem:deleteValue()

<!-- @include: ./slots/headers.md#client|MenuItem:deleteValue -->

Delete a specific property of a menu [item](#item-methods). Requires MenuClass:push() to be called to apply the changes <br>

<!-- @include: ./slots/descriptions.md#client|MenuItem:deleteValue -->

#### Syntax

```lua
MenuItem:deleteValue(keys)
```

#### Parameters

`keys` : _string|table_
> The list of property name to access to the value
>

<!-- @include: ./slots/examples.md#client|MenuItem:deleteValue -->

<!-- @include: ./slots/footers.md#client|MenuItem:deleteValue -->

---

### <Badge type="client" text="Client" /> MenuItem:getParentMenu()

<!-- @include: ./slots/headers.md#client|MenuItem:getParentMenu -->

Get the parent menu of the [item](#item-methods) <br>

<!-- @include: ./slots/descriptions.md#client|MenuItem:getParentMenu -->

#### Syntax

```lua
MenuItem:getParentMenu()
```

#### Return Value

Type : _[MenuClass](#menuclass-methods)_

> The parent menu

<!-- @include: ./slots/examples.md#client|MenuItem:getParentMenu -->

<!-- @include: ./slots/footers.md#client|MenuItem:getParentMenu -->

---

### <Badge type="client" text="Client" /> MenuItem:updateValue()

<!-- @include: ./slots/headers.md#client|MenuItem:updateValue -->

Update a specific property of a menu [item](#item-methods). Requires MenuClass:push() to be called to apply the changes <br>

<!-- @include: ./slots/descriptions.md#client|MenuItem:updateValue -->

#### Syntax

```lua
MenuItem:updateValue(keys, value)
```

#### Parameters

`keys` : _string|table_
> The property name to update
>

`value` : _any_
> The new value for the property
>

<!-- @include: ./slots/examples.md#client|MenuItem:updateValue -->

<!-- @include: ./slots/footers.md#client|MenuItem:updateValue -->

<!-- #endregion group_3 -->

<!-- #region group_4 -->
## item Methods

### <Badge type="client" text="Client" /> item:getParentMenu()

<!-- @include: ./slots/headers.md#client|item:getParentMenu -->

<!-- @include: ./slots/descriptions.md#client|item:getParentMenu -->

#### Syntax

```lua
item:getParentMenu()
```

<!-- @include: ./slots/examples.md#client|item:getParentMenu -->

<!-- @include: ./slots/footers.md#client|item:getParentMenu -->

<!-- #endregion group_4 -->

<!-- #region group_5 -->
## JO Functions

### <Badge type="client" text="Client" /> jo.menu.addItem()

<!-- @include: ./slots/headers.md#client|jo.menu.addItem -->

Add an [item](#item-methods) to a menu by its ID <br>

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
> Position index or [item](#item-methods) table if used as single parameter
>

`[item](#item-methods)` : _table_ <BadgeOptional />

> The [item](#item-methods) to add - if not provided, p is used as the [item](#item-methods)
>

> `[item](#item-methods).title` : _string_ - The [item](#item-methods) label
> 
> `[item](#item-methods).child` : _string_ - The menu to open when Enter is pressed <br> default: false <BadgeOptional />
> 
> `[item](#item-methods).visible` : _boolean_ - If the [item](#item-methods) is visible in the menu <br> default: true <BadgeOptional />
> 
> `[item](#item-methods).data` : _table_ - Variable to store custom data in the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).description` : _string_ - Description text for the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).prefix` : _string_ - The little icon before the title from `nui\menu\assets\images\icons` folder  ![prefix Icon](/images/previews/menu/prefixIcon.jpg) <BadgeOptional />
> 
> `[item](#item-methods).icon` : _string_ - The left icon filename from `nui\menu\assets\images\icons` folder  ![Icon](/images/previews/menu/leftIcon.jpg) <BadgeOptional />
> 
> `[item](#item-methods).iconRight` : _string_ - The right icon filename from `nui\menu\assets\images\icons` folder  ![icon right](/images/previews/menu/iconRight.jpg) <BadgeOptional />
> 
> `[item](#item-methods).iconClass` : _string_ - CSS class for the icon <BadgeOptional />
> 
> `[item](#item-methods).price` : _table_ - The price of the [item](#item-methods). Use 0 to display "free" <br> default: false  ![preview price](/images/previews/menu/price.jpg) <BadgeOptional />
> 
> > `[item](#item-methods).price.money` : _number_ - The price in $ <BadgeOptional />
> > 
> > `[item](#item-methods).price.gold` : _number_ - The price in gold <BadgeOptional />
> > 
> `[item](#item-methods).priceTitle` : _string_ - Replace the "Price" label <BadgeOptional />
> 
> `[item](#item-methods).priceRight` : _boolean_ - Display the price at the right of the [item](#item-methods) title  ![price to the right](/images/previews/menu/priceRight.jpg) <BadgeOptional />
> 
> `[item](#item-methods).statistics` : _table_ - List of [statistics](#statistics) to display for the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).disabled` : _boolean_ - If the [item](#item-methods) is disabled (grey) in the menu  ![disable item](/images/previews/menu/disableItem.jpg) <BadgeOptional />
> 
> `[item](#item-methods).textRight` : _string_ - The label displayed at the right of the [item](#item-methods)  ![Right text](/images/previews/menu/rightText.jpg) <BadgeOptional />
> 
> `[item](#item-methods).previewPalette` : _boolean_ - Display a color square at the right of the [item](#item-methods) <br> default: true  ![preview palette](/images/previews/menu/previewPalette.jpg) <BadgeOptional />
> 
> `[item](#item-methods).sliders` : _table_ - List of [sliders](#sliders) for the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).onActive` : _function_ - Fired when the [item](#item-methods) is selected <BadgeOptional />
> 
> `[item](#item-methods).onClick` : _function_ - Fired when Enter is pressed on the [item](#item-methods) <BadgeOptional />
> 
> `[item](#item-methods).onChange` : _function_ - Fired when a slider value changes <BadgeOptional />
> 
> `[item](#item-methods).onExit` : _function_ - Fired when the [item](#item-methods) is exited <BadgeOptional />
> 

<!-- @include: ./slots/examples.md#client|jo.menu.addItem -->

<!-- @include: ./slots/footers.md#client|jo.menu.addItem -->

---

### <Badge type="client" text="Client" /> jo.menu.delete()

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

### <Badge type="client" text="Client" /> jo.menu.displayLoader()

<!-- @include: ./slots/headers.md#client|jo.menu.displayLoader -->

A function to display the loader <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.displayLoader -->

#### Syntax

```lua
jo.menu.displayLoader(value)
```

#### Parameters

`value` : _boolean_ <BadgeOptional />
> Whether to display the loader <br> default: `true`
>

<!-- @include: ./slots/examples.md#client|jo.menu.displayLoader -->

<!-- @include: ./slots/footers.md#client|jo.menu.displayLoader -->

---

### <Badge type="client" text="Client" /> jo.menu.doesActiveButtonChange()

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

### <Badge type="client" text="Client" /> jo.menu.fireAllLevelsEvent()

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

### <Badge type="client" text="Client" /> jo.menu.fireEvent()

<!-- @include: ./slots/headers.md#client|jo.menu.fireEvent -->

Fire an event for a specific menu [item](#item-methods) <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.fireEvent -->

#### Syntax

```lua
jo.menu.fireEvent(item, eventName, ...)
```

#### Parameters

`[item](#item-methods)` : _table_

> The [item](#item-methods) to trigger the event on
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

### <Badge type="client" text="Client" /> jo.menu.forceBack()

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

### <Badge type="client" text="Client" /> jo.menu.get()

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

### <Badge type="client" text="Client" /> jo.menu.getCurrentData()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentData -->

Get data about the current menu state <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentData -->

#### Syntax

```lua
jo.menu.getCurrentData()
```

#### Return Value

Type : _table_

> Current menu data including menu ID and selected [item](#item-methods)

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentData -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentData -->

---

### <Badge type="client" text="Client" /> jo.menu.getCurrentIndex()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentIndex -->

A function to get the current index <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentIndex -->

#### Syntax

```lua
jo.menu.getCurrentIndex()
```

#### Return Value

Type : _integer_

> The index of the current [item](#item-methods)

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentIndex -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentIndex -->

---

### <Badge type="client" text="Client" /> jo.menu.getCurrentItem()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentItem -->

Get the currently selected menu [item](#item-methods) <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentItem -->

#### Syntax

```lua
jo.menu.getCurrentItem()
```

#### Return Value

Type : _table_

> The currently selected [item](#item-methods)

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentItem -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentItem -->

---

### <Badge type="client" text="Client" /> jo.menu.getCurrentMenu()

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

### <Badge type="client" text="Client" /> jo.menu.getCurrentMenuId()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentMenuId -->

A function to get the current menu id <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentMenuId -->

#### Syntax

```lua
jo.menu.getCurrentMenuId()
```

#### Return Value

Type : _string_

> The id of the current menu

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentMenuId -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentMenuId -->

---

### <Badge type="client" text="Client" /> jo.menu.getPreviousData()

<!-- @include: ./slots/headers.md#client|jo.menu.getPreviousData -->

Get data about the previous menu state <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getPreviousData -->

#### Syntax

```lua
jo.menu.getPreviousData()
```

#### Return Value

Type : _table_

> Previous menu data including menu ID and selected [item](#item-methods)

<!-- @include: ./slots/examples.md#client|jo.menu.getPreviousData -->

<!-- @include: ./slots/footers.md#client|jo.menu.getPreviousData -->

---

### <Badge type="client" text="Client" /> jo.menu.hideLoader()

<!-- @include: ./slots/headers.md#client|jo.menu.hideLoader -->

A function to hide the loader <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.hideLoader -->

#### Syntax

```lua
jo.menu.hideLoader()
```

<!-- @include: ./slots/examples.md#client|jo.menu.hideLoader -->

<!-- @include: ./slots/footers.md#client|jo.menu.hideLoader -->

---

### <Badge type="client" text="Client" /> jo.menu.isCurrentMenu()

<!-- @include: ./slots/headers.md#client|jo.menu.isCurrentMenu -->

A function to know if the menu is the current one <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.isCurrentMenu -->

#### Syntax

```lua
jo.menu.isCurrentMenu(id)
```

#### Parameters

`id` : _string_
> The menu id
>

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#client|jo.menu.isCurrentMenu -->

<!-- @include: ./slots/footers.md#client|jo.menu.isCurrentMenu -->

---

### <Badge type="client" text="Client" /> jo.menu.isExist()

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

### <Badge type="client" text="Client" /> jo.menu.isOpen()

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

### <Badge type="client" text="Client" /> jo.menu.missingMenuHandler()

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

### <Badge type="client" text="Client" /> jo.menu.onChange()

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

### <Badge type="client" text="Client" /> jo.menu.playAudio()

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

### <Badge type="client" text="Client" /> jo.menu.refresh()

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

### <Badge type="client" text="Client" /> jo.menu.reset()

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

### <Badge type="client" text="Client" /> jo.menu.runRefreshEvents()

<!-- @include: ./slots/headers.md#client|jo.menu.runRefreshEvents -->

A function to fire menu and [item](#item-methods)s events <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.runRefreshEvents -->

#### Syntax

```lua
jo.menu.runRefreshEvents(menuEvent, itemEvent)
```

#### Parameters

`menuEvent` : _boolean_ <BadgeOptional />
> Whether to run menu events
>

`[item](#item-methods)Event` : _boolean_ <BadgeOptional />
> Whether to run [item](#item-methods) events
>

<!-- @include: ./slots/examples.md#client|jo.menu.runRefreshEvents -->

<!-- @include: ./slots/footers.md#client|jo.menu.runRefreshEvents -->

---

### <Badge type="client" text="Client" /> jo.menu.send()

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

### <Badge type="client" text="Client" /> jo.menu.set()

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

### <Badge type="client" text="Client" /> jo.menu.setCurrentMenu()

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

### <Badge type="client" text="Client" /> jo.menu.show()

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

### <Badge type="client" text="Client" /> jo.menu.softHide()

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

### <Badge type="client" text="Client" /> jo.menu.sort()

<!-- @include: ./slots/headers.md#client|jo.menu.sort -->

Sort menu [item](#item-methods)s alphabetically by title using menu ID <br>

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
> Position of the last element to sort <br> default: `#self.[item](#item-methods)s`
>

<!-- @include: ./slots/examples.md#client|jo.menu.sort -->

<!-- @include: ./slots/footers.md#client|jo.menu.sort -->

---

### <Badge type="client" text="Client" /> jo.menu.updateItem()

<!-- @include: ./slots/headers.md#client|jo.menu.updateItem -->

Update a specific property of a menu [item](#item-methods) by menu ID <br>

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
> The index of the [item](#item-methods) to update
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

### <Badge type="client" text="Client" /> jo.menu.updateLang()

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

> `lang.of` : _string_ - The bottom right text displaying current [item](#item-methods) number <br> default : `"%1 of %2"` <BadgeOptional />
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

### <Badge type="client" text="Client" /> jo.menu.updateVolume()

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

---

### <Badge type="shared" text="Shared" /> jo.menu.formatPrice()

<!-- @include: ./slots/headers.md#shared|jo.menu.formatPrice -->

A function to format a single price <br>

<!-- @include: ./slots/descriptions.md#shared|jo.menu.formatPrice -->

#### Syntax

```lua
jo.menu.formatPrice(price)
```

#### Parameters

`price` : _table|integer|number_
> The price to format
>

#### Return Value

Type : _table_

> The formatted price

<!-- @include: ./slots/examples.md#shared|jo.menu.formatPrice -->

<!-- @include: ./slots/footers.md#shared|jo.menu.formatPrice -->

---

### <Badge type="shared" text="Shared" /> jo.menu.formatPrices()

<!-- @include: ./slots/headers.md#shared|jo.menu.formatPrices -->

A function to format price variations <br>

<!-- @include: ./slots/descriptions.md#shared|jo.menu.formatPrices -->

#### Syntax

```lua
jo.menu.formatPrices(prices)
```

#### Parameters

`prices` : _table|integer|number_
> The prices to format
>

#### Return Value

Type : _table_

> The formatted prices

<!-- @include: ./slots/examples.md#shared|jo.menu.formatPrices -->

<!-- @include: ./slots/footers.md#shared|jo.menu.formatPrices -->

---

### <Badge type="shared" text="Shared" /> jo.menu.isPriceFree()

<!-- @include: ./slots/headers.md#shared|jo.menu.isPriceFree -->

Checks if a price is free <br>

<!-- @include: ./slots/descriptions.md#shared|jo.menu.isPriceFree -->

#### Syntax

```lua
jo.menu.isPriceFree(price)
```

#### Parameters

`price` : _table|integer|number_
> The price to check
>

#### Return Value

Type : _boolean_

> Return `true` if the price is free

<!-- @include: ./slots/examples.md#shared|jo.menu.isPriceFree -->

<!-- @include: ./slots/footers.md#shared|jo.menu.isPriceFree -->

<!-- #endregion group_5 -->
