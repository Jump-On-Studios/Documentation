
## JO Functions

### jo.pricing.formatPrice()

<!-- @include: ./slots/headers.md#shared|jo.pricing.formatPrice -->

A function to format a single price <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.formatPrice -->

#### Syntax

```lua
jo.pricing.formatPrice(price)
```

#### Parameters

`price` : _table|integer|number_
> The price to format
>

#### Return Value

Type : _Price_

> The formatted price

<!-- @include: ./slots/examples.md#shared|jo.pricing.formatPrice -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.formatPrice -->

---

### jo.pricing.formatPrices()

<!-- @include: ./slots/headers.md#shared|jo.pricing.formatPrices -->

A function to format price variations. <br>
Only a root `operator = "or"` creates alternatives; every other shape is a single AND price. <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.formatPrices -->

#### Syntax

```lua
jo.pricing.formatPrices(prices)
```

#### Parameters

`prices` : _table|integer|number_
> The prices to format
>

#### Return Value

Type : _Prices_

> The formatted prices

<!-- @include: ./slots/examples.md#shared|jo.pricing.formatPrices -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.formatPrices -->

---

### jo.pricing.isPriceFree()

<!-- @include: ./slots/headers.md#shared|jo.pricing.isPriceFree -->

Checks if a price is free <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.isPriceFree -->

#### Syntax

```lua
jo.pricing.isPriceFree(price)
```

#### Parameters

`price` : _table|integer|number_
> The price to check
>

#### Return Value

Type : _boolean_

> Return `true` if the price is free

<!-- @include: ./slots/examples.md#shared|jo.pricing.isPriceFree -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.isPriceFree -->

---

### jo.pricing.mergePrices()

<!-- @include: ./slots/headers.md#shared|jo.pricing.mergePrices -->

Merge prices <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.mergePrices -->

#### Syntax

```lua
jo.pricing.mergePrices(...)
```

#### Parameters

`...` : _table_

> The prices to merge
>


#### Return Value

Type : _Price_

> The merged prices

<!-- @include: ./slots/examples.md#shared|jo.pricing.mergePrices -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.mergePrices -->

---

### jo.pricing.tax()

<!-- @include: ./slots/headers.md#shared|jo.pricing.tax -->

Gets the tax price from a price and a percentage <br>

<!-- @include: ./slots/descriptions.md#shared|jo.pricing.tax -->

#### Syntax

```lua
jo.pricing.tax(price, percentage, roundUpItems)
```

#### Parameters

`price` : _table|integer|number_
> The price to tax
>

`percentage` : _number_
> The percentage to apply. Example: `0.2` returns 20% of the price
>

`roundUpItems` : _boolean_ <BadgeOptional />
> Whether item quantities should be rounded up. Defaults to `false`
>

#### Return Value

Type : _Price_

> The taxed price

<!-- @include: ./slots/examples.md#shared|jo.pricing.tax -->

<!-- @include: ./slots/footers.md#shared|jo.pricing.tax -->


## PriceClass Methods

### PriceClass:add()

<!-- @include: ./slots/headers.md#shared|PriceClass:add -->

Adds a price to the current price. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:add -->

#### Syntax

```lua
PriceClass:add(price)
```

#### Parameters

`price` : _table|integer|number_
> The price to add
>

#### Return Value

Type : _Price_

> The mutated price

<!-- @include: ./slots/examples.md#shared|PriceClass:add -->

<!-- @include: ./slots/footers.md#shared|PriceClass:add -->

---

### PriceClass:copy()

<!-- @include: ./slots/headers.md#shared|PriceClass:copy -->

Copies the price. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:copy -->

#### Syntax

```lua
PriceClass:copy()
```

#### Return Value

Type : _Price_

> The copied price

<!-- @include: ./slots/examples.md#shared|PriceClass:copy -->

<!-- @include: ./slots/footers.md#shared|PriceClass:copy -->

---

### PriceClass:isFree()

<!-- @include: ./slots/headers.md#shared|PriceClass:isFree -->

Checks if the price is free. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:isFree -->

#### Syntax

```lua
PriceClass:isFree()
```

#### Return Value

Type : _boolean_

