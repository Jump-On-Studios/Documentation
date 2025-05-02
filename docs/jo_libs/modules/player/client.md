---
outline: [2,3]
---
# Player <BadgeClient/>

A library to save in the client cache the value of PlayerPedId(), his location and other useful values.  
All values are updated only if necessary.  
Very helpfull to optimize the resource and not call natives everytime.  

Alias of the module: `jo.pl`

## JO Variables

### jo.player.coords
Returns the current player coordinates.

#### Example
```lua
print(jo.player.coords)
-- OR --
print(jo.pl.coords)
-- Expected output: vec3(x,y,z)
```

### jo.player.isMale
Returns if the current player is a male or not.

#### Example
```lua
print(jo.player.isMale)
-- OR --
print(jo.pl.isMale)
-- Expected output: same value than IsPedMale(PlayerPedId())
```

### jo.player.ped
Returns the current player ped.  
This variable has a function shortcut: `jo.player()`
#### Example
```lua
print(jo.player.ped)
-- OR --
print(jo.player())
-- OR --
print(jo.pl())
-- Expected output: same value than PlayerPedId()
```

### jo.player.playerId
Returns the current player ID.

#### Example
```lua
print(jo.player.playerId)
-- OR --
print(jo.pl.playerId)
-- Expected output: same value than PlayerId()
```

### jo.player.serverId
Returns the server ID of the player.

#### Example
```lua
print(jo.player.serverId)
-- OR --
print(jo.pl.serverId)
-- Expected output: same value than GetPlayerServerId(PlayerId())

```

<!--@include: ./autodoc/autodoc_client_functions.md-->