<!-- #region shared|jo.i18n.__ -->
#### Example
```lua
local text = jo.i18n.__("helloWorld")
-- OR --
local text = __("helloWorld")
print(text) -- "Hello World" (or translated text)
```
<!-- #endregion shared|jo.i18n.__ -->


<!-- #region shared|jo.i18n.addEntries -->
#### Example
```lua
jo.i18n.addEntries({
  "buy" = "Buy",
  "sell" = "Sell"
})
```
<!-- #endregion shared|jo.i18n.addEntries -->


<!-- #region shared|jo.i18n.addEntry -->
#### Example
```lua
jo.i18n.addEntry("buyHorse", "Buy a horse")
```
<!-- #endregion shared|jo.i18n.addEntry -->


<!-- #region shared|jo.i18n.findMissingKeys -->
#### Example
```lua
jo.i18n.findMissingKeys("es")
-- Expected output: 'Missing key '<key>' for locale '<locale>'
```
<!-- #endregion shared|jo.i18n.findMissingKeys -->


<!-- #region shared|jo.i18n.getLocale -->
#### Example
```lua
local locale = jo.i18n.getLocale()
print(locale)
-- Expected output: 'en' (or current locale)
```
<!-- #endregion shared|jo.i18n.getLocale -->


<!-- #region shared|jo.i18n.init -->
#### Example
```lua
jo.i18n.init()
```
<!-- #endregion shared|jo.i18n.init -->


<!-- #region shared|jo.i18n.loadLocale -->
#### Example
```lua
jo.i18n.loadLocale("es")
```
<!-- #endregion shared|jo.i18n.loadLocale -->


<!-- #region shared|jo.i18n.onLocaleChanged -->
#### Example
```lua
jo.i18n.onLocaleChanged(function(newLocale)
  print("Locale changed to: " .. newLocale)
end)
```
<!-- #endregion shared|jo.i18n.onLocaleChanged -->


<!-- #region shared|jo.i18n.setLocale -->
#### Example
```lua
jo.i18n.setLocale("es")
```
<!-- #endregion shared|jo.i18n.setLocale -->

