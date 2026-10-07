<!-- #region group_1 -->
## Constructor

### <Badge type="client" text="Client" /> jo.menu.create()

<!-- @include: ./slots/headers.md#client|jo.menu.create -->

Create a new menu. If a menu with the same ID exists, it's replaced <br>
Add the items with `MenuClass:addItem()`, then send the menu to the NUI with `MenuClass:send()` <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.create -->

#### Syntax

```lua
jo.menu.create(id, data)
```

#### Parameters

`id` : _string_
> Unique ID of the menu
>

`data` : _table_

> The menu configuration
>

> `data.title` : _string_ - The big title of the menu. HTML is allowed <br> default: `"Jump On"` <BadgeOptional />
> 
> `data.subtitle` : _string_ - The subtitle of the menu, displayed above the items. HTML is allowed <br> default: `""` <BadgeOptional />
> 
> `data.type` : _string_ - The type of menu: `list` or `tile` <br> default: `"list"` <BadgeOptional />
> 
> `data.numberOnScreen` : _integer_ - `list` menu: number of items displayed before the scroll. Maximum `13` <br> default: `8` <BadgeOptional />
> 
> `data.numberOnLine` : _integer_ - `tile` menu: number of tiles per line <br> default: `4` <BadgeOptional />
> 
> `data.numberLineOnScreen` : _integer_ - `tile` menu: number of lines displayed before the scroll <br> default: `6` <BadgeOptional />
> 
> `data.image` : _string|table_ - An image displayed above the items: a URL or `{url, width, height, radius, style}` <BadgeOptional />
> 
> `data.displayBackButton` : _boolean_ - Display the back arrow next to the subtitle, even without history <br> default: `false` <BadgeOptional />
> 
> `data.hideBackground` : _boolean_ - Hide the dark background behind the menu <br> default: `false` <BadgeOptional />
> 
> `data.price` : _number|table_ - The price displayed when the active item has no price. See [Prices](./items#prices) <BadgeOptional />
> 
> `data.priceTitle` : _string_ - Replace the "Price" label of `data.price` <BadgeOptional />
> 
> `data.distanceToClose` : _number_ - The menu closes itself when the player moves further than this distance <br> default: `false` <BadgeOptional />
> 
> `data.translateTitle` : _boolean_ - Use `title` as a key of the translation strings <br> default: `false` <BadgeOptional />
> 
> `data.translateSubtitle` : _boolean_ - Use `subtitle` as a key of the translation strings <br> default: `false` <BadgeOptional />
> 
> `data.onBeforeEnter` : _function_ - Fired before the menu is displayed. The NUI waits for the end of the function <BadgeOptional />
> 
> `data.onEnter` : _function_ - Fired when the menu becomes the current menu <BadgeOptional />
> 
> `data.onBack` : _function_ - Fired when Backspace or Escape is pressed <BadgeOptional />
> 
> `data.onExit` : _function_ - Fired when the menu is no longer the current menu <BadgeOptional />
> 
> `data.onChange` : _function_ - Fired when the active item or a slider changes in the menu <BadgeOptional />
> 
> `data.onTick` : _function_ - Fired every frame while the menu is the current menu <BadgeOptional />
> 

#### Return Value

Type : _[MenuClass](#menuclass-methods)_

> The new menu

<!-- @include: ./slots/examples.md#client|jo.menu.create -->

<!-- @include: ./slots/footers.md#client|jo.menu.create -->

---

### <Badge type="client" text="Client" /> jo.menu.createIfNotExist()

<!-- @include: ./slots/headers.md#client|jo.menu.createIfNotExist -->

Create a new menu, only if no menu exists with this ID <br>
Returns two values: the menu (the new one or the existing one) and `true` if the menu was created <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.createIfNotExist -->

#### Syntax

```lua
jo.menu.createIfNotExist(id, data)
```

#### Parameters

`id` : _string_
> Unique ID of the menu
>

`data` : _table_

> The menu configuration. See [jo.menu.create()](#jo-menu-create)
>


#### Return Value

Type : _[MenuClass](#menuclass-methods)_

> The menu

<!-- @include: ./slots/examples.md#client|jo.menu.createIfNotExist -->

<!-- @include: ./slots/footers.md#client|jo.menu.createIfNotExist -->

<!-- #endregion group_1 -->

<!-- #region group_2 -->
## MenuClass Methods

### <Badge type="client" text="Client" /> MenuClass:addItem()

<!-- @include: ./slots/headers.md#client|MenuClass:addItem -->

Add an item to the menu. Call `MenuClass:send()` to send the menu to the NUI <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:addItem -->

#### Syntax

```lua
MenuClass:addItem(index, item)
```

#### Parameters

`index` : _integer|table_
> The position of the item in the menu, or the item itself to add it at the end
>

`item` : _table_ <BadgeOptional />

> The item to add, when `index` is a position
>

> `item.title` : _string_ - The item label. HTML is allowed
> 
> `item.subtitle` : _string_ - A second line displayed under the title <BadgeOptional />
> 
> `item.description` : _string_ - The text displayed in the description area, under the list. HTML is allowed <BadgeOptional />
> 
> `item.footer` : _string_ - The text displayed at the bottom of the menu. HTML is allowed <BadgeOptional />
> 
> `item.child` : _string_ - The ID of the menu opened when the item is clicked <br> default: `false` <BadgeOptional />
> 
> `item.visible` : _boolean_ - If `false`, the item is not displayed <br> default: `true` <BadgeOptional />
> 
> `item.disabled` : _boolean_ - Grey out the item: it can't be clicked and its sliders are hidden <br> default: `false` <BadgeOptional />
> 
> `item.data` : _table_ - Free storage for your own data, available in the callbacks with `currentData.item.data` <BadgeOptional />
> 
> `item.icon` : _string_ - The icon on the left of the item: a filename of `nui/menu/assets/images/icons` (without `.png`) or a full image URL <BadgeOptional />
> 
> `item.iconClass` : _string_ - CSS classes applied to the icon, like `fgold` or `bw`. See [CSS classes](./menus#css-classes) <BadgeOptional />
> 
> `item.iconSize` : _string_ - `"small"` to reduce the size of the icon <br> default: `"normal"` <BadgeOptional />
> 
> `item.iconRight` : _string_ - An icon displayed on the right of the item. In a `tile` menu, it's displayed in the bottom right corner of the tile <BadgeOptional />
> 
> `item.prefix` : _string_ - A small icon displayed before the title <BadgeOptional />
> 
> `item.textRight` : _string_ - A text displayed on the right of the item <BadgeOptional />
> 
> `item.textRightClass` : _string_ - CSS classes applied to `textRight`, like `tiny` <BadgeOptional />
> 
> `item.image` : _string|table_ - An image displayed in the description area: a URL or `{url, width, height, radius, style}` <BadgeOptional />
> 
> `item.color` : _string|table_ - The CSS color of the title, or a table `{title, background, accent, icon}`. See [Colors](./items#colors) <BadgeOptional />
> 
> `item.price` : _number|table_ - The price displayed under the description. See [Prices](./items#prices) <br> default: `false` <BadgeOptional />
> 
> `item.priceTitle` : _string_ - Replace the "Price" label above the price <BadgeOptional />
> 
> `item.priceRight` : _boolean|number|table_ - Display a price on the right of the item: `true` to display `item.price`, or a price value <BadgeOptional />
> 
> `item.statistics` : _table_ - The list of statistics displayed in the description area. See [Statistics](./statistics) <BadgeOptional />
> 
> `item.sliders` : _table_ - The list of sliders of the item. See [Sliders](./sliders) <BadgeOptional />
> 
> `item.previewPalette` : _boolean_ - Display a square with the current color of the sliders on the right of the item <br> default: `false` <BadgeOptional />
> 
> `item.quantity` : _number_ - In a `tile` menu, a number displayed in a circle in the top right corner of the tile <BadgeOptional />
> 
> `item.quantityCircleClass` : _string_ - CSS classes applied to the quantity circle, like `fgold` <BadgeOptional />
> 
> `item.quality` : _integer_ - In a `tile` menu, a quality from `1` to `3` displayed with stars <BadgeOptional />
> 
> `item.qualityClass` : _string_ - CSS classes applied to the quality stars <BadgeOptional />
> 
> `item.stars` : _table_ - In a `tile` menu, a row of stars: `{current, total}` <BadgeOptional />
> 
> `item.starsClass` : _string_ - CSS classes applied to the row of stars <BadgeOptional />
> 
> `item.tilePadding` : _number|string_ - In a `tile` menu, the space between the image and the edge of the tile: a number in vh, or a CSS length. `0` brings the image to the edge <br> default: `1.2` <BadgeOptional />
> 
> `item.translate` : _boolean_ - Use `title` as a key of the translation strings. See [jo.menu.updateLang()](#jo-menu-updatelang) <br> default: `false` <BadgeOptional />
> 
> `item.translateDescription` : _boolean_ - Use `description` as a key of the translation strings <br> default: `false` <BadgeOptional />
> 
> `item.translateTextRight` : _boolean_ - Use `textRight` as a key of the translation strings <br> default: `false` <BadgeOptional />
> 
> `item.bufferOnChange` : _boolean_ - Wait a few milliseconds between two `onChange` events of fast slider moves. `false` fires them on the next frame <br> default: `true` <BadgeOptional />
> 
> `item.onActive` : _function_ - Fired when the item becomes the active item <BadgeOptional />
> 
> `item.onClick` : _function_ - Fired when the item is clicked or Enter is pressed <BadgeOptional />
> 
> `item.onChange` : _function_ - Fired when a slider of the item changes <BadgeOptional />
> 
> `item.onExit` : _function_ - Fired when the item is no longer the active item <BadgeOptional />
> 
> `item.onTick` : _function_ - Fired every frame while the item is active <BadgeOptional />
> 

#### Return Value

Type : _[MenuItemClass](#menuitemclass-methods)_

> The added item

<!-- @include: ./slots/examples.md#client|MenuClass:addItem -->

<!-- @include: ./slots/footers.md#client|MenuClass:addItem -->

---

### <Badge type="client" text="Client" /> MenuClass:deleteItem()

<!-- @include: ./slots/headers.md#client|MenuClass:deleteItem -->

Delete an item of the menu and update the index of the next items. Call `MenuClass:push()` to send the changes to the NUI <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:deleteItem -->

#### Syntax

```lua
MenuClass:deleteItem(index)
```

#### Parameters

`index` : _integer_
> The index of the item to delete
>

<!-- @include: ./slots/examples.md#client|MenuClass:deleteItem -->

<!-- @include: ./slots/footers.md#client|MenuClass:deleteItem -->

---

### <Badge type="client" text="Client" /> MenuClass:deleteValue()

<!-- @include: ./slots/headers.md#client|MenuClass:deleteValue -->

Delete a property of the menu or of one of its items. Call `MenuClass:push()` to send the changes to the NUI <br>
`{"items", index}` deletes the item, like `MenuClass:deleteItem()` <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:deleteValue -->

#### Syntax

```lua
MenuClass:deleteValue(keys)
```

#### Parameters

`keys` : _string|table_
> The property name, or the path to a nested property like `{"items", 2, "price"}`
>

<!-- @include: ./slots/examples.md#client|MenuClass:deleteValue -->

<!-- @include: ./slots/footers.md#client|MenuClass:deleteValue -->

---

### <Badge type="client" text="Client" /> MenuClass:push()

<!-- @include: ./slots/headers.md#client|MenuClass:push -->

Send to the NUI the changes made with `updateValue()`, `deleteValue()` and `deleteItem()` <br>

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

Send the whole menu to the NUI again, without changing the active item <br>
Use it after big changes, like items added or sorted after `MenuClass:send()` <br>
If the menu is the current menu, `onExit` and `onActive` of the active item are fired again <br>

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

::: warning DEPRECATED
since v2.4.0. Use MenuClass:deleteItem() instead
:::

Remove an item from the menu, in Lua only <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:removeItem -->

#### Syntax

```lua
MenuClass:removeItem(index)
```

#### Parameters

`index` : _integer_
> The index of the item to remove
>

<!-- @include: ./slots/examples.md#client|MenuClass:removeItem -->

<!-- @include: ./slots/footers.md#client|MenuClass:removeItem -->

---

### <Badge type="client" text="Client" /> MenuClass:reset()

<!-- @include: ./slots/headers.md#client|MenuClass:reset -->

Move the cursor of the menu back to the first item <br>

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

Send the menu to the NUI. Call it once the items are added <br>
If the menu has already been sent, it's refreshed (see `MenuClass:refresh()`) <br>

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

Move the cursor to an item <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:setCurrentIndex -->

#### Syntax

```lua
MenuClass:setCurrentIndex(index)
```

#### Parameters

`index` : _integer_
> The index of the item
>

<!-- @include: ./slots/examples.md#client|MenuClass:setCurrentIndex -->

<!-- @include: ./slots/footers.md#client|MenuClass:setCurrentIndex -->

---

### <Badge type="client" text="Client" /> MenuClass:sort()

<!-- @include: ./slots/headers.md#client|MenuClass:sort -->

Sort the items alphabetically by title <br>
Call `MenuClass:refresh()` (or `MenuClass:send()` if the menu has never been sent) to display the new order <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:sort -->

#### Syntax

```lua
MenuClass:sort(first, last)
```

#### Parameters

`first` : _integer_ <BadgeOptional />
> The position of the first item to sort <br> default: `1`
>

`last` : _integer_ <BadgeOptional />
> The position of the last item to sort <br> default: the last item
>

<!-- @include: ./slots/examples.md#client|MenuClass:sort -->

<!-- @include: ./slots/footers.md#client|MenuClass:sort -->

---

### <Badge type="client" text="Client" /> MenuClass:updateItem()

<!-- @include: ./slots/headers.md#client|MenuClass:updateItem -->

::: warning DEPRECATED
since v2.3.0. Use MenuClass:updateValue() or MenuItem:updateValue() then MenuClass:push() instead
:::

Overwrite a property of an item. The NUI is not updated <br>

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

### <Badge type="client" text="Client" /> MenuClass:updateValue()

<!-- @include: ./slots/headers.md#client|MenuClass:updateValue -->

Update a property of the menu or of one of its items. Call `MenuClass:push()` to send the changes to the NUI <br>
`price` and `priceRight` values are formatted automatically <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:updateValue -->

#### Syntax

```lua
MenuClass:updateValue(keys, value)
```

#### Parameters

`keys` : _string|table_
> The property name, or the path to a nested property like `{"items", 2, "title"}`
>

`value` : _any_
> The new value
>

#### Return Value

Type : _boolean_

> Always `true`

<!-- @include: ./slots/examples.md#client|MenuClass:updateValue -->

<!-- @include: ./slots/footers.md#client|MenuClass:updateValue -->

---

### <Badge type="client" text="Client" /> MenuClass:use()

<!-- @include: ./slots/headers.md#client|MenuClass:use -->

Set the menu as the current menu. Same as `jo.menu.setCurrentMenu()` <br>

<!-- @include: ./slots/descriptions.md#client|MenuClass:use -->

#### Syntax

```lua
MenuClass:use(keepHistoric, resetMenu)
```

#### Parameters

`keepHistoric` : _boolean_ <BadgeOptional />
> Keep the previous menu in the history, to go back to it with Backspace <br> default: `true`
>

`resetMenu` : _boolean_ <BadgeOptional />
> Move the cursor back to the first item <br> default: `true`
>

<!-- @include: ./slots/examples.md#client|MenuClass:use -->

<!-- @include: ./slots/footers.md#client|MenuClass:use -->

<!-- #endregion group_2 -->

<!-- #region group_3 -->
## MenuItemClass Methods

### <Badge type="client" text="Client" /> MenuItemClass:deleteValue()

<!-- @include: ./slots/headers.md#client|MenuItemClass:deleteValue -->

Delete a property of the item. Call `MenuClass:push()` to send the changes to the NUI <br>
Only works on an item returned by `MenuClass:addItem()` <br>

<!-- @include: ./slots/descriptions.md#client|MenuItemClass:deleteValue -->

#### Syntax

```lua
MenuItemClass:deleteValue(keys)
```

#### Parameters

`keys` : _string|table_
> The property name, or the path to a nested property like `{"sliders", 2}`
>

<!-- @include: ./slots/examples.md#client|MenuItemClass:deleteValue -->

<!-- @include: ./slots/footers.md#client|MenuItemClass:deleteValue -->

---

### <Badge type="client" text="Client" /> MenuItemClass:getParentMenu()

<!-- @include: ./slots/headers.md#client|MenuItemClass:getParentMenu -->

Get the menu the item belongs to <br>
Only works on an item returned by `MenuClass:addItem()` <br>

<!-- @include: ./slots/descriptions.md#client|MenuItemClass:getParentMenu -->

#### Syntax

```lua
MenuItemClass:getParentMenu()
```

#### Return Value

Type : _[MenuClass](#menuclass-methods)_

> The parent menu

<!-- @include: ./slots/examples.md#client|MenuItemClass:getParentMenu -->

<!-- @include: ./slots/footers.md#client|MenuItemClass:getParentMenu -->

---

### <Badge type="client" text="Client" /> MenuItemClass:updateValue()

<!-- @include: ./slots/headers.md#client|MenuItemClass:updateValue -->

Update a property of the item. Call `MenuClass:push()` to send the changes to the NUI <br>
Only works on an item returned by `MenuClass:addItem()` <br>

<!-- @include: ./slots/descriptions.md#client|MenuItemClass:updateValue -->

#### Syntax

```lua
MenuItemClass:updateValue(keys, value)
```

#### Parameters

`keys` : _string|table_
> The property name, or the path to a nested property like `{"sliders", 1, "current"}`
>

`value` : _any_
> The new value
>

<!-- @include: ./slots/examples.md#client|MenuItemClass:updateValue -->

<!-- @include: ./slots/footers.md#client|MenuItemClass:updateValue -->

<!-- #endregion group_3 -->

<!-- #region group_4 -->
## Menu Management

### <Badge type="client" text="Client" /> jo.menu.addItem()

<!-- @include: ./slots/headers.md#client|jo.menu.addItem -->

Add an item to a menu from its ID. Same as `MenuClass:addItem()` <br>

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
> The position of the item in the menu, or the item itself to add it at the end
>

`item` : _table_ <BadgeOptional />

> The item to add, when `p` is a position. See [MenuClass:addItem()](#menuclass-additem) for the keys
>


<!-- @include: ./slots/examples.md#client|jo.menu.addItem -->

<!-- @include: ./slots/footers.md#client|jo.menu.addItem -->

---

### <Badge type="client" text="Client" /> jo.menu.delete()

<!-- @include: ./slots/headers.md#client|jo.menu.delete -->

Delete a menu, in Lua and in the NUI <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.delete -->

#### Syntax

```lua
jo.menu.delete(id)
```

#### Parameters

`id` : _string_
> The menu ID
>

<!-- @include: ./slots/examples.md#client|jo.menu.delete -->

<!-- @include: ./slots/footers.md#client|jo.menu.delete -->

---

### <Badge type="client" text="Client" /> jo.menu.get()

<!-- @include: ./slots/headers.md#client|jo.menu.get -->

Get a menu from its ID <br>

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

### <Badge type="client" text="Client" /> jo.menu.isExist()

<!-- @include: ./slots/headers.md#client|jo.menu.isExist -->

Check if a menu exists <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.isExist -->

#### Syntax

```lua
jo.menu.isExist(id)
```

#### Parameters

`id` : _string_
> The menu ID
>

#### Return Value

Type : _boolean_

> Returns `true` if the menu exists

<!-- @include: ./slots/examples.md#client|jo.menu.isExist -->

<!-- @include: ./slots/footers.md#client|jo.menu.isExist -->

---

### <Badge type="client" text="Client" /> jo.menu.refresh()

<!-- @include: ./slots/headers.md#client|jo.menu.refresh -->

Refresh a menu from its ID. Same as `MenuClass:refresh()` <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.refresh -->

#### Syntax

```lua
jo.menu.refresh(id)
```

#### Parameters

`id` : _string_
> The menu ID
>

<!-- @include: ./slots/examples.md#client|jo.menu.refresh -->

<!-- @include: ./slots/footers.md#client|jo.menu.refresh -->

---

### <Badge type="client" text="Client" /> jo.menu.reset()

<!-- @include: ./slots/headers.md#client|jo.menu.reset -->

Reset a menu from its ID. Same as `MenuClass:reset()` <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.reset -->

#### Syntax

```lua
jo.menu.reset(id)
```

#### Parameters

`id` : _string_
> The menu ID
>

<!-- @include: ./slots/examples.md#client|jo.menu.reset -->

<!-- @include: ./slots/footers.md#client|jo.menu.reset -->

---

### <Badge type="client" text="Client" /> jo.menu.send()

<!-- @include: ./slots/headers.md#client|jo.menu.send -->

Send a menu to the NUI from its ID. Same as `MenuClass:send()` <br>

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

Replace the menu stored with this ID <br>

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
> The menu
>

<!-- @include: ./slots/examples.md#client|jo.menu.set -->

<!-- @include: ./slots/footers.md#client|jo.menu.set -->

---

### <Badge type="client" text="Client" /> jo.menu.sort()

<!-- @include: ./slots/headers.md#client|jo.menu.sort -->

Sort the items of a menu from its ID. Same as `MenuClass:sort()` <br>

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
> The position of the first item to sort <br> default: `1`
>

`last` : _integer_ <BadgeOptional />
> The position of the last item to sort <br> default: the last item
>

<!-- @include: ./slots/examples.md#client|jo.menu.sort -->

<!-- @include: ./slots/footers.md#client|jo.menu.sort -->

---

### <Badge type="client" text="Client" /> jo.menu.updateItem()

<!-- @include: ./slots/headers.md#client|jo.menu.updateItem -->

::: warning DEPRECATED
since v2.3.0. Use MenuClass:updateValue() or MenuItem:updateValue() then MenuClass:push() instead
:::

Overwrite a property of an item from the menu ID. The NUI is not updated <br>

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

<!-- #endregion group_4 -->

<!-- #region group_5 -->
## Display

### <Badge type="client" text="Client" /> jo.menu.displayLoader()

<!-- @include: ./slots/headers.md#client|jo.menu.displayLoader -->

Display a loading animation in the menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.displayLoader -->

#### Syntax

```lua
jo.menu.displayLoader(value)
```

#### Parameters

`value` : _boolean_ <BadgeOptional />
> `false` to hide the loader <br> default: `true`
>

<!-- @include: ./slots/examples.md#client|jo.menu.displayLoader -->

<!-- @include: ./slots/footers.md#client|jo.menu.displayLoader -->

---

### <Badge type="client" text="Client" /> jo.menu.forceBack()

<!-- @include: ./slots/headers.md#client|jo.menu.forceBack -->

Go back to the previous menu of the history, like Backspace <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.forceBack -->

#### Syntax

```lua
jo.menu.forceBack()
```

<!-- @include: ./slots/examples.md#client|jo.menu.forceBack -->

<!-- @include: ./slots/footers.md#client|jo.menu.forceBack -->

---

### <Badge type="client" text="Client" /> jo.menu.hideLoader()

<!-- @include: ./slots/headers.md#client|jo.menu.hideLoader -->

Hide the loading animation <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.hideLoader -->

#### Syntax

```lua
jo.menu.hideLoader()
```

<!-- @include: ./slots/examples.md#client|jo.menu.hideLoader -->

<!-- @include: ./slots/footers.md#client|jo.menu.hideLoader -->

---

### <Badge type="client" text="Client" /> jo.menu.isOpen()

<!-- @include: ./slots/headers.md#client|jo.menu.isOpen -->

Check if the menu is displayed <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.isOpen -->

#### Syntax

```lua
jo.menu.isOpen()
```

#### Return Value

Type : _boolean_

> Returns `true` if the menu is displayed

<!-- @include: ./slots/examples.md#client|jo.menu.isOpen -->

<!-- @include: ./slots/footers.md#client|jo.menu.isOpen -->

---

### <Badge type="client" text="Client" /> jo.menu.isSoftHidden()

<!-- @include: ./slots/headers.md#client|jo.menu.isSoftHidden -->

Check if the menu is hidden by `jo.menu.softHide()` <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.isSoftHidden -->

#### Syntax

```lua
jo.menu.isSoftHidden()
```

#### Return Value

Type : _boolean_

> Returns `true` during the execution of the `jo.menu.softHide()` function

<!-- @include: ./slots/examples.md#client|jo.menu.isSoftHidden -->

<!-- @include: ./slots/footers.md#client|jo.menu.isSoftHidden -->

---

### <Badge type="client" text="Client" /> jo.menu.setCurrentMenu()

<!-- @include: ./slots/headers.md#client|jo.menu.setCurrentMenu -->

Set the current menu: the one displayed by `jo.menu.show()` <br>
If the menu doesn't exist, the handler registered with `jo.menu.missingMenuHandler()` is called <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.setCurrentMenu -->

#### Syntax

```lua
jo.menu.setCurrentMenu(id, keepHistoric, resetMenu)
```

#### Parameters

`id` : _string_
> The menu ID
>

`keepHistoric` : _boolean_ <BadgeOptional />
> Keep the previous menu in the history, to go back to it with Backspace <br> default: `true`
>

`resetMenu` : _boolean_ <BadgeOptional />
> Move the cursor back to the first item <br> default: `true`
>

<!-- @include: ./slots/examples.md#client|jo.menu.setCurrentMenu -->

<!-- @include: ./slots/footers.md#client|jo.menu.setCurrentMenu -->

---

### <Badge type="client" text="Client" /> jo.menu.show()

<!-- @include: ./slots/headers.md#client|jo.menu.show -->

Show or hide the current menu <br>
While the menu is displayed, the radar is hidden and the weapon wheel and pause menu controls are disabled <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.show -->

#### Syntax

```lua
jo.menu.show(show, keepInput, hideRadar, playMenuAnimation, hideCursor)
```

#### Parameters

`show` : _boolean_
> `true` to show the menu, `false` to hide it
>

`keepInput` : _boolean_ <BadgeOptional />
> Keep the game controls active, to move the player while the menu is open <br> default: `true`
>

`hideRadar` : _boolean_ <BadgeOptional />
> Unused: the radar is always hidden while the menu is displayed <br> default: `true`
>

`playMenuAnimation` : _boolean_ <BadgeOptional />
> Play the open/close animation <br> default: `true`
>

`hideCursor` : _boolean_ <BadgeOptional />
> Hide the mouse cursor <br> default: `false`
>

<!-- @include: ./slots/examples.md#client|jo.menu.show -->

<!-- @include: ./slots/footers.md#client|jo.menu.show -->

---

### <Badge type="client" text="Client" /> jo.menu.softHide()

<!-- @include: ./slots/headers.md#client|jo.menu.softHide -->

Hide the menu during the execution of a function, then display it again <br>
The function is executed synchronously: `jo.menu.softHide()` returns once the menu is displayed again <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.softHide -->

#### Syntax

```lua
jo.menu.softHide(cb, playMenuAnimation, keepBackground)
```

#### Parameters

`cb` : _function_
> The function executed while the menu is hidden
>

`playMenuAnimation` : _boolean_ <BadgeOptional />
> Play the open/close animation <br> default: `true`
>

`keepBackground` : _boolean_ <BadgeOptional />
> Keep the dark background of the menu while it's hidden <br> default: `false`
>

<!-- @include: ./slots/examples.md#client|jo.menu.softHide -->

<!-- @include: ./slots/footers.md#client|jo.menu.softHide -->

<!-- #endregion group_5 -->

<!-- #region group_6 -->
## Current State

### <Badge type="client" text="Client" /> jo.menu.doesActiveButtonChange()

<!-- @include: ./slots/headers.md#client|jo.menu.doesActiveButtonChange -->

Check if the active item (or the menu) changed during the last update <br>
Useful in `onChange` callbacks, to know if a slider moved or if the cursor moved <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.doesActiveButtonChange -->

#### Syntax

```lua
jo.menu.doesActiveButtonChange()
```

#### Return Value

Type : _boolean_

> Returns `true` if the active item changed

<!-- @include: ./slots/examples.md#client|jo.menu.doesActiveButtonChange -->

<!-- @include: ./slots/footers.md#client|jo.menu.doesActiveButtonChange -->

---

### <Badge type="client" text="Client" /> jo.menu.getCurrentData()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentData -->

Get the current state of the menu: the data passed to all the callbacks <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentData -->

#### Syntax

```lua
jo.menu.getCurrentData()
```

#### Return Value

Type : _table_

> `{menu = menuID, index = activeItemIndex, item = activeItem}`

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentData -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentData -->

---

### <Badge type="client" text="Client" /> jo.menu.getCurrentIndex()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentIndex -->

Get the index of the active item of the current menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentIndex -->

#### Syntax

```lua
jo.menu.getCurrentIndex()
```

#### Return Value

Type : _integer_

> The index of the active item

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentIndex -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentIndex -->

---

### <Badge type="client" text="Client" /> jo.menu.getCurrentItem()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentItem -->

Get the active item of the current menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentItem -->

#### Syntax

```lua
jo.menu.getCurrentItem()
```

#### Return Value

Type : _[MenuItemClass](#menuitemclass-methods)_

> The active item

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentItem -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentItem -->

---

### <Badge type="client" text="Client" /> jo.menu.getCurrentMenu()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentMenu -->

Get the current menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentMenu -->

#### Syntax

```lua
jo.menu.getCurrentMenu()
```

#### Return Value

Type : _[MenuClass](#menuclass-methods)_

> The current menu

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentMenu -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentMenu -->

---

### <Badge type="client" text="Client" /> jo.menu.getCurrentMenuId()

<!-- @include: ./slots/headers.md#client|jo.menu.getCurrentMenuId -->

Get the ID of the current menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getCurrentMenuId -->

#### Syntax

```lua
jo.menu.getCurrentMenuId()
```

#### Return Value

Type : _string_

> The ID of the current menu

<!-- @include: ./slots/examples.md#client|jo.menu.getCurrentMenuId -->

<!-- @include: ./slots/footers.md#client|jo.menu.getCurrentMenuId -->

---

### <Badge type="client" text="Client" /> jo.menu.getPreviousData()

<!-- @include: ./slots/headers.md#client|jo.menu.getPreviousData -->

Get the state of the menu before the last change <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.getPreviousData -->

#### Syntax

```lua
jo.menu.getPreviousData()
```

#### Return Value

Type : _table_

> `{menu = menuID, index = activeItemIndex, item = activeItem}`

<!-- @include: ./slots/examples.md#client|jo.menu.getPreviousData -->

<!-- @include: ./slots/footers.md#client|jo.menu.getPreviousData -->

---

### <Badge type="client" text="Client" /> jo.menu.isCurrentMenu()

<!-- @include: ./slots/headers.md#client|jo.menu.isCurrentMenu -->

Check if a menu is the current menu and is displayed <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.isCurrentMenu -->

#### Syntax

```lua
jo.menu.isCurrentMenu(id)
```

#### Parameters

`id` : _string_
> The menu ID
>

#### Return Value

Type : _boolean_

> Returns `true` if the menu is displayed and is the current one

<!-- @include: ./slots/examples.md#client|jo.menu.isCurrentMenu -->

<!-- @include: ./slots/footers.md#client|jo.menu.isCurrentMenu -->

<!-- #endregion group_6 -->

<!-- #region group_7 -->
## Events

### <Badge type="client" text="Client" /> jo.menu.fireAllLevelsEvent()

<!-- @include: ./slots/headers.md#client|jo.menu.fireAllLevelsEvent -->

Fire an event on the current menu, then on its active item <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.fireAllLevelsEvent -->

#### Syntax

```lua
jo.menu.fireAllLevelsEvent(eventName, ...)
```

#### Parameters

`eventName` : _string_
> The name of the event, like `onTick`
>

`...` : _any_ <BadgeOptional />
> Additional arguments for the listeners
>

<!-- @include: ./slots/examples.md#client|jo.menu.fireAllLevelsEvent -->

<!-- @include: ./slots/footers.md#client|jo.menu.fireAllLevelsEvent -->

---

### <Badge type="client" text="Client" /> jo.menu.fireEvent()

<!-- @include: ./slots/headers.md#client|jo.menu.fireEvent -->

Fire an event of a menu or an item <br>
The listeners receive the current data (see `jo.menu.getCurrentData()`) followed by the additional arguments <br>
The client and server events defined with `<eventName>ClientEvent` and `<eventName>ServerEvent` keys are triggered too <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.fireEvent -->

#### Syntax

```lua
jo.menu.fireEvent(item, eventName, ...)
```

#### Parameters

`item` : _table_

> The menu or the item
>


`eventName` : _string_
> The name of the event, like `onClick`
>

`...` : _any_ <BadgeOptional />
> Additional arguments for the listeners
>

<!-- @include: ./slots/examples.md#client|jo.menu.fireEvent -->

<!-- @include: ./slots/footers.md#client|jo.menu.fireEvent -->

---

### <Badge type="client" text="Client" /> jo.menu.missingMenuHandler()

<!-- @include: ./slots/headers.md#client|jo.menu.missingMenuHandler -->

Register a function to create a menu the first time it's needed <br>
Called when `jo.menu.setCurrentMenu()` or an item `child` targets this menu ID and the menu doesn't exist <br>

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
> The function that creates the menu
>

<!-- @include: ./slots/examples.md#client|jo.menu.missingMenuHandler -->

<!-- @include: ./slots/footers.md#client|jo.menu.missingMenuHandler -->

---

### <Badge type="client" text="Client" /> jo.menu.onChange()

<!-- @include: ./slots/headers.md#client|jo.menu.onChange -->

Listen to all the changes of all the menus: active item, sliders, menu <br>
The callback receives `{menu, index, item}`. It's unregistered when the resource stops <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.onChange -->

#### Syntax

```lua
jo.menu.onChange(cb)
```

#### Parameters

`cb` : _function_
> The function fired on each change
>

<!-- @include: ./slots/examples.md#client|jo.menu.onChange -->

<!-- @include: ./slots/footers.md#client|jo.menu.onChange -->

---

### <Badge type="client" text="Client" /> jo.menu.runRefreshEvents()

<!-- @include: ./slots/headers.md#client|jo.menu.runRefreshEvents -->

Fire the events of the current menu again, as if it was just opened <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.runRefreshEvents -->

#### Syntax

```lua
jo.menu.runRefreshEvents(menuEvent, itemEvent)
```

#### Parameters

`menuEvent` : _boolean_ <BadgeOptional />
> Fire `onExit` and `onEnter` of the menu, and `onExit` and `onActive` of the item <br> default: `false`
>

`itemEvent` : _boolean_ <BadgeOptional />
> Fire `onExit` and `onActive` of the active item <br> default: `false`
>

<!-- @include: ./slots/examples.md#client|jo.menu.runRefreshEvents -->

<!-- @include: ./slots/footers.md#client|jo.menu.runRefreshEvents -->

<!-- #endregion group_7 -->

<!-- #region group_8 -->
## Settings

### <Badge type="client" text="Client" /> jo.menu.playAudio()

<!-- @include: ./slots/headers.md#client|jo.menu.playAudio -->

Play a sound of the menu <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.playAudio -->

#### Syntax

```lua
jo.menu.playAudio(sound)
```

#### Parameters

`sound` : _string_
> The sound name: `button`, `coins`, `menu_open`, `menu_close` or `selected`
>

<!-- @include: ./slots/examples.md#client|jo.menu.playAudio -->

<!-- @include: ./slots/footers.md#client|jo.menu.playAudio -->

---

### <Badge type="client" text="Client" /> jo.menu.updateLang()

<!-- @include: ./slots/headers.md#client|jo.menu.updateLang -->

Translate the texts of the menu <br>
You can also add your own keys, used by the `translate*` options of the menus, items and sliders <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.updateLang -->

#### Syntax

```lua
jo.menu.updateLang(lang)
```

#### Parameters

`lang` : _table_

> The translated strings, by key
>

> `lang.of` : _string_ - The counter of the items and sliders. `%1` is the current position, `%2` the total <br> default: `"%1 of %2"` <BadgeOptional />
> 
> `lang.price` : _string_ - The label above the price <br> default: `"Price"` <BadgeOptional />
> 
> `lang.devise` : _string_ - The currency symbol <br> default: `"$"` <BadgeOptional />
> 
> `lang.free` : _string_ - The text displayed when the price is `0` <br> default: `"Free"` <BadgeOptional />
> 
> `lang.number` : _string_ - The title of an item without title. `%1` is the item position <br> default: `"Number %1"` <BadgeOptional />
> 

<!-- @include: ./slots/examples.md#client|jo.menu.updateLang -->

<!-- @include: ./slots/footers.md#client|jo.menu.updateLang -->

---

### <Badge type="client" text="Client" /> jo.menu.updateVolume()

<!-- @include: ./slots/headers.md#client|jo.menu.updateVolume -->

Set the volume of the menu sounds <br>

<!-- @include: ./slots/descriptions.md#client|jo.menu.updateVolume -->

#### Syntax

```lua
jo.menu.updateVolume(volume)
```

#### Parameters

`volume` : _number_
> The volume, from `0.0` to `1.0` <br> default: `0.5`
>

<!-- @include: ./slots/examples.md#client|jo.menu.updateVolume -->

<!-- @include: ./slots/footers.md#client|jo.menu.updateVolume -->

<!-- #endregion group_8 -->
