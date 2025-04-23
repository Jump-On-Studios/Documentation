
## JO Functions

### jo.ui.finishTimer()

<!-- @include: ./slots/headers.md#client|jo.ui.finishTimer -->

Terminates the Timer's UI and destroys associated resources <br>

<!-- @include: ./slots/descriptions.md#client|jo.ui.finishTimer -->

#### Syntax

```lua
jo.ui.finishTimer()

```

<!-- @include: ./slots/examples.md#client|jo.ui.finishTimer -->

<!-- @include: ./slots/footers.md#client|jo.ui.finishTimer -->

---

### jo.ui.initTimer()

<!-- @include: ./slots/headers.md#client|jo.ui.initTimer -->

Initializes the timer's UI <br>

<!-- @include: ./slots/descriptions.md#client|jo.ui.initTimer -->

#### Syntax

```lua
jo.ui.initTimer()

```

#### Return Value

Type : _number_

> The state machine identifier

<!-- @include: ./slots/examples.md#client|jo.ui.initTimer -->

<!-- @include: ./slots/footers.md#client|jo.ui.initTimer -->

---

### jo.ui.startTimer()

<!-- @include: ./slots/headers.md#client|jo.ui.startTimer -->

Starts the timer's UI <br>

<!-- @include: ./slots/descriptions.md#client|jo.ui.startTimer -->

#### Syntax

```lua
jo.ui.startTimer(time, low)

```

#### Parameters

`time` : _integer_
> The time in seconds for the timer
>

`low` : _integer_ <BadgeOptional />
> The threshold in seconds at which the timer color will turn red
>

<!-- @include: ./slots/examples.md#client|jo.ui.startTimer -->

<!-- @include: ./slots/footers.md#client|jo.ui.startTimer -->

---

### jo.ui.stopTimer()

<!-- @include: ./slots/headers.md#client|jo.ui.stopTimer -->

Stops the Timer's UI before it finishes naturally <br>

<!-- @include: ./slots/descriptions.md#client|jo.ui.stopTimer -->

#### Syntax

```lua
jo.ui.stopTimer()

```

<!-- @include: ./slots/examples.md#client|jo.ui.stopTimer -->

<!-- @include: ./slots/footers.md#client|jo.ui.stopTimer -->

---

### jo.ui.updateRank()

<!-- @include: ./slots/headers.md#client|jo.ui.updateRank -->

Updates the rank element on the top left of weapon wheel <br>

<!-- @include: ./slots/descriptions.md#client|jo.ui.updateRank -->

#### Syntax

```lua
jo.ui.updateRank(level, xp, xpRequired)

```

#### Parameters

`level` : _integer_
> The level printed in the left of the element
>

`xp` : _integer_
> The current xp amount
>

`xpRequired` : _integer_
> The amount of XP required to level up
>

<!-- @include: ./slots/examples.md#client|jo.ui.updateRank -->

<!-- @include: ./slots/footers.md#client|jo.ui.updateRank -->

