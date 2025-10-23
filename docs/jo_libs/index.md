---
outline: [2,3]
---
# Jo Libraries

A standalone libraries for providing reusable code to increase the compatibility between scrips.

<div class="flex-buttons">
<a class="box-button" href="https://github.com/Jump-On-Studios/RedM-jo_libs" target="_blank"><i class="pi pi-github" />Github</a>
<a class="box-button" href="https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip" target="_blank"><i class="pi pi-download" />Download</a>
</div>

## Installation

1. Download the [last release](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip) of the library
2. Add the resource `jo_libs` in your resources folder
3. Add `ensure jo_libs` in your server.cfg

## Usage

1. To use libraries, just add the initiator as a shared script inside of your `fxmanifest.lua` file.
```lua
shared_scripts {
  '@jo_libs/init.lua'
}

```
2. List modules you want use inside the `fxmanifest.lua` (in lowercase)
```lua
jo_libs {
  'print',
  'table',
}

```
You can now use the libraries inside of your resource with the `jo` global variable.

## Update

Since **jo\_libs** is file-based, keeping old or deprecated files in your folder can cause issues. To update it correctly, follow these steps:

1. Download the [latest release](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip) of the library.
2. **Delete** your existing `jo_libs` folder from your `resources` directory.
3. Extract the contents of `jo_libs.zip`.
4. Place the new `jo_libs` folder into your `resources` directory.
5. Clear your server cache.
6. Restart your server.

:::danger
**Don't drag and drop** the update over the old `jo_libs` folder!
:::

## Functions
Some functions are automatically added when you use jo_libs in your script.

### jo.ready()
A function fired when all modules are loaded
#### Syntax
```lua
jo.ready(cb)

```
#### Parameters
`cb` : *function*
> The function to execute
  

#### Example
```lua
jo.ready(function()
  print('All modules are loaded')
end)

```

### jo.stopped()
A function fired when the script is stopped
#### Syntax
```lua
jo.stopped(cb)

```
#### Parameters
`cb` : *function*
> The function to execute

#### Example
```lua
jo.stopped(function()
  print(GetCurrentResourceName() .. ' has been stopped')
end)

```

### jo.async
A namespace that provides async/promise-based versions of any function from `jo.*` modules or global functions.
All functions accessed through `jo.async` are automatically wrapped to run in a separate thread and return a promise.

#### Features
- Lazy loading: Functions are wrapped only when accessed
- Multi-return support: Handles functions that return multiple values
- Chainable promises: Use `:next()` to chain async operations
- Parallel execution: Start multiple async operations and await them later

#### Syntax
```lua
jo.async.moduleName.functionName(...)
jo.async.globalFunction(...)
```

#### Examples

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
local result1 = Citizen.Await(promise1)
local result2 = Citizen.Await(promise2)
local result3 = Citizen.Await(promise3)
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