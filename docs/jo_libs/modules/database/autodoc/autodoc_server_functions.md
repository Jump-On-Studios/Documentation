
## JO Functions

### jo.database.addColumn()

<!-- @include: ./slots/headers.md#server|jo.database.addColumn -->

A function to create a column in a specific table if not exist <br>

<!-- @include: ./slots/descriptions.md#server|jo.database.addColumn -->

#### Syntax

```lua
jo.database.addColumn(tableName, name, definition)
```

#### Parameters

`tableName` : _string_
> The name of the table
>

`name` : _string_
> The name of the column
>

`definition` : _string_
> The definition of the column
>

#### Return Value

Type : _boolean_

> Return `true` if the column is created, `false` otherwise

<!-- @include: ./slots/examples.md#server|jo.database.addColumn -->

<!-- @include: ./slots/footers.md#server|jo.database.addColumn -->

---

### jo.database.addTable()

<!-- @include: ./slots/headers.md#server|jo.database.addTable -->

A function to create a table if not exist <br>

<!-- @include: ./slots/descriptions.md#server|jo.database.addTable -->

#### Syntax

```lua
jo.database.addTable(tableName, definition)
```

#### Parameters

`tableName` : _string_
> The name of the table
>

`definition` : _string_
> The definition of the table
>

#### Return Value

Type : _boolean_

> Return `true` if the table is created, `false` otherwise

<!-- @include: ./slots/examples.md#server|jo.database.addTable -->

<!-- @include: ./slots/footers.md#server|jo.database.addTable -->

---

### jo.database.addTrigger()

<!-- @include: ./slots/headers.md#server|jo.database.addTrigger -->

A function to create a trigger if not exist <br>

<!-- @include: ./slots/descriptions.md#server|jo.database.addTrigger -->

#### Syntax

```lua
jo.database.addTrigger(triggerName, definition)
```

#### Parameters

`triggerName` : _string_
> The name of the trigger
>

`definition` : _string_
> The definition of the trigger
>

#### Return Value

Type : _boolean_

> Return `true` if the trigger is created, `false` otherwise

<!-- @include: ./slots/examples.md#server|jo.database.addTrigger -->

<!-- @include: ./slots/footers.md#server|jo.database.addTrigger -->

---

### jo.database.doesTableExist()

<!-- @include: ./slots/headers.md#server|jo.database.doesTableExist -->

A function to check if a table exists <br>

<!-- @include: ./slots/descriptions.md#server|jo.database.doesTableExist -->

#### Syntax

```lua
jo.database.doesTableExist(tableName)
```

#### Parameters

`tableName` : _string_
> The name of the table
>

#### Return Value

Type : _boolean_

> Return `true` if the table exists, `false` otherwise

<!-- @include: ./slots/examples.md#server|jo.database.doesTableExist -->

<!-- @include: ./slots/footers.md#server|jo.database.doesTableExist -->

