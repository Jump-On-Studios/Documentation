
## JO Functions

### jo.i18n.__()

<!-- @include: ./slots/headers.md#shared|jo.i18n.__ -->

Translate a key <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.__ -->

#### Syntax

```lua
jo.i18n.__(key)
```

#### Parameters

`key` : _string_
> The key to translate
>

#### Return Value

Type : _string_

> The translated key

<!-- @include: ./slots/examples.md#shared|jo.i18n.__ -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.__ -->

---

### jo.i18n.addEntries()

<!-- @include: ./slots/headers.md#shared|jo.i18n.addEntries -->

Add multiple entries to the i18n dictionary <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.addEntries -->

#### Syntax

```lua
jo.i18n.addEntries(entries)
```

#### Parameters

`entries` : _table_

> The entries to add
>


<!-- @include: ./slots/examples.md#shared|jo.i18n.addEntries -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.addEntries -->

---

### jo.i18n.addEntry()

<!-- @include: ./slots/headers.md#shared|jo.i18n.addEntry -->

Add a single entry to the i18n dictionary <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.addEntry -->

#### Syntax

```lua
jo.i18n.addEntry(key, value)
```

#### Parameters

`key` : _string_
> The key to add
>

`value` : _string_
> The value to add
>

<!-- @include: ./slots/examples.md#shared|jo.i18n.addEntry -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.addEntry -->

---

### jo.i18n.findMissingKeys()

<!-- @include: ./slots/headers.md#shared|jo.i18n.findMissingKeys -->

Find missing keys in a locale <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.findMissingKeys -->

#### Syntax

```lua
jo.i18n.findMissingKeys(locale)
```

#### Parameters

`locale` : _string_
> The locale to check
>

<!-- @include: ./slots/examples.md#shared|jo.i18n.findMissingKeys -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.findMissingKeys -->

---

### jo.i18n.getEntries()

<!-- @include: ./slots/headers.md#shared|jo.i18n.getEntries -->

Get all entries <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.getEntries -->

#### Syntax

```lua
jo.i18n.getEntries()
```

#### Return Value

Type : _table_

> The entries

<!-- @include: ./slots/examples.md#shared|jo.i18n.getEntries -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.getEntries -->

---

### jo.i18n.getLocale()

<!-- @include: ./slots/headers.md#shared|jo.i18n.getLocale -->

Returns the current locale <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.getLocale -->

#### Syntax

```lua
jo.i18n.getLocale()
```

#### Return Value

Type : _string_

> The current locale

<!-- @include: ./slots/examples.md#shared|jo.i18n.getLocale -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.getLocale -->

---

### jo.i18n.init()

<!-- @include: ./slots/headers.md#shared|jo.i18n.init -->

Initialize the i18n module <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.init -->

#### Syntax

```lua
jo.i18n.init()
```

<!-- @include: ./slots/examples.md#shared|jo.i18n.init -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.init -->

---

### jo.i18n.loadLocale()

<!-- @include: ./slots/headers.md#shared|jo.i18n.loadLocale -->

Load a locale <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.loadLocale -->

#### Syntax

```lua
jo.i18n.loadLocale(locale)
```

#### Parameters

`locale` : _string_
> The locale to load
>

<!-- @include: ./slots/examples.md#shared|jo.i18n.loadLocale -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.loadLocale -->

---

### jo.i18n.onLocaleChanged()

<!-- @include: ./slots/headers.md#shared|jo.i18n.onLocaleChanged -->

Register a callback to be called when the locale changes <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.onLocaleChanged -->

#### Syntax

```lua
jo.i18n.onLocaleChanged(callback, priority)
```

#### Parameters

`callback` : _function_
> The callback to register
>

`priority` : _number_
> The priority of the callback
>

<!-- @include: ./slots/examples.md#shared|jo.i18n.onLocaleChanged -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.onLocaleChanged -->

---

### jo.i18n.setLocale()

<!-- @include: ./slots/headers.md#shared|jo.i18n.setLocale -->

Set the current locale <br>

<!-- @include: ./slots/descriptions.md#shared|jo.i18n.setLocale -->

#### Syntax

```lua
jo.i18n.setLocale(locale)
```

#### Parameters

`locale` : _string_
> The locale to set
>

<!-- @include: ./slots/examples.md#shared|jo.i18n.setLocale -->

<!-- @include: ./slots/footers.md#shared|jo.i18n.setLocale -->