> Return `true` if the price is free

<!-- @include: ./slots/examples.md#shared|PriceClass:isFree -->

<!-- @include: ./slots/footers.md#shared|PriceClass:isFree -->

---

### PriceClass:remove()

<!-- @include: ./slots/headers.md#shared|PriceClass:remove -->

Removes a price from the current price. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:remove -->

#### Syntax

```lua
PriceClass:remove(price)
```

#### Parameters

`price` : _table|integer|number_
> The price to remove
>

#### Return Value

Type : _Price|boolean,string?_

> The mutated price, or false and the reason

<!-- @include: ./slots/examples.md#shared|PriceClass:remove -->

<!-- @include: ./slots/footers.md#shared|PriceClass:remove -->

---

### PriceClass:tax()

<!-- @include: ./slots/headers.md#shared|PriceClass:tax -->

Applies a percentage to the current price. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:tax -->

#### Syntax

```lua
PriceClass:tax(percentage, roundUpItems)
```

#### Parameters

`percentage` : _number_
> The percentage to apply
>

`roundUpItems` : _boolean_ <BadgeOptional />
> Whether item quantities should be rounded up
>

#### Return Value

Type : _Price_

> The mutated price

<!-- @include: ./slots/examples.md#shared|PriceClass:tax -->

<!-- @include: ./slots/footers.md#shared|PriceClass:tax -->

---

### PriceClass:toTable()

<!-- @include: ./slots/headers.md#shared|PriceClass:toTable -->

Converts the price to a plain table. <br>

<!-- @include: ./slots/descriptions.md#shared|PriceClass:toTable -->

#### Syntax

```lua
PriceClass:toTable()
```

#### Return Value

Type : _table_

> The plain table

<!-- @include: ./slots/examples.md#shared|PriceClass:toTable -->

<!-- @include: ./slots/footers.md#shared|PriceClass:toTable -->


## PricesClass Methods

### PricesClass:addPrice()

<!-- @include: ./slots/headers.md#shared|PricesClass:addPrice -->

Adds a price option to the prices set. <br>

<!-- @include: ./slots/descriptions.md#shared|PricesClass:addPrice -->

#### Syntax

```lua
PricesClass:addPrice(price)
```

#### Parameters

`price` : _table|integer|number_
> The price to add
>

#### Return Value

Type : _Prices_

> The mutated prices set

<!-- @include: ./slots/examples.md#shared|PricesClass:addPrice -->

<!-- @include: ./slots/footers.md#shared|PricesClass:addPrice -->

---

### PricesClass:copy()

<!-- @include: ./slots/headers.md#shared|PricesClass:copy -->

Copies the prices set. <br>

<!-- @include: ./slots/descriptions.md#shared|PricesClass:copy -->

#### Syntax

```lua
PricesClass:copy()
```

#### Return Value

Type : _Prices_

> The copied prices set

<!-- @include: ./slots/examples.md#shared|PricesClass:copy -->

<!-- @include: ./slots/footers.md#shared|PricesClass:copy -->

---

### PricesClass:removePrice()

<!-- @include: ./slots/headers.md#shared|PricesClass:removePrice -->

Removes a price option from the prices set. <br>

<!-- @include: ./slots/descriptions.md#shared|PricesClass:removePrice -->

#### Syntax

```lua
PricesClass:removePrice(index)
```

#### Parameters

`index` : _integer_
> The price option index
>

#### Return Value

Type : _Prices_

> The mutated prices set

<!-- @include: ./slots/examples.md#shared|PricesClass:removePrice -->

<!-- @include: ./slots/footers.md#shared|PricesClass:removePrice -->

---

### PricesClass:toTable()

<!-- @include: ./slots/headers.md#shared|PricesClass:toTable -->

Converts the prices set to a plain table. <br>

<!-- @include: ./slots/descriptions.md#shared|PricesClass:toTable -->

#### Syntax

```lua
PricesClass:toTable()
```

#### Return Value

Type : _table_

> The plain table

<!-- @include: ./slots/examples.md#shared|PricesClass:toTable -->

<!-- @include: ./slots/footers.md#shared|PricesClass:toTable -->

