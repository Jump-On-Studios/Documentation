
## JO Functions

### jo.prompt.create()

<!-- @include: ./slots/headers.md#client|jo.prompt.create -->

A function to create a new prompt. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.create -->

#### Syntax

```lua
jo.prompt.create(group, str, key, holdTime, page)
```

#### Parameters

`group` : _string_
> The name of the group. Use "interaction" to display the prompt without need to call jo.prompt.displayGroup every frame
>

`str` : _string_
> The label of the key
>

`key` : _string|table_
> Input (string or list of strings) <br> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`holdTime` : _integer_ <BadgeOptional />
> Duration to complete the prompt in ms <br> Use `false` for classic prompt without holding timer <br> default: false
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: 0
>

#### Return Value

Type : _integer_

> The prompt ID

<!-- @include: ./slots/examples.md#client|jo.prompt.create -->

<!-- @include: ./slots/footers.md#client|jo.prompt.create -->

---

### jo.prompt.delete()

<!-- @include: ./slots/headers.md#client|jo.prompt.delete -->

A function to delete a prompt. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.delete -->

#### Syntax

```lua
jo.prompt.delete(group, key, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

<!-- @include: ./slots/examples.md#client|jo.prompt.delete -->

<!-- @include: ./slots/footers.md#client|jo.prompt.delete -->

---

### jo.prompt.deleteAllGroups()

<!-- @include: ./slots/headers.md#client|jo.prompt.deleteAllGroups -->

A function to delete all prompts created <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.deleteAllGroups -->

#### Syntax

```lua
jo.prompt.deleteAllGroups()
```

<!-- @include: ./slots/examples.md#client|jo.prompt.deleteAllGroups -->

<!-- @include: ./slots/footers.md#client|jo.prompt.deleteAllGroups -->

---

### jo.prompt.deleteGroup()

<!-- @include: ./slots/headers.md#client|jo.prompt.deleteGroup -->

A function to delete a group and all its prompts. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.deleteGroup -->

#### Syntax

```lua
jo.prompt.deleteGroup(group)
```

#### Parameters

`group` : _string_
> The name of the group
>

<!-- @include: ./slots/examples.md#client|jo.prompt.deleteGroup -->

<!-- @include: ./slots/footers.md#client|jo.prompt.deleteGroup -->

---

### jo.prompt.displayGroup()

<!-- @include: ./slots/headers.md#client|jo.prompt.displayGroup -->

A function to display a prompt group during this frame. <br>
Needs to be called each frame. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.displayGroup -->

#### Syntax

```lua
jo.prompt.displayGroup(group, title)
```

#### Parameters

`group` : _string_
> The name of the prompt group to display this frame
>

`title` : _string_
> The title to display for this prompt group
>

<!-- @include: ./slots/examples.md#client|jo.prompt.displayGroup -->

<!-- @include: ./slots/footers.md#client|jo.prompt.displayGroup -->

---

### jo.prompt.doesLastCompletedIs()

<!-- @include: ./slots/headers.md#client|jo.prompt.doesLastCompletedIs -->

A function that returns if it's the last prompt completed. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.doesLastCompletedIs -->

#### Syntax

```lua
jo.prompt.doesLastCompletedIs(group, key, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

#### Return Value

Type : _boolean_

> Return `true` if key is the last input completed

<!-- @include: ./slots/examples.md#client|jo.prompt.doesLastCompletedIs -->

<!-- @include: ./slots/footers.md#client|jo.prompt.doesLastCompletedIs -->

---

### jo.prompt.editKeyLabel()

<!-- @include: ./slots/headers.md#client|jo.prompt.editKeyLabel -->

A function to edit the label of a key. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.editKeyLabel -->

#### Syntax

```lua
jo.prompt.editKeyLabel(group, key, label, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`label` : _string_
> The label of the key
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

<!-- @include: ./slots/examples.md#client|jo.prompt.editKeyLabel -->

<!-- @include: ./slots/footers.md#client|jo.prompt.editKeyLabel -->

---

### jo.prompt.get()

<!-- @include: ./slots/headers.md#client|jo.prompt.get -->

A function to get the prompt ID. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.get -->

#### Syntax

```lua
jo.prompt.get(group, key, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

#### Return Value

Type : _integer|boolean_

> The prompt ID or `false`

<!-- @include: ./slots/examples.md#client|jo.prompt.get -->

<!-- @include: ./slots/footers.md#client|jo.prompt.get -->

---

### jo.prompt.getAll()

<!-- @include: ./slots/headers.md#client|jo.prompt.getAll -->

A function to get all registered prompts. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.getAll -->

#### Syntax

```lua
jo.prompt.getAll()
```

#### Return Value

Type : _table_

> All prompt registered

<!-- @include: ./slots/examples.md#client|jo.prompt.getAll -->

<!-- @include: ./slots/footers.md#client|jo.prompt.getAll -->

---

### jo.prompt.getGroup()

<!-- @include: ./slots/headers.md#client|jo.prompt.getGroup -->

A function to get the group ID. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.getGroup -->

#### Syntax

```lua
jo.prompt.getGroup(group)
```

#### Parameters

`group` : _string_
> The name of the group
>

#### Return Value

Type : _integer|boolean_

> The group ID or `false`

<!-- @include: ./slots/examples.md#client|jo.prompt.getGroup -->

<!-- @include: ./slots/footers.md#client|jo.prompt.getGroup -->

---

### jo.prompt.getPage()

<!-- @include: ./slots/headers.md#client|jo.prompt.getPage -->

A function to get the current page ID for a group. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.getPage -->

#### Syntax

```lua
jo.prompt.getPage(group)
```

#### Parameters

`group` : _string_
> The name of the group
>

#### Return Value

Type : _integer_

> The page ID

<!-- @include: ./slots/examples.md#client|jo.prompt.getPage -->

<!-- @include: ./slots/footers.md#client|jo.prompt.getPage -->

---

### jo.prompt.getProgress()

<!-- @include: ./slots/headers.md#client|jo.prompt.getProgress -->

A function to return the progress of a prompt. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.getProgress -->

#### Syntax

```lua
jo.prompt.getProgress(group, key, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

#### Return Value

Type : _number_

> Return the percent of the prompt progress

<!-- @include: ./slots/examples.md#client|jo.prompt.getProgress -->

<!-- @include: ./slots/footers.md#client|jo.prompt.getProgress -->

---

### jo.prompt.isActive()

<!-- @include: ./slots/headers.md#client|jo.prompt.isActive -->

A function to know if a prompt is active or not. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.isActive -->

#### Syntax

```lua
jo.prompt.isActive(group, key, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

#### Return Value

Type : _boolean_

> Return `true` if the prompt is active

<!-- @include: ./slots/examples.md#client|jo.prompt.isActive -->

<!-- @include: ./slots/footers.md#client|jo.prompt.isActive -->

---

### jo.prompt.isCompleted()

<!-- @include: ./slots/headers.md#client|jo.prompt.isCompleted -->

A function to test if the prompt is pressed and completed. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.isCompleted -->

#### Syntax

```lua
jo.prompt.isCompleted(group, key, fireMultipleTimes, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`fireMultipleTimes` : _boolean_ <BadgeOptional />
> Fire true if the prompt is completed and until another prompt is completed  <br> default: false
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

#### Return Value

Type : _boolean_

> Return `true` if the key is pressed and completed

<!-- @include: ./slots/examples.md#client|jo.prompt.isCompleted -->

<!-- @include: ./slots/footers.md#client|jo.prompt.isCompleted -->

---

### jo.prompt.isEnabled()

<!-- @include: ./slots/headers.md#client|jo.prompt.isEnabled -->

A function to know if the prompt is enabled. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.isEnabled -->

#### Syntax

```lua
jo.prompt.isEnabled(group, key, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

#### Return Value

Type : _boolean_

> Return `true` if the prompt is enabled

<!-- @include: ./slots/examples.md#client|jo.prompt.isEnabled -->

<!-- @include: ./slots/footers.md#client|jo.prompt.isEnabled -->

---

### jo.prompt.isExist()

<!-- @include: ./slots/headers.md#client|jo.prompt.isExist -->

A function to know if a prompt exists. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.isExist -->

#### Syntax

```lua
jo.prompt.isExist(group, key, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

#### Return Value

Type : _boolean_

> Return `true` if the prompt exists

<!-- @include: ./slots/examples.md#client|jo.prompt.isExist -->

<!-- @include: ./slots/footers.md#client|jo.prompt.isExist -->

---

### jo.prompt.isGroupExist()

<!-- @include: ./slots/headers.md#client|jo.prompt.isGroupExist -->

A function to know if a prompt group exists. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.isGroupExist -->

#### Syntax

```lua
jo.prompt.isGroupExist(group)
```

#### Parameters

`group` : _string_
> The name of the group
>

#### Return Value

Type : _boolean_

> Return `true` if the group exists

<!-- @include: ./slots/examples.md#client|jo.prompt.isGroupExist -->

<!-- @include: ./slots/footers.md#client|jo.prompt.isGroupExist -->

---

### jo.prompt.isPressed()

<!-- @include: ./slots/headers.md#client|jo.prompt.isPressed -->

A function to know if a key is pressed. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.isPressed -->

#### Syntax

```lua
jo.prompt.isPressed(key)
```

#### Parameters

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

#### Return Value

Type : _boolean_

> Return `true` if the key is pressed

<!-- @include: ./slots/examples.md#client|jo.prompt.isPressed -->

<!-- @include: ./slots/footers.md#client|jo.prompt.isPressed -->

---

### jo.prompt.isVisible()

<!-- @include: ./slots/headers.md#client|jo.prompt.isVisible -->

A function to check if a prompt is visible. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.isVisible -->

#### Syntax

```lua
jo.prompt.isVisible(group, key, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

#### Return Value

Type : _boolean_

> Return `true` if the prompt is visible

<!-- @include: ./slots/examples.md#client|jo.prompt.isVisible -->

<!-- @include: ./slots/footers.md#client|jo.prompt.isVisible -->

---

### jo.prompt.setEnabled()

<!-- @include: ./slots/headers.md#client|jo.prompt.setEnabled -->

A function to define if the prompt is enabled or not. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.setEnabled -->

#### Syntax

```lua
jo.prompt.setEnabled(group, key, value, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`value` : _boolean_
> If the prompt is enabled or not
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

<!-- @include: ./slots/examples.md#client|jo.prompt.setEnabled -->

<!-- @include: ./slots/footers.md#client|jo.prompt.setEnabled -->

---

### jo.prompt.setGroups()

<!-- @include: ./slots/headers.md#client|jo.prompt.setGroups -->

A function to overwrite the prompt groups value. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.setGroups -->

#### Syntax

```lua
jo.prompt.setGroups(groups)
```

#### Parameters

`groups` : _table_

> The prompt group value from other script get with jo.prompt.getAll()
>


<!-- @include: ./slots/examples.md#client|jo.prompt.setGroups -->

<!-- @include: ./slots/footers.md#client|jo.prompt.setGroups -->

---

### jo.prompt.setVisible()

<!-- @include: ./slots/headers.md#client|jo.prompt.setVisible -->

Turn on/off a prompt. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.setVisible -->

#### Syntax

```lua
jo.prompt.setVisible(group, key, value, page)
```

#### Parameters

`group` : _string_
> The name of the group
>

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

`value` : _boolean_
> If the prompt is visible or not
>

`page` : _integer_ <BadgeOptional />
> The page of the prompt <br> default: current page
>

<!-- @include: ./slots/examples.md#client|jo.prompt.setVisible -->

<!-- @include: ./slots/footers.md#client|jo.prompt.setVisible -->

---

### jo.prompt.waitRelease()

<!-- @include: ./slots/headers.md#client|jo.prompt.waitRelease -->

A function to wait for the release of pressed key. <br>

<!-- @include: ./slots/descriptions.md#client|jo.prompt.waitRelease -->

#### Syntax

```lua
jo.prompt.waitRelease(key)
```

#### Parameters

`key` : _string_
> The [input](https://github.com/femga/rdr3_discoveries/tree/a63669efcfea34915c53dbd29724a2a7103f822f/Controls) of the key
>

<!-- @include: ./slots/examples.md#client|jo.prompt.waitRelease -->

<!-- @include: ./slots/footers.md#client|jo.prompt.waitRelease -->

