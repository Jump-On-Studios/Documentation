---
outline: [2,4]
---

# :house: Housing - More Furniture

Documentation related to the `jo_housing_more_furniture` add-on for the [Housing](housing) script.

<!-- TODO: check the shop URL and replace VIDEO_ID once the add-on is published -->
:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/housing-more-furniture)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="https://www.youtube.com/embed/VIDEO_ID" title="RedM - Housing More Furniture" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

The add-on adds **8,396 furniture** to the build mode of Housing: 6,472 in 22 new categories, each with its own icon, and 1,924 in the 16 categories of Housing.

## 1. Installation

::: warning
The [Housing](housing) script is required to use this add-on. Use its latest version: the add-on relies on the exports added for the add-ons.
:::

To install `jo_housing_more_furniture`:

1. Install [Housing](housing#_1-installation) and its requirements, `jo_libs` 2.17.0 or later.
2. Download `jo_housing_more_furniture` from your [account](https://jumpon-studios.com/account).
3. Unzip it and place the `jo_housing_more_furniture` folder in your resources folder.
4. Start it after Housing in your `server.cfg`:

```cfg
ensure jo_libs
ensure jo_housing
ensure jo_housing_more_furniture
```

::: tip 💡 No SQL file, no item
The furniture of the add-on is bought and placed like the furniture of Housing: nothing to add to your database or your inventory.
:::

## 2. Usage

The furniture is bought in the build mode of Housing, see [Using a house](housing#using-a-house).

### Adding furniture

1. Enter the build mode of your house.
2. Press the "Add Furnitures" key (default: `A`).
3. Pick a category: the 22 new ones are listed with the categories of Housing.
4. Browse the thumbnails, or search a model name with the search prompt.
5. Buy the furniture, then place it as any furniture of Housing.

### Categories

:::: tabs

::: tab 🆕 New categories
| Category | Furniture |
| --- | --- |
| Ammo | 107 |
| Animal Trophies | 269 |
| Books & Papers | 447 |
| Camp | 329 |
| Chests & Trunks | 165 |
| Clocks | 17 |
| Clothing & Textiles | 351 |
| Doors & Windows | 523 |
| Drinks | 135 |
| Farm & Ranch | 91 |
| Fences | 499 |
| Games | 936 |
| Industrial | 200 |
| Instruments | 27 |
| Medical | 130 |
| Office | 84 |
| Outdoor | 78 |
| Religious | 131 |
| Shelves | 69 |
| Signs | 312 |
| Storage Containers | 1,078 |
| Tools | 494 |
:::

::: tab ➕ Categories of Housing
These categories already exist in the Housing script: the furniture added by the add-on is listed after the furniture of Housing.

| Category | Already in the Housing script | Added by the add-on | New total |
| --- | --- | --- | --- |
| Bathroom | 26 | 67 | 93 |
| Beds | 62 | 18 | 80 |
| Cabinets | 124 | 62 | 186 |
| Carpets | 12 | 15 | 27 |
| Chairs | 171 | 52 | 223 |
| Curtains | 129 | 161 | 290 |
| Decorations | 541 | 464 | 1,005 |
| Desks | 30 | 2 | 32 |
| Fireplaces | 21 | 29 | 50 |
| Food | 663 | 205 | 868 |
| Kitchen | 149 | 193 | 342 |
| Lamps | 237 | 88 | 325 |
| Plants | 185 | 315 | 500 |
| Sofas | 23 | 5 | 28 |
| Tables | 175 | 41 | 216 |
| Wall Decorations | 101 | 207 | 308 |
:::

::::

## 3. Configuration

<ScriptConfig scriptPath="redm/housing-more-furniture" />

The prices and the names of the add-on are sent to Housing: for a same category or model, they replace the ones of the configuration of Housing.

## 4. FAQ

:::details "No such export addFurnitures in resource jo_housing"
Your version of Housing is older than the add-on. Update [Housing](housing) to its latest version, then restart both resources.
:::

:::details How do I remove a category or a furniture ?
Set its price to `-1` in the configuration of the add-on: a category priced `-1` disappears from the menu, a model priced `-1` is removed from its category.

For a category of Housing (Beds, Lamps…), `-1` only removes the furniture added by the add-on: the one of Housing stays.
:::

:::details Can I rename a category ?
Yes, with the language file of the add-on. A name set there also replaces the name of a category of Housing.
:::
