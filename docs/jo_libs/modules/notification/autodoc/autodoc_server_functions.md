
## JO Functions

### jo.notif.left()

<!-- @include: ./slots/headers.md#server|jo.notif.left -->

Notification on the left with title, icon, color and sound <br>

<!-- @include: ./slots/descriptions.md#server|jo.notif.left -->

#### Syntax

```lua
jo.notif.left(source, title, text, dict, icon, color, duration, soundset_ref, soundset_name)

```

#### Parameters

`source` : _integer_
> The source ID of the player
>

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

<!-- @include: ./slots/examples.md#server|jo.notif.left -->

<!-- @include: ./slots/footers.md#server|jo.notif.left -->

---

### jo.notif.print()

<!-- @include: ./slots/headers.md#server|jo.notif.print -->

A function to print in the client console from the server side <br>

<!-- @include: ./slots/descriptions.md#server|jo.notif.print -->

#### Syntax

```lua
jo.notif.print(source, ...)

```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`...` : _any_
> The data you want to print
>

<!-- @include: ./slots/examples.md#server|jo.notif.print -->

<!-- @include: ./slots/footers.md#server|jo.notif.print -->

---

### jo.notif.right()

<!-- @include: ./slots/headers.md#server|jo.notif.right -->

Notification on the right with icon, color and sound <br>

<!-- @include: ./slots/descriptions.md#server|jo.notif.right -->

#### Syntax

```lua
jo.notif.right(source, text, dict, icon, color, duration, soundset_ref, soundset_name)

```

#### Parameters

`source` : _integer_
> (The source ID of the player)
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

<!-- @include: ./slots/examples.md#server|jo.notif.right -->

<!-- @include: ./slots/footers.md#server|jo.notif.right -->

---

### jo.notif.rightError()

<!-- @include: ./slots/headers.md#server|jo.notif.rightError -->

A function to display an error notification <br>

<!-- @include: ./slots/descriptions.md#server|jo.notif.rightError -->

#### Syntax

```lua
jo.notif.rightError(source, text)

```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`text` : _string_
> The text of the notification
>

#### Return Value

Type : _boolean_

> Always return `false`

<!-- @include: ./slots/examples.md#server|jo.notif.rightError -->

<!-- @include: ./slots/footers.md#server|jo.notif.rightError -->

---

### jo.notif.rightSuccess()

<!-- @include: ./slots/headers.md#server|jo.notif.rightSuccess -->

A function to display a successful notification <br>

<!-- @include: ./slots/descriptions.md#server|jo.notif.rightSuccess -->

#### Syntax

```lua
jo.notif.rightSuccess(source, text)

```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`text` : _string_
> The text of the notification
>

#### Return Value

Type : _boolean_

> Always return `true`

<!-- @include: ./slots/examples.md#server|jo.notif.rightSuccess -->

<!-- @include: ./slots/footers.md#server|jo.notif.rightSuccess -->

---

### jo.notif.simpleTop()

<!-- @include: ./slots/headers.md#server|jo.notif.simpleTop -->

Notification on the top with big title and subtitle (native mission start/end) <br>

<!-- @include: ./slots/descriptions.md#server|jo.notif.simpleTop -->

#### Syntax

```lua
jo.notif.simpleTop(source, title, subtitle, duration)

```

#### Parameters

`source` : _integer_
> The source ID of the player
>

`title` : _string_
> The title of the notification
>

`subtitle` : _string_
> The text of the notification
>

`duration` : _integer_ <BadgeOptional />
> The duration of the notification in ms <br> default : 3000
>

<!-- @include: ./slots/examples.md#server|jo.notif.simpleTop -->

<!-- @include: ./slots/footers.md#server|jo.notif.simpleTop -->

