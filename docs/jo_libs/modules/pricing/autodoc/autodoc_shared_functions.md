
## Constructor

### jo.pricing.new()

<!-- @include: ./slots/headers.md#shared|jo.pricing.new -->

Creates a canonical [PriceClass](#priceclass-methods). <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.new -->

#### Syntax

```lua
jo.pricing.new(data)
```

#### Parameters

`data` : _PriceInput_ <BadgeOptional />
> Price input to normalize <br> default:`nil`
>

#### Return Value

Type : _[PriceClass](#priceclass-methods)_


<!-- @include: ./slots/examples.md#shared|jo.pricing.new -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.new -->

---

### jo.pricing.newGroup()

<!-- @include: ./slots/headers.md#shared|jo.pricing.newGroup -->

Creates a canonical [PriceGroupClass](#pricegroupclass-methods). <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.newGroup -->

#### Syntax

```lua
jo.pricing.newGroup(data)
```

#### Parameters

`data` : _PriceGroupInput_ <BadgeOptional />
> Price group input to normalize <br> default:`nil`
>

#### Return Value

Type : _[PriceGroupClass](#pricegroupclass-methods)_


<!-- @include: ./slots/examples.md#shared|jo.pricing.newGroup -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.newGroup -->


## JO Functions

### jo.pricing.get()

<!-- @include: ./slots/headers.md#shared|jo.pricing.get -->

Returns the canonical costs list for a price input. <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.get -->

#### Syntax

```lua
jo.pricing.get(price)
```

#### Parameters

`price` : _PriceInput_
> Price input
>

#### Return Value

Type : _Cost[]_


<!-- @include: ./slots/examples.md#shared|jo.pricing.get -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.get -->

---

### jo.pricing.isPrice()

<!-- @include: ./slots/headers.md#shared|jo.pricing.isPrice -->

Returns true when a value is a [PriceClass](#priceclass-methods) instance. <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.isPrice -->

#### Syntax

```lua
jo.pricing.isPrice(value)
```

#### Parameters

`value` : _any_
> Value to test
>

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#shared|jo.pricing.isPrice -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.isPrice -->

---

### jo.pricing.isPriceGroup()

<!-- @include: ./slots/headers.md#shared|jo.pricing.isPriceGroup -->

Returns true when a value is a [PriceGroupClass](#pricegroupclass-methods) instance. <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.isPriceGroup -->

#### Syntax

```lua
jo.pricing.isPriceGroup(value)
```

#### Parameters

`value` : _any_
> Value to test
>

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#shared|jo.pricing.isPriceGroup -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.isPriceGroup -->

---

### jo.pricing.tax()

<!-- @include: ./slots/headers.md#shared|jo.pricing.tax -->

Splits a price into tax and remaining prices. <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.tax -->

#### Syntax

```lua
jo.pricing.tax(price, percentage, roundUpItems)
```

#### Parameters

`price` : _PriceInput_
> Price input to split
>

`percentage` : _number_ <BadgeOptional />
> Tax multiplier applied to the input price <br> default:`0`
>

`roundUpItems` : _boolean_ <BadgeOptional />
> Round item quantities up instead of down <br> default:`false`
>

#### Return Value

Type : _[PriceClass](#priceclass-methods),[PriceClass](#priceclass-methods)_


<!-- @include: ./slots/examples.md#shared|jo.pricing.tax -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.tax -->


## PriceClass Methods

### PriceClass:add()

<!-- @include: ./slots/headers.md#shared|PriceClass:add -->

Adds a price to the current [PriceClass](#priceclass-methods). <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:add -->

#### Syntax

```lua
PriceClass:add(price)
```

#### Parameters

`price` : _PriceInput_
> Price input to add to the current price
>

#### Return Value

Type : _[PriceClass](#priceclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceClass:add -->

<!-- @include: ./slots/footers.md#shared|PriceClass:add -->

---

### PriceClass:clear()

<!-- @include: ./slots/headers.md#shared|PriceClass:clear -->

Removes every cost from the current [PriceClass](#priceclass-methods). <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:clear -->

#### Syntax

```lua
PriceClass:clear()
```

#### Return Value

Type : _[PriceClass](#priceclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceClass:clear -->

<!-- @include: ./slots/footers.md#shared|PriceClass:clear -->

---

### PriceClass:copy()

<!-- @include: ./slots/headers.md#shared|PriceClass:copy -->

Creates a new independent copy of the current [PriceClass](#priceclass-methods). <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:copy -->

#### Syntax

```lua
PriceClass:copy()
```

#### Return Value

Type : _[PriceClass](#priceclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceClass:copy -->

<!-- @include: ./slots/footers.md#shared|PriceClass:copy -->

---

### PriceClass:equals()

<!-- @include: ./slots/headers.md#shared|PriceClass:equals -->

Returns true when another price has the same costs. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:equals -->

#### Syntax

```lua
PriceClass:equals(other)
```

#### Parameters

`other` : _PriceInput_
> Price input to compare with the current price
>

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#shared|PriceClass:equals -->

<!-- @include: ./slots/footers.md#shared|PriceClass:equals -->

---

### PriceClass:get()

<!-- @include: ./slots/headers.md#shared|PriceClass:get -->

Returns the canonical costs list. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:get -->

#### Syntax

```lua
PriceClass:get()
```

#### Return Value

Type : _Cost[]_


<!-- @include: ./slots/examples.md#shared|PriceClass:get -->

<!-- @include: ./slots/footers.md#shared|PriceClass:get -->

---

### PriceClass:getGold()

<!-- @include: ./slots/headers.md#shared|PriceClass:getGold -->

Returns the gold amount. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:getGold -->

#### Syntax

```lua
PriceClass:getGold()
```

#### Return Value

Type : _number|nil_


<!-- @include: ./slots/examples.md#shared|PriceClass:getGold -->

<!-- @include: ./slots/footers.md#shared|PriceClass:getGold -->

---

### PriceClass:getItem()

<!-- @include: ./slots/headers.md#shared|PriceClass:getItem -->

Returns an ItemCost by item name and keep flag. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:getItem -->

#### Syntax

```lua
PriceClass:getItem(item, keep)
```

#### Parameters

`item` : _string_
> Item name
>

`keep` : _boolean_
> Item keep flag - `false`: consumed cost, `true`: required but kept
>

#### Return Value

Type : _ItemCost|nil_


<!-- @include: ./slots/examples.md#shared|PriceClass:getItem -->

<!-- @include: ./slots/footers.md#shared|PriceClass:getItem -->

---

### PriceClass:getItems()

<!-- @include: ./slots/headers.md#shared|PriceClass:getItems -->

Returns all ItemCost entries. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:getItems -->

#### Syntax

```lua
PriceClass:getItems()
```

#### Return Value

Type : _ItemCost[]_


<!-- @include: ./slots/examples.md#shared|PriceClass:getItems -->

<!-- @include: ./slots/footers.md#shared|PriceClass:getItems -->

---

### PriceClass:getMoney()

<!-- @include: ./slots/headers.md#shared|PriceClass:getMoney -->

Returns the money amount. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:getMoney -->

#### Syntax

```lua
PriceClass:getMoney()
```

#### Return Value

Type : _number|nil_


<!-- @include: ./slots/examples.md#shared|PriceClass:getMoney -->

<!-- @include: ./slots/footers.md#shared|PriceClass:getMoney -->

---

### PriceClass:getRol()

<!-- @include: ./slots/headers.md#shared|PriceClass:getRol -->

Returns the rol amount. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:getRol -->

#### Syntax

```lua
PriceClass:getRol()
```

#### Return Value

Type : _number|nil_


<!-- @include: ./slots/examples.md#shared|PriceClass:getRol -->

<!-- @include: ./slots/footers.md#shared|PriceClass:getRol -->

---

### PriceClass:hasCurrency()

<!-- @include: ./slots/headers.md#shared|PriceClass:hasCurrency -->

Returns true when a currency cost exists. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:hasCurrency -->

#### Syntax

```lua
PriceClass:hasCurrency(key)
```

#### Parameters

`key` : _"money"|"gold"|"rol"_
> Currency cost key
>

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#shared|PriceClass:hasCurrency -->

<!-- @include: ./slots/footers.md#shared|PriceClass:hasCurrency -->

---

### PriceClass:hasItem()

<!-- @include: ./slots/headers.md#shared|PriceClass:hasItem -->

Returns true when an ItemCost exists for an item name and keep flag. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:hasItem -->

#### Syntax

```lua
PriceClass:hasItem(item, keep)
```

#### Parameters

`item` : _string_
> Item name
>

`keep` : _boolean_
> Item keep flag - `false`: consumed cost, `true`: required but kept
>

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#shared|PriceClass:hasItem -->

<!-- @include: ./slots/footers.md#shared|PriceClass:hasItem -->

---

### PriceClass:isCurrencyOnly()

<!-- @include: ./slots/headers.md#shared|PriceClass:isCurrencyOnly -->

Returns true when the [PriceClass](#priceclass-methods) contains only currency costs. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:isCurrencyOnly -->

#### Syntax

```lua
PriceClass:isCurrencyOnly()
```

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#shared|PriceClass:isCurrencyOnly -->

<!-- @include: ./slots/footers.md#shared|PriceClass:isCurrencyOnly -->

---

### PriceClass:isFree()

<!-- @include: ./slots/headers.md#shared|PriceClass:isFree -->

Returns true when the [PriceClass](#priceclass-methods) has no payable costs. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:isFree -->

#### Syntax

```lua
PriceClass:isFree()
```

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#shared|PriceClass:isFree -->

<!-- @include: ./slots/footers.md#shared|PriceClass:isFree -->

---

### PriceClass:isItemOnly()

<!-- @include: ./slots/headers.md#shared|PriceClass:isItemOnly -->

Returns true when the [PriceClass](#priceclass-methods) contains only item costs. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:isItemOnly -->

#### Syntax

```lua
PriceClass:isItemOnly()
```

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#shared|PriceClass:isItemOnly -->

<!-- @include: ./slots/footers.md#shared|PriceClass:isItemOnly -->

---

### PriceClass:removeCurrency()

<!-- @include: ./slots/headers.md#shared|PriceClass:removeCurrency -->

Removes a currency cost from the current [PriceClass](#priceclass-methods). <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:removeCurrency -->

#### Syntax

```lua
PriceClass:removeCurrency(key)
```

#### Parameters

`key` : _"money"|"gold"|"rol"_
> Currency cost key to remove
>

#### Return Value

Type : _[PriceClass](#priceclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceClass:removeCurrency -->

<!-- @include: ./slots/footers.md#shared|PriceClass:removeCurrency -->

---

### PriceClass:removeItem()

<!-- @include: ./slots/headers.md#shared|PriceClass:removeItem -->

Removes an ItemCost from the current [PriceClass](#priceclass-methods). <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:removeItem -->

#### Syntax

```lua
PriceClass:removeItem(item, keep)
```

#### Parameters

`item` : _string_
> Item name
>

`keep` : _boolean_
> Item keep flag - `false`: consumed cost, `true`: required but kept
>

#### Return Value

Type : _[PriceClass](#priceclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceClass:removeItem -->

<!-- @include: ./slots/footers.md#shared|PriceClass:removeItem -->


## PriceGroupClass Methods

### PriceGroupClass:clear()

<!-- @include: ./slots/headers.md#shared|PriceGroupClass:clear -->

Removes every price from the group. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceGroupClass:clear -->

#### Syntax

```lua
PriceGroupClass:clear()
```

#### Return Value

Type : _[PriceGroupClass](#pricegroupclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceGroupClass:clear -->

<!-- @include: ./slots/footers.md#shared|PriceGroupClass:clear -->

---

### PriceGroupClass:compact()

<!-- @include: ./slots/headers.md#shared|PriceGroupClass:compact -->

Compacts an "and" [PriceGroupClass](#pricegroupclass-methods) into a new [PriceClass](#priceclass-methods). <br>

<!-- @include: ./slots/descriptions.md#shared|PriceGroupClass:compact -->

#### Syntax

```lua
PriceGroupClass:compact()
```

#### Return Value

Type : _[PriceClass](#priceclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceGroupClass:compact -->

<!-- @include: ./slots/footers.md#shared|PriceGroupClass:compact -->

---

### PriceGroupClass:copy()

<!-- @include: ./slots/headers.md#shared|PriceGroupClass:copy -->

Creates a new independent copy of the current [PriceGroupClass](#pricegroupclass-methods). <br>

<!-- @include: ./slots/descriptions.md#shared|PriceGroupClass:copy -->

#### Syntax

```lua
PriceGroupClass:copy()
```

#### Return Value

Type : _[PriceGroupClass](#pricegroupclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceGroupClass:copy -->

<!-- @include: ./slots/footers.md#shared|PriceGroupClass:copy -->

---

### PriceGroupClass:count()

<!-- @include: ./slots/headers.md#shared|PriceGroupClass:count -->

Returns the number of prices in the group. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceGroupClass:count -->

#### Syntax

```lua
PriceGroupClass:count()
```

#### Return Value

Type : _number_


<!-- @include: ./slots/examples.md#shared|PriceGroupClass:count -->

<!-- @include: ./slots/footers.md#shared|PriceGroupClass:count -->

---

### PriceGroupClass:get()

<!-- @include: ./slots/headers.md#shared|PriceGroupClass:get -->

Returns a [PriceClass](#priceclass-methods) by index. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceGroupClass:get -->

#### Syntax

```lua
PriceGroupClass:get(index)
```

#### Parameters

`index` : _number_
> Price index
>

#### Return Value

Type : _[PriceClass](#priceclass-methods)|nil_


<!-- @include: ./slots/examples.md#shared|PriceGroupClass:get -->

<!-- @include: ./slots/footers.md#shared|PriceGroupClass:get -->

---

### PriceGroupClass:insert()

<!-- @include: ./slots/headers.md#shared|PriceGroupClass:insert -->

Inserts a [PriceClass](#priceclass-methods) into the group. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceGroupClass:insert -->

#### Syntax

```lua
PriceGroupClass:insert(price, index)
```

#### Parameters

`price` : _PriceInput_
> Price input to insert
>

`index` : _number_ <BadgeOptional />
> Insertion index <br> default: append at the end
>

#### Return Value

Type : _[PriceGroupClass](#pricegroupclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceGroupClass:insert -->

<!-- @include: ./slots/footers.md#shared|PriceGroupClass:insert -->

---

### PriceGroupClass:isEmpty()

<!-- @include: ./slots/headers.md#shared|PriceGroupClass:isEmpty -->

Returns true when the group contains no prices. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceGroupClass:isEmpty -->

#### Syntax

```lua
PriceGroupClass:isEmpty()
```

#### Return Value

Type : _boolean_


<!-- @include: ./slots/examples.md#shared|PriceGroupClass:isEmpty -->

<!-- @include: ./slots/footers.md#shared|PriceGroupClass:isEmpty -->

---

### PriceGroupClass:remove()

<!-- @include: ./slots/headers.md#shared|PriceGroupClass:remove -->

Removes a [PriceClass](#priceclass-methods) from the group by index. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceGroupClass:remove -->

#### Syntax

```lua
PriceGroupClass:remove(index)
```

#### Parameters

`index` : _number_
> Price index to remove
>

#### Return Value

Type : _[PriceClass](#priceclass-methods)|nil_


<!-- @include: ./slots/examples.md#shared|PriceGroupClass:remove -->

<!-- @include: ./slots/footers.md#shared|PriceGroupClass:remove -->

---

### PriceGroupClass:set()

<!-- @include: ./slots/headers.md#shared|PriceGroupClass:set -->

Replaces an existing [PriceClass](#priceclass-methods) by index. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceGroupClass:set -->

#### Syntax

```lua
PriceGroupClass:set(index, price)
```

#### Parameters

`index` : _number_
> Existing price index to replace
>

`price` : _PriceInput_
> Replacement price input
>

#### Return Value

Type : _[PriceGroupClass](#pricegroupclass-methods)_


<!-- @include: ./slots/examples.md#shared|PriceGroupClass:set -->

<!-- @include: ./slots/footers.md#shared|PriceGroupClass:set -->

