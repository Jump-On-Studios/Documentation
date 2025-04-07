
## Other Functions

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
table.copy(orig)
```

#### Parameters

`orig` : _table_

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
table.count(_table)
```

#### Parameters

`_table` : _table_

> The table to count elements in
>


#### Return Value

Type : _integer_

> The number of values inside the table

<!-- @include: ./slots/examples.md#shared|table.count -->

<!-- @include: ./slots/footers.md#shared|table.count -->

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
table.isEmpty(_table)
```

#### Parameters

`_table` : _table_

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

