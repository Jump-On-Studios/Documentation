# Price Generator

Use this tool to generate price tables for our scripts.  
Copy the generated Lua code and paste it into your `config` file as the value of the appropriate variable.

<PriceGenerator />

## Price syntax reference

### Simple price for dollars (number only)
```lua
local price = 5
```

### Combined price with money and gold
```lua
local price = { money = 2.75, gold = 2 }
```

### Price with rol
```lua
local price = { rol = 3 }
```

### Price with item and money
```lua
local price = { { item = "horse_license", keep = true }, money = 10 }
```

### Price with item quantity
```lua
local price = { { item = "apple", quantity = 3 } }
```

### Price with multiple items
```lua
local price = {
    { item = "apple", quantity = 2 },
    { item = "water", quantity = 1 }
}
```

### Price with required item kept after payment
```lua
local price = { { item = "permit", keep = true } }
```

### Multiple payment options
The player chooses **one** of the listed payment options.
```lua
-- Example: Player can pay with either (1 apple + $10) OR (152 gold)
local price = {
    { { item = "apple", keep = true }, money = 10 },
    { gold = 152 }
}
```