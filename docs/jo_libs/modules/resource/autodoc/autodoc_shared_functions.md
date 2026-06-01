
## JO Functions

### jo.resource.isConvarMatching()

<!-- @include: ./slots/headers.md#shared|jo.resource.isConvarMatching -->

Check if a resource matches the expected state and version/convar condition <br>
A "!" prefixed resource must NOT be running; otherwise the resource must be running and satisfy its condition <br>

<!-- @include: ./slots/descriptions.md#shared|jo.resource.isConvarMatching -->

#### Syntax

```lua
jo.resource.isConvarMatching(str)
```

#### Parameters

`str` : _string_
> (resourceName:convar(< > <= >= ==)value) or "!resourceName"
>

#### Return Value

Type : _boolean_

> true if the resource matches

<!-- @include: ./slots/examples.md#shared|jo.resource.isConvarMatching -->

<!-- @include: ./slots/footers.md#shared|jo.resource.isConvarMatching -->

