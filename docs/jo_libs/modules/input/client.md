---
outline: [2,5]
---
# Input <BadgeClient/>

A library to manage the input box

## jo.input.loadNUI()

A function to load the NUI.

**Syntax**

```lua
jo.input.loadNUI()
```

## jo.input.native()

A function to open the native input

**Syntax**

```lua
jo.input.native(label, placeholder, maxStringLength)
```

**Parameters**

`label` : _string_
> The text above the typing field in the black square
>

`placeholder` : _string_
> An Example Text, what it should say in the typing field
>

`maxStringLength` : _integer_ <BadgeOptional />
> Maximum String length
>

**Return Value**

Type : _string_

> Return the text from the input

**Example**
```lua
local input = jo.input.native('The label: ', 'the placeholder')
print(input)

```

## jo.input.nui()

A function to open the nui input.  
Usefull to ask multiple entries to the player.

<img src="/images/previews/input/nui.webp" class="data-zoomable preview" data-zoomable/>

**Syntax**

```lua
jo.input.nui(options, cb)
```

**Parameters**

`options` : _table_

> Options of the input
>

> `options.rows` : _table_ - The list of rows content
> 

`cb` : _function_ <BadgeOptional />
> The return function. If missing, the function is synchronous
>

**Return Value**

Type : _table_

> Return the table of the input if no `cb` is provided  
> `result.action` : _string_ - The id of the button pressed  
> `result.result` : _table_ - The table of the values  

**Example**
```lua
local options = {
  rows = {
    { --1st line
      { type= "title", value= "Enter the horse's name" },
    },
    { --2nd line
      { type= "description", value= "A description for the panel" }
    },
    { --3rd line
      { type= "label", value= "Birthday=", for= "birthday" }, -- 1st column
      { type= "date", id= "birthday", placeholder= "Select a date", yearRange= {1800, 1900}, value= '', format= 'dd/MM/yyyy', required= true } -- 2nd column
    },
    { --4th line
      { type= "button", value= "Confirm", id= "confirm", }, -- 1st column
      { type= "button", class= "bg-green", value= "Delete", id= 'delete', ignoreRequired= true }, -- 2nd column
      { type= "button", id= "close", value= "X", width= 5, ignoreRequired= true } -- 3rd column
    },
  }
}
-- Open the input synchronously
local input = jo.input.nui(options)
log("Button pressed:", input?.action)
log(input)

-- Open the input asynchronously
jo.input.nui(options, function(input)
  log(input)
end)
```
Preview:
<img src="/images/previews/input/nui-input.png" class="data-zoomable preview" data-zoomable/>

### Entry types

#### Title
```lua
{
  type = "title",                   -- type of the entry
  value = "Enter the horse's name", -- text to display
  class = "",                       -- css class (optional)
  style = "",                       -- css style (optional)
},
```
---
#### Description
```lua
{
  type = "description",                   -- type of the entry
  value = "A description for the panel",  -- text to display
  class = "",                             -- css class (optional)
  style = "",                             -- css style (optional)
}
```
---
#### Inputs
<span style="margin-left: 1em; margin-top: 1em; padding-left: 1em; display: block; border-left: 1px solid #ccc">

##### • Label
```lua
{
  type = "label",       -- type of the entry
  value = "Birthday=",  -- text to display
  for = "birthday",     -- id of the input
  class = "",           -- css class (optional)
  style = "",           -- css style (optional)
}
```

##### • Text
```lua
{
  type = "text",                 -- type of the entry
  id = 'input',                  -- unique id of the input
  value = "",                   -- default value of the input
  placeholder = "A text input",  -- placeholder
  required = true,               -- if the input is required
  class = "",                    -- css class (optional)
  style = "",                    -- css style (optional)
}
```
##### • Number
```lua
{
  type = "number",                -- type of the entry
  id = 'input',                   -- unique id of the input
  value = 0,                      -- default value of the input
  min = 0,                        -- minimum value
  max = 10,                       -- maximum value
  step = 0.01,                    -- step value
  placeholder = "A number input", -- placeholder
  required = true,                -- if the input is required
  class = "",                     -- css class (optional)
  style = "",                     -- css style (optional)
}
```
##### • Date
```lua
{
  type = "date",                -- type of the entry
  id = 'input',                 -- unique id of the input
  value = "",                   -- default value of the input
  yearRange = {1800, 1900},     -- range of years
  format = 'dd/MM/yyyy',        -- format of the date
  placeholder = "A date input", -- placeholder
  required = true,              -- if the input is required
  class = "",                   -- css class (optional)
  style = "",                   -- css style (optional)
}
```
##### • Select
```lua
{
  type = "select",                          -- type of the entry
  id = 'input',                             -- unique id of the input
  value = { value= 1, label= "Option 1" },  -- default value of the input
  options = {                               -- list of options
    { value= 1, label= "Option 1" },        -- the label is the text to display
    { value= 2, label= "Option 2" },
    { value= 3, label= "Option 3" }
  },
  placeholder = "A select input",           -- placeholder
  required = true,                          -- if the input is required
  class = "",                               -- css class (optional)
  style = "",                               -- css style (optional)
}
```
</span>

#### Button
```lua
{
  type = "button",       -- type of the entry
  id = 'input',          -- unique id of the input
  value = "Confirm",     -- text to display
  class = "",            -- css class (optional)
  style = "",            -- css style (optional)
  ignoreRequired = true, -- if the button should be ignored if the required inputs are not filled
}
```
### Return
The return value is a table with the following structure:
```lua
{
  action = "action_id", -- the id of the button pressed
  result = {
    -- the values of the inputs
  }
}
```
