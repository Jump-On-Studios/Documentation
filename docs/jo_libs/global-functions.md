---
outline: [2,3]
---
# Global Functions

Some functions are automatically added when you use jo_libs in your script.


## jo.async
A namespace that provides async/promise-based versions of **any function**, global or from `jo.*` modules.  
All functions accessed through `jo.async` are automatically wrapped to run in a separate thread and return a promise.

### Features
- Lazy loading: Functions are wrapped only when accessed
- Multi-return support: Handles functions that return multiple values
- Chainable promises: Use `:next()` to chain async operations
- Parallel execution: Start multiple async operations and await them later

### Syntax
```lua
jo.async.moduleName.functionName(...)
jo.async.globalFunction(...)
```

### Examples

**Basic usage with .next():**
```lua
jo.async.screen.fadeOut():next(function()
  print('Screen faded out!')
end)
```

**Multi-return values:**
```lua
-- If myFunction() returns multiple values: a, b, c
jo.async.myModule.myFunction():next(function(a, b, c)
  print(a, b, c)  -- All values are automatically unpacked
end)
```

**Using with :await() (recommended):**
```lua
local a, b, c = jo.async.myFunction():await()
```

**Or with Citizen.Await:**
```lua
local results = Citizen.Await(jo.async.myFunction())
local a, b, c = table.unpack(results)
```

**Parallel execution:**
```lua
-- Launch multiple async operations
local promise1 = jo.async.func1()
local promise2 = jo.async.func2()
local promise3 = jo.async.func3()

-- Do other work while they execute in parallel

-- Await results when needed
local result1 = promise1:await()
local result2 = promise2:await()
local result3 = promise3:await()
```

**Error handling:**
```lua
jo.async.myFunction():next(
  function(result)
    print('Success:', result)
  end,
  function(error)
    print('Error:', error)
  end
)
```


## jo.ready()
A function fired when all modules are loaded
### Syntax
```lua
jo.ready(cb)

```
### Parameters
`cb` : *function*
> The function to execute


### Example
```lua
jo.ready(function()
  print('All modules are loaded')
end)

```

## jo.stopped()
A function fired when the script is stopped
### Syntax
```lua
jo.stopped(cb)

```
### Parameters
`cb` : *function*
> The function to execute

### Example
```lua
jo.stopped(function()
  print(GetCurrentResourceName() .. ' has been stopped')
end)

```
## jo.onResourceStart()
A function fired when a resource is fully started
### Syntax
```lua
jo.onResourceStart(resourceName, cb)

```
### Parameters
`resourceName` : *string*
> The name of the resource to listen for

`cb` : *function*
> The function to execute

### Example
```lua
jo.onResourceStart('myResource', function()
  print('myResource has been started')
end)

```
