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

### Price with item and money
```lua
local price = { { item = "horse_license", keep = true }, money = 10 }
```

### Multiple payment options (OR)
The player chooses **one** of the listed payment options.
```lua
-- Example: Player can pay with either (1 apple + $10) OR (152 gold)
local price = {
    operator = "or",
    { { item = "apple", quantity = 1, keep = true }, money = 10 },
    { gold = 152 }
}
```