<!-- #region server|jo.database.addColumn -->
#### Example
```lua
local isColumnAdded = jo.addColumn('table_name', 'column_name', 'INT NOT NULL DEFAULT "0" AFTER TABLE table_name')

```
<!-- #endregion server|jo.database.addColumn -->


<!-- #region server|jo.database.addTable -->
#### Example
```lua
local isTableCreated = jo.database.addTable(
  'your_table_name',
  [[id INT NOT NULL AUTO_INCREMENT,
  first_column VARCHAR(50) NOT NULL DEFAULT '',
  second_column VARCHAR(50) NOT NULL DEFAULT '',]]
)

```
<!-- #endregion server|jo.database.addTable -->


<!-- #region server|jo.database.addTrigger -->
#### Example
```lua
local isTriggerCreated = jo.addTriggerDB(
  'the_name_of_the_trigger',
  "AFTER DELETE ON `table` FOR EACH ROW UPDATE `table2` SET column = 0 WHERE equiped_on = OLD.id"
)

```
<!-- #endregion server|jo.database.addTrigger -->

