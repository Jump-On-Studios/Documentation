
## JO Functions

### jo.notif.left()

<!-- @include: ./slots/headers.md#client|jo.notif.left -->

Notification on the left with title, icon, color and sound <br>

<!-- @include: ./slots/descriptions.md#client|jo.notif.left -->

#### Syntax

```lua
jo.notif.left(title, text, dict, icon, color, duration, soundset_ref, soundset_name)
```

#### Parameters

`title` : _string_
> The title of the notification
>

`text` : _string_
> The text of the notification
>

`dict` : _string_
> The dictionnary of the icon
>

`icon` : _string_
> The name of the icon
>

`color` : _string_ <BadgeOptional />
> The color of the text <br> default : "COLOR_WHITE"
>

`duration` : _integer_ <BadgeOptional />
> The duration of the notification in ms <br> default: 3000
>

`soundset_ref` : _string_ <BadgeOptional />
> The dictionnary of the soundset <br> default : "Transaction_Feed_Sounds"
>

`soundset_name` : _string_ <BadgeOptional />
> The name of the soundset <br> default : "Transaction_Positive"
>

<!-- @include: ./slots/examples.md#client|jo.notif.left -->

<!-- @include: ./slots/footers.md#client|jo.notif.left -->

---

### jo.notif.right()

<!-- @include: ./slots/headers.md#client|jo.notif.right -->

Notification on the right with icon, color and sound <br>

<!-- @include: ./slots/descriptions.md#client|jo.notif.right -->

#### Syntax

```lua
jo.notif.right(text, dict, icon, color, duration, soundset_ref, soundset_name)
```

#### Parameters

`text` : _string_
> The text of the notification
>

`dict` : _string_
> The dictionnary of the icon
>

`icon` : _string_
> The name of the icon
>

`color` : _string_ <BadgeOptional />
> The color of the text <br> default : "COLOR_WHITE"
>

`duration` : _integer_ <BadgeOptional />
> The duration of the notification in ms <br> default: 3000
>

`soundset_ref` : _string_ <BadgeOptional />
> The dictionnary of the soundset <br> default : "Transaction_Feed_Sounds"
>

`soundset_name` : _string_ <BadgeOptional />
> The name of the soundset <br> default : "Transaction_Positive"
>

<!-- @include: ./slots/examples.md#client|jo.notif.right -->

<!-- @include: ./slots/footers.md#client|jo.notif.right -->

---

### jo.notif.rightError()

<!-- @include: ./slots/headers.md#client|jo.notif.rightError -->

A function to display an error notification <br>

<!-- @include: ./slots/descriptions.md#client|jo.notif.rightError -->

#### Syntax

```lua
jo.notif.rightError(text)
```

#### Parameters

`text` : _string_
> The text of the notification
>

#### Return Value

Type : _boolean_

> Always return `false`

<!-- @include: ./slots/examples.md#client|jo.notif.rightError -->

<!-- @include: ./slots/footers.md#client|jo.notif.rightError -->

---

### jo.notif.rightSuccess()

<!-- @include: ./slots/headers.md#client|jo.notif.rightSuccess -->

A function to display a successful notification <br>

<!-- @include: ./slots/descriptions.md#client|jo.notif.rightSuccess -->

#### Syntax

```lua
jo.notif.rightSuccess(text)
```

#### Parameters

`text` : _string_
> The text of the notification
>

#### Return Value

Type : _boolean_

> Always return `true`

<!-- @include: ./slots/examples.md#client|jo.notif.rightSuccess -->

<!-- @include: ./slots/footers.md#client|jo.notif.rightSuccess -->

---

### jo.notif.simpleTop()

<!-- @include: ./slots/headers.md#client|jo.notif.simpleTop -->

Notification on the top with big title and subtitle (native mission start/end) <br>

<!-- @include: ./slots/descriptions.md#client|jo.notif.simpleTop -->

#### Syntax

```lua
jo.notif.simpleTop(title, subtitle, duration)
```

#### Parameters

`title` : _string_
> The title of the notification
>

`subtitle` : _string_
> The text of the notification
>

`duration` : _integer_ <BadgeOptional />
> The duration of the notification in ms <br> default : 3000
>

<!-- @include: ./slots/examples.md#client|jo.notif.simpleTop -->

<!-- @include: ./slots/footers.md#client|jo.notif.simpleTop -->

