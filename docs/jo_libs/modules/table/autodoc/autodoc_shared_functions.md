
## Table Functions

### table.addMultiLevels()

<!-- @include: ./slots/headers.md#shared|table.addMultiLevels -->

A function to add a multiples table levels inside a variable if it not exists <br>

<!-- @include: ./slots/descriptions.md#shared|table.addMultiLevels -->

#### Syntax

```lua
table.addMultiLevels(...)
```

#### Parameters

`...` : _table|string_
> if the 1st argument is a table, keys will be injected in it. Else, a new table will be created
>

#### Return Value

Type : _table_

> The new table with multiples table levels

<!-- @include: ./slots/examples.md#shared|table.addMultiLevels -->

<!-- @include: ./slots/footers.md#shared|table.addMultiLevels -->

---

### table.clearForNui()

<!-- @include: ./slots/headers.md#shared|table.clearForNui -->

Returns a copy of the table with all function values removed. <br>

<!-- @include: ./slots/descriptions.md#shared|table.clearForNui -->

#### Syntax

```lua
table.clearForNui(t)
```

#### Parameters

`t` : _table_

> The table to clean
>


#### Return Value

Type : _table_

> The table without function values

<!-- @include: ./slots/examples.md#shared|table.clearForNui -->

<!-- @include: ./slots/footers.md#shared|table.clearForNui -->

---

### table.copy()

<!-- @include: ./slots/headers.md#shared|table.copy -->

Deep copies a table. Unlike "=", it doesn't keep the link between both tables. <br>

<!-- @include: ./slots/descriptions.md#shared|table.copy -->

#### Syntax

```lua
table.copy(t)
```

#### Parameters

`t` : _table_

> The table you want to copy
>


#### Return Value

Type : _table_

> The copy of the table

<!-- @include: ./slots/examples.md#shared|table.copy -->

<!-- @include: ./slots/footers.md#shared|table.copy -->

---

### table.count()

<!-- @include: ./slots/headers.md#shared|table.count -->

Counts the number of values inside a table. <br>

<!-- @include: ./slots/descriptions.md#shared|table.count -->

#### Syntax

```lua
table.count(t)
```

#### Parameters

`t` : _table_

> The table to count elements in
>


#### Return Value

Type : _integer_

> The number of values inside the table

<!-- @include: ./slots/examples.md#shared|table.count -->

<!-- @include: ./slots/footers.md#shared|table.count -->

---

### table.deleteAndClear()

<!-- @include: ./slots/headers.md#shared|table.deleteAndClear -->

A function to delete a deep value in a table and clear the table if it's empty <br>

<!-- @include: ./slots/descriptions.md#shared|table.deleteAndClear -->

#### Syntax

```lua
table.deleteAndClear(t, keys)
```

#### Parameters

`t` : _table_

> The table
>


`keys` : _any_
> The keys to deep
>

#### Return Value

Type : _boolean_

> Returns `true` if the value was deleted

<!-- @include: ./slots/examples.md#shared|table.deleteAndClear -->

<!-- @include: ./slots/footers.md#shared|table.deleteAndClear -->

---

### table.deleteDeepValue()

<!-- @include: ./slots/headers.md#shared|table.deleteDeepValue -->

A function to delete a deep value in a table <br>

<!-- @include: ./slots/descriptions.md#shared|table.deleteDeepValue -->

#### Syntax

```lua
table.deleteDeepValue(t, keys)
```

#### Parameters

`t` : _table_

> The table
>


`keys` : _any_
> The keys to deep
>

#### Return Value

Type : _table,_


<!-- @include: ./slots/examples.md#shared|table.deleteDeepValue -->

<!-- @include: ./slots/footers.md#shared|table.deleteDeepValue -->

---

### table.doesKeyExist()

<!-- @include: ./slots/headers.md#shared|table.doesKeyExist -->

A function to know if a deep key exists in a table <br>

<!-- @include: ./slots/descriptions.md#shared|table.doesKeyExist -->

#### Syntax

```lua
table.doesKeyExist(t, ...)
```

#### Parameters

`t` : _table_

> The table to check
>


