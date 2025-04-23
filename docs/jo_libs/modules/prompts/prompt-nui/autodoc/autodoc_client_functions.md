
## JO Functions

### jo.promptNui.createGroup()

<!-- @include: ./slots/headers.md#client|jo.promptNui.createGroup -->

Creates a new prompt group with a specified title and optional position. <br>

<!-- @include: ./slots/descriptions.md#client|jo.promptNui.createGroup -->

#### Syntax

```lua
jo.promptNui.createGroup(title, position)

```

#### Parameters

`title` : _string|boolean_
> The title for the new prompt group. Set to `false` to have no title
>

`position` : _string_ <BadgeOptional />
> The screen position for the group. <br> Allowed values are : `"bottom-right"`,`"center-right"`,`"top-right"`,`"bottom-left"`,`"center-left"`,`"top-left"` <br> default : `"bottom-right"`
>

#### Return Value

Type : _[GroupClass](#groupclass-methods)_

> A new instance of a prompt group.

<!-- @include: ./slots/examples.md#client|jo.promptNui.createGroup -->

<!-- @include: ./slots/footers.md#client|jo.promptNui.createGroup -->

---

### jo.promptNui.isCompleted()

<!-- @include: ./slots/headers.md#client|jo.promptNui.isCompleted -->

Checks whether a specified key has been held for the required duration to trigger an action.<br>Optionally ensures that the key does not trigger repeatedly unless explicitly allowed. <br>

<!-- @include: ./slots/descriptions.md#client|jo.promptNui.isCompleted -->

#### Syntax

```lua
jo.promptNui.isCompleted(key, fireMultipleTimes)

```

#### Parameters

`key` : _string_
> The key identifier to check.
>

`fireMultipleTimes` : _boolean|nil_ <BadgeOptional />
> If true, allows the key to trigger multiple times<br> defaults to `false`.
>

#### Return Value

Type : _boolean_

> True if the key press is complete and valid, otherwise `false`.

<!-- @include: ./slots/examples.md#client|jo.promptNui.isCompleted -->

<!-- @include: ./slots/footers.md#client|jo.promptNui.isCompleted -->


## GroupClass Methods

### GroupClass:addPrompt()

<!-- @include: ./slots/headers.md#client|GroupClass:addPrompt -->

Adds a new prompt to the group on a specified page. <br>Creates or initializes pages as necessary, assigns the prompt's position, and returns the new prompt. <br>

<!-- @include: ./slots/descriptions.md#client|GroupClass:addPrompt -->

#### Syntax

```lua
GroupClass:addPrompt(key, label, holdTime, page)

```

#### Parameters

`key` : _string|table_
> A key string or table of key strings for the prompt.
>

`label` : _string_
> The descriptive label for the prompt.
>

`holdTime` : _number|boolean_
> Duration to hold the key before the prompt triggers. <br> Set it to `false` if no hold time is required
>

`page` : _number_ <BadgeOptional />
> The page number to add the prompt to<br> defaults to 1.
>

#### Return Value

Type : _[PromptClass](#promptclass-methods)_

> The newly created prompt object.

<!-- @include: ./slots/examples.md#client|GroupClass:addPrompt -->

<!-- @include: ./slots/footers.md#client|GroupClass:addPrompt -->

---

### GroupClass:display()

<!-- @include: ./slots/headers.md#client|GroupClass:display -->

Displays the prompt group on the NUI interface and sets up key listeners for the active page. If the group has multiple pages, it also configures pagination using the nextPageKey. <br>

<!-- @include: ./slots/descriptions.md#client|GroupClass:display -->

#### Syntax

```lua
GroupClass:display(page)

```

#### Parameters

`page` : _number_ <BadgeOptional />
> The page number to display<br> defaults to the group's current page.
>

<!-- @include: ./slots/examples.md#client|GroupClass:display -->

<!-- @include: ./slots/footers.md#client|GroupClass:display -->

---

### GroupClass:hide()

<!-- @include: ./slots/headers.md#client|GroupClass:hide -->

Hides the prompt group from the NUI interface and removes its active key listeners. <br>

<!-- @include: ./slots/descriptions.md#client|GroupClass:hide -->

#### Syntax

```lua
GroupClass:hide()

```

<!-- @include: ./slots/examples.md#client|GroupClass:hide -->

<!-- @include: ./slots/footers.md#client|GroupClass:hide -->

---

### GroupClass:isVisible()

<!-- @include: ./slots/headers.md#client|GroupClass:isVisible -->

Returns whether the group is currently visible. <br>

<!-- @include: ./slots/descriptions.md#client|GroupClass:isVisible -->

#### Syntax

```lua
GroupClass:isVisible()

```

#### Return Value

Type : _boolean_

> `true` if the group is visible, `false` otherwise

<!-- @include: ./slots/examples.md#client|GroupClass:isVisible -->

<!-- @include: ./slots/footers.md#client|GroupClass:isVisible -->

---

### GroupClass:refreshNUI()

<!-- @include: ./slots/headers.md#client|GroupClass:refreshNUI -->

Refreshes the NUI interface for the group by updating a specified property. This update is only sent if the group is currently visible. <br>

<!-- @include: ./slots/descriptions.md#client|GroupClass:refreshNUI -->

#### Syntax

```lua
GroupClass:refreshNUI(property)

```

#### Parameters

`property` : _string_
> The group property to update (e.g., "title", "position",..).
>

<!-- @include: ./slots/examples.md#client|GroupClass:refreshNUI -->

<!-- @include: ./slots/footers.md#client|GroupClass:refreshNUI -->

---

### GroupClass:setNextPageKey()

<!-- @include: ./slots/headers.md#client|GroupClass:setNextPageKey -->

Sets the key used for navigating to the next page of prompts. <br>

<!-- @include: ./slots/descriptions.md#client|GroupClass:setNextPageKey -->

#### Syntax

```lua
GroupClass:setNextPageKey(key)

```

#### Parameters

`key` : _string_
> The key string to be used for pagination.
>

<!-- @include: ./slots/examples.md#client|GroupClass:setNextPageKey -->

<!-- @include: ./slots/footers.md#client|GroupClass:setNextPageKey -->

---

### GroupClass:setPosition()

<!-- @include: ./slots/headers.md#client|GroupClass:setPosition -->

Sets the display position for the prompt group. <br>

<!-- @include: ./slots/descriptions.md#client|GroupClass:setPosition -->

#### Syntax

```lua
GroupClass:setPosition(position)

```

#### Parameters

`position` : _string_
> The screen position for the group. <br> Allowed values are : `"bottom-right"`,`"center-right"`,`"top-right"`,`"bottom-left"`,`"center-left"`,`"top-left"`
>

<!-- @include: ./slots/examples.md#client|GroupClass:setPosition -->

<!-- @include: ./slots/footers.md#client|GroupClass:setPosition -->

---

### GroupClass:setTitle()

<!-- @include: ./slots/headers.md#client|GroupClass:setTitle -->

Sets the title for the prompt group. <br>

<!-- @include: ./slots/descriptions.md#client|GroupClass:setTitle -->

#### Syntax

```lua
GroupClass:setTitle(title)

```

#### Parameters

`title` : _string_
> The title to assign to the group.
>

<!-- @include: ./slots/examples.md#client|GroupClass:setTitle -->

<!-- @include: ./slots/footers.md#client|GroupClass:setTitle -->


## PromptClass Methods

### PromptClass:refreshNUI()

<!-- @include: ./slots/headers.md#client|PromptClass:refreshNUI -->

Refreshes the NUI interface for a prompt, updating a specific property. This update is only performed if the prompt belongs to the currently visible group. <br>

<!-- @include: ./slots/descriptions.md#client|PromptClass:refreshNUI -->

#### Syntax

```lua
PromptClass:refreshNUI(property)

```

#### Parameters

`property` : _string_
> The property name to update (e.g., "label", "disabled").
>

<!-- @include: ./slots/examples.md#client|PromptClass:refreshNUI -->

<!-- @include: ./slots/footers.md#client|PromptClass:refreshNUI -->

---

### PromptClass:setEnabled()

<!-- @include: ./slots/headers.md#client|PromptClass:setEnabled -->

Enables or disables the prompt and updates its associated key listeners. <br>

<!-- @include: ./slots/descriptions.md#client|PromptClass:setEnabled -->

#### Syntax

```lua
PromptClass:setEnabled(enabled)

```

#### Parameters

`enabled` : _boolean_
> `true` to enable the prompt, `false` to disable it.
>

<!-- @include: ./slots/examples.md#client|PromptClass:setEnabled -->

<!-- @include: ./slots/footers.md#client|PromptClass:setEnabled -->

---

### PromptClass:setHoldTime()

<!-- @include: ./slots/headers.md#client|PromptClass:setHoldTime -->

Sets the key hold duration for the prompt. <br>

<!-- @include: ./slots/descriptions.md#client|PromptClass:setHoldTime -->

#### Syntax

```lua
PromptClass:setHoldTime(holdTime)

```

#### Parameters

`holdTime` : _number|boolean_
> Duration (in milliseconds) the key must be held before activation; `false` if not applicable.
>

<!-- @include: ./slots/examples.md#client|PromptClass:setHoldTime -->

<!-- @include: ./slots/footers.md#client|PromptClass:setHoldTime -->

---

### PromptClass:setKeyboardKeys()

<!-- @include: ./slots/headers.md#client|PromptClass:setKeyboardKeys -->

Configures the keyboard keys for the prompt. Ensures that the keys are stored in a table, converting a single key to uppercase if needed. <br>

<!-- @include: ./slots/descriptions.md#client|PromptClass:setKeyboardKeys -->

#### Syntax

```lua
PromptClass:setKeyboardKeys(keyboardKeys)

```

#### Parameters

`keyboardKeys` : _table|string_
> A table of key strings or a single key string.
>

<!-- @include: ./slots/examples.md#client|PromptClass:setKeyboardKeys -->

<!-- @include: ./slots/footers.md#client|PromptClass:setKeyboardKeys -->

---

### PromptClass:setLabel()

<!-- @include: ./slots/headers.md#client|PromptClass:setLabel -->

Sets the label text for the prompt. <br>

<!-- @include: ./slots/descriptions.md#client|PromptClass:setLabel -->

#### Syntax

```lua
PromptClass:setLabel(label)

```

#### Parameters

`label` : _string_
> The text label to assign to the prompt.
>

<!-- @include: ./slots/examples.md#client|PromptClass:setLabel -->

<!-- @include: ./slots/footers.md#client|PromptClass:setLabel -->

---

### PromptClass:setVisible()

<!-- @include: ./slots/headers.md#client|PromptClass:setVisible -->

Sets the visibility of the prompt and updates its enabled state accordingly. <br>

<!-- @include: ./slots/descriptions.md#client|PromptClass:setVisible -->

#### Syntax

```lua
PromptClass:setVisible(visible)

```

#### Parameters

`visible` : _boolean_
> `true` to show the prompt, `false` to hide it.
>

<!-- @include: ./slots/examples.md#client|PromptClass:setVisible -->

<!-- @include: ./slots/footers.md#client|PromptClass:setVisible -->

