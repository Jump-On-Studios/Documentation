<!-- #region client|jo.notif.left -->
#### Example
```lua
local title = "Title"
local text = "The text"
local dict = "hud_textures"
local icon = "check"
local color = "COLOR_GREEN"
local duration = 5000
jo.notif.left(title, text, dict, icon, color, duration)

```
<!-- #endregion client|jo.notif.left -->


<!-- #region client|jo.notif.right -->
#### Example
```lua
local text = "Success notification"
local dict = "hud_textures"
local icon = "check"
local color = "COLOR_GREEN"
local duration = 5000
jo.notif.right(text, dict, icon, color, duration)

```
<!-- #endregion client|jo.notif.right -->


<!-- #region client|jo.notif.rightError -->
#### Example
```lua
return jo.notif.rightError("Error !")

```
<!-- #endregion client|jo.notif.rightError -->


<!-- #region client|jo.notif.rightSuccess -->
#### Example
```lua
return jo.notif.rightSuccess("Success notification")

```
<!-- #endregion client|jo.notif.rightSuccess -->


<!-- #region client|jo.notif.simpleTop -->
#### Example
```lua
local title = "Mission Started"
local subtitle = "You just start a great mission !"
local duration = 5000
jo.notif.simpleTop(title, subtitle, duration)

```
<!-- #endregion client|jo.notif.simpleTop -->







<!-- #region server|jo.notif.left -->
#### Example
```lua
local source = 1
local title = "Title"
local text = "The text"
local dict = "hud_textures"
local icon = "check"
local color = "COLOR_GREEN"
local duration = 5000
jo.notif.left(source, title, text, dict, icon, color, duration)

```
<!-- #endregion server|jo.notif.left -->


<!-- #region server|jo.notif.print -->
#### Example
```lua
local source = 1
local data = {
    foo = "bar",
    bar = "foo"
}
jo.notif.print(source, json.encode(data))

```
<!-- #endregion server|jo.notif.print -->

<!-- #region server|jo.notif.right -->
#### Example
```lua
local source = 1
local text = "Success notification"
local dict = "hud_textures"
local icon = "check"
local color = "COLOR_GREEN"
local duration = 5000
jo.notif.right(source, text, dict, icon, color, duration)

```
<!-- #endregion server|jo.notif.right -->


<!-- #region server|jo.notif.rightError -->
#### Example
```lua
local source = 1
jo.notif.rightError(source, "Error !")

```
<!-- #endregion server|jo.notif.rightError -->


<!-- #region server|jo.notif.rightSuccess -->
#### Example
```lua
local source = 1
jo.notif.rightSuccess(source, "Success notification")

```
<!-- #endregion server|jo.notif.rightSuccess -->


<!-- #region server|jo.notif.simpleTop -->
#### Example
```lua
local title = "Mission Started"
local subtitle = "You just start a great mission !"
local duration = 5000
local source = 1
jo.notif.simpleTop(source, title, subtitle, duration)

```
<!-- #endregion server|jo.notif.simpleTop -->