`...` : _string_
> The list of keys to deep
>

#### Return Value

Type : _boolean,_


<!-- @include: ./slots/examples.md#shared|table.doesKeyExist -->

<!-- @include: ./slots/footers.md#shared|table.doesKeyExist -->

---

### table.extract()

<!-- @include: ./slots/headers.md#shared|table.extract -->

Extracts a value from a table by key and removes that key from the table. <br>

<!-- @include: ./slots/descriptions.md#shared|table.extract -->

#### Syntax

```lua
table.extract(t, key)
```

#### Parameters

`t` : _table_

> The table to extract from
>


`key` : _any_
> The key to extract
>

#### Return Value

Type : _any_

> The extracted value

<!-- @include: ./slots/examples.md#shared|table.extract -->

<!-- @include: ./slots/footers.md#shared|table.extract -->

---

### table.filter()

<!-- @include: ./slots/headers.md#shared|table.filter -->

Filters a table based on a callback function. <br>

<!-- @include: ./slots/descriptions.md#shared|table.filter -->

#### Syntax

```lua
table.filter(t, filterIter, keepKeyAssociation)
```

#### Parameters

`t` : _table_

> The table to filter
>


`filterIter` : _function_
> A function to execute for each element in the table. Should return `true` to keep the element. Called with (element, key, originalTable)
>

`keepKeyAssociation` : _boolean_ <BadgeOptional />
> Keep the original table keys instead of creating a sequential table <br> default:`false`
>

#### Return Value

Type : _table_

> The filtered table

<!-- @include: ./slots/examples.md#shared|table.filter -->

<!-- @include: ./slots/footers.md#shared|table.filter -->

---

### table.find()

<!-- @include: ./slots/headers.md#shared|table.find -->

Returns the first element in the table that satisfies the provided function. <br>

<!-- @include: ./slots/descriptions.md#shared|table.find -->

#### Syntax

```lua
table.find(t, func)
```

#### Parameters

`t` : _table_

> The table to search in
>


`func` : _function_
> A function to test each element. Should return `true` when found. Called with (element, key, originalTable)
>

#### Return Value

Type : _any,any_

> The found value or `false` if not found , The key of the found value

<!-- @include: ./slots/examples.md#shared|table.find -->

<!-- @include: ./slots/footers.md#shared|table.find -->

---

### table.getDeep()

<!-- @include: ./slots/headers.md#shared|table.getDeep -->

<!-- @include: ./slots/descriptions.md#shared|table.getDeep -->

#### Syntax

```lua
table.getDeep(t, keys)
```

<!-- @include: ./slots/examples.md#shared|table.getDeep -->

<!-- @include: ./slots/footers.md#shared|table.getDeep -->

---

### table.includes()

<!-- @include: ./slots/headers.md#shared|table.includes -->

A function to search a value inside an array <br>

<!-- @include: ./slots/descriptions.md#shared|table.includes -->

#### Syntax

```lua
table.includes(t, value, fromIndex)
```

#### Parameters

`t` : _table_

> The table
>


`value` : _any_
> The value to search
>

`fromIndex` : _integer_ <BadgeOptional />
> index at which to start searching <br> default: `1`
>

#### Return Value

Type : _integer_

> Returns the index of the found value or 0 if missing

<!-- @include: ./slots/examples.md#shared|table.includes -->

<!-- @include: ./slots/footers.md#shared|table.includes -->

---

### table.isEgal()

<!-- @include: ./slots/headers.md#shared|table.isEgal -->

Compares two tables for equality. <br>

<!-- @include: ./slots/descriptions.md#shared|table.isEgal -->

#### Syntax

```lua
table.isEgal(table1, table2, strict, canMissInTable1, canMissInTable2)
```

#### Parameters

`table1` : _table_

> First table to compare
>


`table2` : _table_

> Second table to compare
>


`strict` : _boolean_ <BadgeOptional />
> If all keys should be in both tables <br> default:`true`
>

`canMissInTable1` : _boolean_ <BadgeOptional />
> If table2 keys can miss in table1 <br> default:`false`
>

