<!-- #region client|jo.player.forceUpdate -->

#### Example
```lua
print(jo.pl.coords)
jo.pl.forceUpdate()
print(jo.pl.coords)

```
<!-- #endregion client|jo.player.forceUpdate -->


<!-- #region client|jo.player.move -->
#### Example
```lua
jo.player.move(function()
  print('MOVE !')
end, 1000)
-- OR --
jo.pl.move(function()
  print('MOVE !')
end, 1000)
```
<!-- #endregion client|jo.player.move -->


<!-- #region g_client|jo.player.forceUpdate -->

#### Example
```lua
print(jo.pl.coords)
jo.pl.forceUpdate()
print(jo.pl.coords)

```
<!-- #endregion g_client|jo.player.forceUpdate -->

<!-- #region client|jo.player.didMoveSinceLastCall -->
#### Example
```lua
local move = jo.player.didMoveSinceLastCall('moveId')
print(move)
Wait(2000)
move = jo.player.didMoveSinceLastCall('moveId')
print(move)
```
<!-- #endregion client|jo.player.didMoveSinceLastCall -->