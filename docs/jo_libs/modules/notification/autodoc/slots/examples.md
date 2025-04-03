<!-- #region jo.notif.left -->
#### Example
```lua
local title = 'Title'
local text = 'The text'
local dict = "hud_textures"
local icon = "check"
local color = "COLOR_GREEN"
local duration = 5000
jo.notif.left(title,text, dict, icon, color,duration)
```
<!-- #endregion jo.notif.left -->


<!-- #region jo.notif.right -->
#### Example
```lua
local text = 'Success notification'
local dict = "hud_textures"
local icon = "check"
local color = "COLOR_GREEN"
local duration = 5000
jo.notif.right(text, dict, icon, color, duration)
```
<!-- #endregion jo.notif.right -->


<!-- #region jo.notif.rightError -->
#### Example
```lua
return jo.notif.rightError("Error !")
```
<!-- #endregion jo.notif.rightError -->


<!-- #region jo.notif.rightSuccess -->
#### Example
```lua
return jo.notif.rightSuccess("Success notification")
```
<!-- #endregion jo.notif.rightSuccess -->


<!-- #region jo.notif.simpleTop -->
#### Example
```lua
local title = 'Mission Started'
local subtitle = "You just start a great mission !"
local duration = 5000
jo.notif.simpleTop(title, subtitle, duration)
```
<!-- #endregion jo.notif.simpleTop -->



<!-- #region jo.notif.print -->
#### Example
```lua
local source = 1
local data = {
    foo="bar",
    bar="foo"
}
jo.notif.print(source,json.encode(data))
```
<!-- #endregion jo.notif.print -->