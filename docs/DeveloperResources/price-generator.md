# Price Generator

Use this tool to generate price tables for our scripts.  
Copy the generated Lua code and paste it into your `config` file as the value of the appropriate variable.

<PriceGenerator />

## Price syntax reference

Each entry is a payment option. Inside one option, all listed costs are paid together.

### Simple price for dollars
```lua
local price = 5
```

### Money and gold together
```lua
local price = {
    { money = 2.75, gold = 2 }
}
```

### Rol
```lua
local price = { rol = 3 }
```

### Item only
```lua
local price = { item = "water" }
```

### Item with quantity
```lua
local price = { item = "apple", quantity = 3 }
```

### Item kept after payment
```lua
local price = { item = "permit", keep = true }
```

### Item and money together
```lua
local price = {
    { item = "water", money = 10 }
}
```

### Item with quantity and money
```lua
local price = {
    { { item = "apple", quantity = 2 }, money = 10 }
}
```

### Multiple items in one option
```lua
local price = {
    {
        { item = "apple", quantity = 2 },
        { item = "water" }
    }
}
```

### Multiple payment options
The player chooses **one** option.
```lua
-- Example: Player can pay with either ($10 + 1 water) OR 152 gold
local price = {
    { item = "water", money = 10 },
    { gold = 152 }
}
```