`canMissInTable2` : _boolean_ <BadgeOptional />
> If table1 keys can miss in table2 <br> default:`false`
>

#### Return Value

Type : _boolean_

> Returns `true` if tables are equal according to specified parameters

<!-- @include: ./slots/examples.md#shared|table.isEgal -->

<!-- @include: ./slots/footers.md#shared|table.isEgal -->

---

### table.isEmpty()

<!-- @include: ./slots/headers.md#shared|table.isEmpty -->

Checks if a table is empty. <br>

<!-- @include: ./slots/descriptions.md#shared|table.isEmpty -->

#### Syntax

```lua
table.isEmpty(t)
```

#### Parameters

`t` : _table_

> The table to check
>


#### Return Value

Type : _boolean_

> Returns true if the table is empty

<!-- @include: ./slots/examples.md#shared|table.isEmpty -->

<!-- @include: ./slots/footers.md#shared|table.isEmpty -->

---

### table.map()

<!-- @include: ./slots/headers.md#shared|table.map -->

Creates a new table populated with the results of calling a function on every element. <br>

<!-- @include: ./slots/descriptions.md#shared|table.map -->

#### Syntax

```lua
table.map(t, func)
```

#### Parameters

`t` : _table_

> The table to map
>


`func` : _function_
> A function to transform each element. Called with (element, key, originalTable)
>

#### Return Value

Type : _table_

> The new mapped table

<!-- @include: ./slots/examples.md#shared|table.map -->

<!-- @include: ./slots/footers.md#shared|table.map -->

---

### table.merge()

<!-- @include: ./slots/headers.md#shared|table.merge -->

Merges two tables together. <br>

<!-- @include: ./slots/descriptions.md#shared|table.merge -->

#### Syntax

```lua
table.merge(t1, t2)
```

#### Parameters

`t1` : _table_

> The main table
>


`t2` : _table_

> The table to merge
>


#### Return Value

Type : _table_

> The merged table. If the same key exists in both tables, only the value of t2 is kept

<!-- @include: ./slots/examples.md#shared|table.merge -->

<!-- @include: ./slots/footers.md#shared|table.merge -->

---

### table.mergeAfter()

<!-- @include: ./slots/headers.md#shared|table.mergeAfter -->

Merges the values of the second table sequentially into the first table. <br>

<!-- @include: ./slots/descriptions.md#shared|table.mergeAfter -->

#### Syntax

```lua
table.mergeAfter(t1, t2)
```

#### Parameters

`t1` : _table_

> The target table to merge into
>


`t2` : _table_

> The table whose values will be appended
>


#### Return Value

Type : _table_

> The merged table with values from t2 added at the end of t1

<!-- @include: ./slots/examples.md#shared|table.mergeAfter -->

<!-- @include: ./slots/footers.md#shared|table.mergeAfter -->

---

### table.slice()

<!-- @include: ./slots/headers.md#shared|table.slice -->

Get a part of table with stard and end index <br>

<!-- @include: ./slots/descriptions.md#shared|table.slice -->

#### Syntax

```lua
table.slice(t, s, e)
```

#### Parameters

`t` : _table_

> The table to get from
>


`s` : _integer_ <BadgeOptional />
> The start intex <br> default:`1`
>

`e` : _integer_ <BadgeOptional />
> The end index <br> default:`s`
>

#### Return Value

Type : _table_

> The extracted table

<!-- @include: ./slots/examples.md#shared|table.slice -->

<!-- @include: ./slots/footers.md#shared|table.slice -->

---

### table.upsert()

<!-- @include: ./slots/headers.md#shared|table.upsert -->

A function to set/update a value in a table with multiple levels <br>

<!-- @include: ./slots/descriptions.md#shared|table.upsert -->

#### Syntax

```lua
table.upsert(...)
```

#### Parameters

`...` : _table|string_
> if the 1st argument is a table, keys will be injected in it. Else, a new table will be created. The last argument is the value to set
>

#### Return Value

Type : _table_

> The new table with multiples table levels

<!-- @include: ./slots/examples.md#shared|table.upsert -->

<!-- @include: ./slots/footers.md#shared|table.upsert -->

