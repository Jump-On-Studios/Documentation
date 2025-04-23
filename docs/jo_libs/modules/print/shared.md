---
outline: 2
---
# Print

Print module is a list of functions to print messages. This module is included by default in the jo_libs loader.

## bprint()
Print a blue message
### Syntax
```lua
bprint(text)

```
#### Parameters
`text` : *string*
> Your message
  
### Example
```lua
bprint('This is a blue message')

```

## dprint()
Print a debug message, only if `jo.debug == true`
### Syntax
```lua
dprint(text)

```
#### Parameters
`text` : *string*
> Your message
  
### Example
```lua
dprint('This is a debug message')

```

## eprint()
Print a red message
### Syntax
```lua
eprint(text)

```
#### Parameters
`text` : *string*
> Your message
  
### Example
```lua
eprint('This is a red message')

```

## gprint()
Print a green message
### Syntax
```lua
gprint(text)

```
#### Parameters
`text` : *string*
> Your message
  
### Example
```lua
gprint('This is a green message')

```

## log()
Print all kind of variable
### Syntax
```lua
print(...)
```
#### Parameters
`...` : *any*
> variable to print
  
### Example
```lua
local value = { data = "test" }
local value2 = "My second text"
log("MyValue",value, value2)
```

## oprint()
Print an orange message
### Syntax
```lua
oprint(text)

```
#### Parameters
`text` : *string*
> Your message
  
### Example
```lua
oprint('This is an orange message')

```

## sprint()
Print a red message
### Syntax
```lua
sprint(text)

```
#### Parameters
`text` : *string*
> Your message
  
### Example
```lua
sprint('This is a red message')

```
