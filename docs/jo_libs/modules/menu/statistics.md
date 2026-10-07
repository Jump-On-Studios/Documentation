---
outline: [2, 3]
---

# Statistics

Statistics are displayed in the description area of the active item, under the description. They are defined in the `statistics` list of an [item](./items).

![All the statistics](/images/previews/menu/stats-overview.jpg){.menu-full data-zoomable}

```lua
menu:addItem({
  title = "Cattleman revolver",
  icon = "holsters_left",
  statistics = {
    { label = "Manufacturer", value = "Cattleman" },
    { label = "Damage", type = "bar", value = { 6, 8 } },
    { label = "Range", type = "bar-style", value = { "active", "active", "active fgold", "possible fgold", "", "", "" } },
    { label = "Accuracy", type = "weapon-bar", value = { 65, 100 } },
    { label = "Upgrade", type = "weapon-bar", value = { max = 100, bars = { { value = 50 }, { value = 70, color = "#d4af37" } } } },
    { label = "Condition", type = "icon", value = { "star", "star", { icon = "star", opacity = 0.3 } } },
    { label = "Repair", type = "price", value = { money = 2.5 } },
  },
})
```

| Type | Displays |
| --- | --- |
| [Text](#text) | A text on the right |
| [`bar`](#bar) | 10 bars, like the statistics of the weapons |
| [`bar-style`](#bar-style) | Any number of bars, with a style per bar |
| [`icon`](#icon) | A list of icons |
| [`weapon-bar`](#weapon-bar) | A progress bar, with one or several segments |
| [`price`](#price) | A price |

## Common keys

| Key | Type | Description |
| --- | --- | --- |
| `label` | _string_ | The text on the left. HTML is allowed |
| `type` | _string_ | The type of statistic. Not needed for a text |
| `value` | _any_ | The value, depending on the type |
| `class` | _string_ | CSS classes of the statistic, like `penalty` for a `bar` <BadgeOptional /> |
| `translateLabel` | _boolean_ | Use `label` as a key of the [translations](./menus#your-own-translations) <BadgeOptional /> default: `false` |
| `translateValue` | _boolean_ | Use `value` as a key of the translations (text only) <BadgeOptional /> default: `false` |

## Text

When `value` is a string or a number, it's displayed on the right. HTML is allowed.

```lua
statistics = {
  { label = "Manufacturer", value = "Cattleman" },
  { label = "Ammo", value = "<span style='color:#d4af37'>12</span> / 36" },
}
```

![Text statistics](/images/previews/menu/stat-text.jpg){.menu-detail data-zoomable}

## Bar

10 bars. `value` is `{active, possible}`:

- `active`: the number of white bars,
- `possible`: the number of grey bars, up to this number <BadgeOptional />. It's useful to show the result of an upgrade.

```lua
statistics = {
  { label = "Damage", type = "bar", value = { 6 } },
  { label = "Fire rate", type = "bar", value = { 4, 7 } },
}
```

![Bar statistics](/images/previews/menu/stat-bar.jpg){.menu-detail data-zoomable}

With `class = "penalty"`, the `possible` bars are red: the statistic goes down.

```lua
{ label = "Reload speed", type = "bar", value = { 3, 6 }, class = "penalty" }
```

![Bar statistic with a penalty](/images/previews/menu/stat-bar-penalty.jpg){.menu-detail data-zoomable}

## Bar style

Any number of bars, with a style per bar. `value` is a list of CSS classes, one per bar. The classes can be combined:

| Class | Effect |
| --- | --- |
| `""` | Empty bar |
| `active` | White bar |
| `possible` | Grey bar |
| `fgold` | Gold color |
| `fred` | Red color |

```lua
{
  label = "Range",
  type = "bar-style",
  value = { "active", "active fgold", "active fred", "possible", "possible fred", "", "" },
}
```

![Bar-style statistic](/images/previews/menu/stat-bar-style.jpg){.menu-detail data-zoomable}

## Icon

A list of [icons](./menus#icons). Each entry is an icon name, or a table `{icon = name, opacity = 0.0 to 1.0}`.

```lua
statistics = {
  { label = "Health", type = "icon", value = { "player_health", "player_health", { icon = "player_health", opacity = 0.3 } } },
  { label = "Stamina", type = "icon", value = { { icon = "player_stamina", opacity = 1 }, { icon = "player_stamina", opacity = 0.5 } } },
}
```

![Icon statistics](/images/previews/menu/stat-icon.jpg){.menu-detail data-zoomable}

## Weapon bar

The progress bar of the weapon statistics of the game. `value` is `{current, max}`.

```lua
{ label = "Accuracy", type = "weapon-bar", value = { 65, 100 } }
```

![Weapon-bar statistic](/images/previews/menu/stat-weapon-bar.jpg){.menu-detail data-zoomable}

### Several segments

To display several segments, like the result of an upgrade, `value` is a table:

| Key | Type | Description |
| --- | --- | --- |
| `max` | _number_ | The value of a full bar |
| `bars` | _table_ | The segments, from left to right |
| `bars[].value` | _number_ | Where the segment ends. The values are cumulative: each segment starts where the previous one ends |
| `bars[].color` | _string_ | The CSS color of the segment <BadgeOptional /> default: `white` |
| `bars[].opacity` | _number_ | The opacity of the segment, from `0` to `1` <BadgeOptional /> default: `1` |

```lua
statistics = {
  {
    label = "Upgrade",
    type = "weapon-bar",
    value = {
      max = 100,
      bars = {
        { value = 40 }, -- white from 0 to 40
        { value = 60, color = "#27ae60" }, -- green from 40 to 60
        { value = 75, color = "#27ae60", opacity = 0.4 }, -- light green from 60 to 75
      },
    },
  },
  {
    label = "Downgrade",
    type = "weapon-bar",
    value = { max = 100, bars = { { value = 45 }, { value = 70, color = "#c0392b" } } },
  },
}
```

![Weapon-bar statistics with several segments](/images/previews/menu/stat-weapon-bar-segments.jpg){.menu-detail data-zoomable}

## Price

`value` is a price, in any format described in [Prices](./items#prices).

```lua
statistics = {
  { label = "Repair", type = "price", value = { money = 2.5 } },
  { label = "Upgrade", type = "price", value = { { money = 10 }, { gold = 1 } } },
}
```

![Price statistics](/images/previews/menu/stat-price.jpg){.menu-detail data-zoomable}
