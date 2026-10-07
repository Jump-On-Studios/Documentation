<!-- #region client|MenuClass:addItem -->
:::tip
All the options of an item are illustrated in [Items](./items), the sliders in [Sliders](./sliders) and the statistics in [Statistics](./statistics).
:::
<!-- #endregion client|MenuClass:addItem -->


<!-- #region client|MenuClass:push -->
:::tip
See [Update a menu](./events#update-a-menu).
:::
<!-- #endregion client|MenuClass:push -->


<!-- #region client|MenuClass:sort -->
:::warning
`sort()` doesn't update the NUI: call `MenuClass:refresh()` after it, or `MenuClass:send()` if the menu has never been sent.
:::
<!-- #endregion client|MenuClass:sort -->


<!-- #region client|jo.menu.create -->
:::tip
All the options of a menu are illustrated in [Menus](./menus).
:::
<!-- #endregion client|jo.menu.create -->


<!-- #region client|jo.menu.fireEvent -->
:::tip
See [Client and server events](./events#client-and-server-events).
:::
<!-- #endregion client|jo.menu.fireEvent -->


<!-- #region client|jo.menu.show -->
:::warning
The first menu doesn't close itself with Backspace: hide it in its `onBack` callback. See [Go back](./menus#go-back).
:::
<!-- #endregion client|jo.menu.show -->


<!-- #region client|jo.menu.updateLang -->
:::tip
You can add your own keys and use them with the `translate*` options. See [Translations](./menus#translations).
:::
<!-- #endregion client|jo.menu.updateLang -->


