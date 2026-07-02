# Price Generator

Use this tool to generate price tables for our scripts.  
Copy the generated Lua code and paste it into your `config` file as the value of the appropriate variable.

<PriceGenerator />

## Price syntax reference

Each entry is a payment option. Inside one option, all listed costs are paid together.

### Simple price for dollars
```lua
-- Example: Player pays $5
local price = 5
```

### Money and gold together
```lua
-- Example: Player pays $2.75 and 2 gold
local price = {
    { money = 2.75, gold = 2 }
}
```

### Rol
```lua
-- Example: Player pays 3 rol
local price = { rol = 3 }
```

### Item only
```lua
-- Example: Player pays with 1 water
local price = { item = "water" }
```

### Item with quantity
```lua
-- Example: Player pays with 3 apples
local price = { item = "apple", quantity = 3 }
```

### Item kept after payment
```lua
-- Example: Player needs a permit and keeps it after payment
local price = { item = "permit", keep = true }
```

### Item and money together
```lua
-- Example: Player pays $10 and 1 water
local price = {
    { item = "water", money = 10 }
}
```

### Item with quantity and money
```lua
-- Example: Player pays $10 and 2 apples
local price = {
    { { item = "apple", quantity = 2 }, money = 10 }
}
```

### Multiple items in one option
```lua
-- Example: Player pays 2 apples and 1 water
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

```lua
-- Example: Player can pay with either ($10 + 2 apples) OR 152 gold
local price = {
    { { item = "apple", quantity = 2 }, money = 10 },
    { gold = 152 }
}
```