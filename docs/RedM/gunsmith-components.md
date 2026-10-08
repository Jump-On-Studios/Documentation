---
outline: [2,3]
---

# :gun: Gunsmith — Weapon components

Component names for [jo_gunsmith](./gunsmith), with readable English labels. The reference contains **all 688 named components** recorded by the script's customization survey: **334 model-specific components** and **354 shared components**.

Use the exact `COMPONENT_*` key for a custom component price. Readable labels below are translated from the French in-game survey; the displayed wording can differ with the game's language.

## 1. Set a custom component price

Find the weapon below, identify the desired component, then use its key in `config/custom/prices.lua`. Shared finish keys affect every weapon offering that item. The [main configuration section](./gunsmith#_3-configuration) displays the configuration files through ScriptConfig.

::: details Example — price a Cattleman pearl grip and a shared barrel finish
```lua
Config.prices.weapons.components.COMPONENT_REVOLVER_CATTLEMAN_GRIP_PEARL = {
    { money = 120 },
    { gold = 12 }
}

Config.prices.weapons.components.COMPONENT_LONGARM_BARREL_MATERIAL_1 = {
    { money = 30 }
}
```
:::

A collection choice applies several member components, and its price is the sum of those member prices. Price the member keys instead of a collection proxy. Removal choices, including **None** and **Standard**, are free.

## 2. Components by weapon

The following tables contain the complete surveyed **model-specific** names. Shared finishes are listed in [Shared components](#_3-shared-components), rather than repeated for every model.

The source survey records the number of weapons offering each shared item, but not their complete model list. The shared tables preserve those counts. They are a complete name reference, **not a verified exhaustive component-to-weapon matrix**.

### Cattleman Revolver

Model: `WEAPON_REVOLVER_CATTLEMAN`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Cattleman Revolver — 10 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_REVOLVER_CATTLEMAN_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_REVOLVER_CATTLEMAN_BARREL_SHORT` |
| Standard grip | Grip | `COMPONENT_REVOLVER_CATTLEMAN_GRIP` |
| Burled grip | Grip | `COMPONENT_REVOLVER_CATTLEMAN_GRIP_BURLED` |
| Ebony grip | Grip | `COMPONENT_REVOLVER_CATTLEMAN_GRIP_EBONY` |
| Ironwood grip | Grip | `COMPONENT_REVOLVER_CATTLEMAN_GRIP_IRONWOOD` |
| Pearl grip | Grip | `COMPONENT_REVOLVER_CATTLEMAN_GRIP_PEARL` |
| Standard sights | Iron sights | `COMPONENT_REVOLVER_CATTLEMAN_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REVOLVER_CATTLEMAN_SIGHT_WIDE` |
| Whitchurch variant | Variants | `COMPONENT_SHORTARM_ROLE_ENGRAVING_CATTLEMAN_LEGENDARY` |

Known options without a component name:

| Readable label | Part / page | Hash |
| --- | --- | --- |
| No variant | Variants | `0xEA766ABF` |

These hashes are identification references; do not use them as numeric component-price keys.

:::

### Double-Action Revolver

Model: `WEAPON_REVOLVER_DOUBLEACTION`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Double-Action Revolver — 9 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_REVOLVER_DOUBLEACTION_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_REVOLVER_DOUBLEACTION_BARREL_SHORT` |
| Standard grip | Grip | `COMPONENT_REVOLVER_DOUBLEACTION_GRIP` |
| Burled grip | Grip | `COMPONENT_REVOLVER_DOUBLEACTION_GRIP_BURLED` |
| Ebony grip | Grip | `COMPONENT_REVOLVER_DOUBLEACTION_GRIP_EBONY` |
| Ironwood grip | Grip | `COMPONENT_REVOLVER_DOUBLEACTION_GRIP_IRONWOOD` |
| Pearl grip | Grip | `COMPONENT_REVOLVER_DOUBLEACTION_GRIP_PEARL` |
| Standard sights | Iron sights | `COMPONENT_REVOLVER_DOUBLEACTION_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REVOLVER_DOUBLEACTION_SIGHT_WIDE` |

:::

### LeMat Revolver

Model: `WEAPON_REVOLVER_LEMAT`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details LeMat Revolver — 8 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_REVOLVER_LEMAT_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_REVOLVER_LEMAT_BARREL_SHORT` |
| Standard grip | Grip | `COMPONENT_REVOLVER_LEMAT_GRIP` |
| Ebony grip | Grip | `COMPONENT_REVOLVER_LEMAT_GRIP_EBONY` |
| Ironwood grip | Grip | `COMPONENT_REVOLVER_LEMAT_GRIP_IRONWOOD` |
| Pearl grip | Grip | `COMPONENT_REVOLVER_LEMAT_GRIP_PEARL` |
| Standard sights | Iron sights | `COMPONENT_REVOLVER_LEMAT_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REVOLVER_LEMAT_SIGHT_WIDE` |

Known options without a component name:

| Readable label | Part / page | Hash |
| --- | --- | --- |
| Burled grip | Grip | `0xDD40F1F6` |
| Bounty Hunter variant | Variants | `0x6C76CAC7` |

These hashes are identification references; do not use them as numeric component-price keys.

:::

### Navy Revolver

Model: `WEAPON_REVOLVER_NAVY`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Navy Revolver — 8 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_REVOLVER_NAVY_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_REVOLVER_NAVY_BARREL_SHORT` |
| Standard grip | Grip | `COMPONENT_REVOLVER_NAVY_GRIP` |
| Ebony grip | Grip | `COMPONENT_REVOLVER_NAVY_GRIP_EBONY` |
| Ironwood grip | Grip | `COMPONENT_REVOLVER_NAVY_GRIP_IRONWOOD` |
| Pearl grip | Grip | `COMPONENT_REVOLVER_NAVY_GRIP_PEARL` |
| Standard sights | Iron sights | `COMPONENT_REVOLVER_NAVY_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REVOLVER_NAVY_SIGHT_WIDE` |

Known options without a component name:

| Readable label | Part / page | Hash |
| --- | --- | --- |
| Burled grip | Grip | `0x5069A7C9` |

These hashes are identification references; do not use them as numeric component-price keys.

:::

### Schofield Revolver

Model: `WEAPON_REVOLVER_SCHOFIELD`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Schofield Revolver — 10 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_REVOLVER_SCHOFIELD_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_REVOLVER_SCHOFIELD_BARREL_SHORT` |
| Standard grip | Grip | `COMPONENT_REVOLVER_SCHOFIELD_GRIP` |
| Burled grip | Grip | `COMPONENT_REVOLVER_SCHOFIELD_GRIP_BURLED` |
| Ebony grip | Grip | `COMPONENT_REVOLVER_SCHOFIELD_GRIP_EBONY` |
| Ironwood grip | Grip | `COMPONENT_REVOLVER_SCHOFIELD_GRIP_IRONWOOD` |
| Pearl grip | Grip | `COMPONENT_REVOLVER_SCHOFIELD_GRIP_PEARL` |
| Standard sights | Iron sights | `COMPONENT_REVOLVER_SCHOFIELD_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REVOLVER_SCHOFIELD_SIGHT_WIDE` |
| Bounty Hunter | Variants | `COMPONENT_SHORTARM_FRAME_ENGRAVING_SCHOFIELD_BOUNTY` |

:::

### Mauser Pistol

Model: `WEAPON_PISTOL_MAUSER`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Mauser Pistol — 10 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_PISTOL_MAUSER_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_PISTOL_MAUSER_BARREL_SHORT` |
| Standard grip | Grip | `COMPONENT_PISTOL_MAUSER_GRIP` |
| Burled grip | Grip | `COMPONENT_PISTOL_MAUSER_GRIP_BURLED` |
| Ebony grip | Grip | `COMPONENT_PISTOL_MAUSER_GRIP_EBONY` |
| Ironwood grip | Grip | `COMPONENT_PISTOL_MAUSER_GRIP_IRONWOOD` |
| Pearl grip | Grip | `COMPONENT_PISTOL_MAUSER_GRIP_PEARL` |
| Standard sights | Iron sights | `COMPONENT_PISTOL_MAUSER_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_PISTOL_MAUSER_SIGHT_WIDE` |
| Ibarra variant | Variants | `COMPONENT_SHORTARM_ROLE_ENGRAVING_MAUSER_AZTEC` |

:::

### Semi-Automatic Pistol

Model: `WEAPON_PISTOL_SEMIAUTO`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Semi-Automatic Pistol — 9 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_PISTOL_SEMIAUTO_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_PISTOL_SEMIAUTO_BARREL_SHORT` |
| Standard grip | Grip | `COMPONENT_PISTOL_SEMIAUTO_GRIP` |
| Burled grip | Grip | `COMPONENT_PISTOL_SEMIAUTO_GRIP_BURLED` |
| Ebony grip | Grip | `COMPONENT_PISTOL_SEMIAUTO_GRIP_EBONY` |
| Ironwood grip | Grip | `COMPONENT_PISTOL_SEMIAUTO_GRIP_IRONWOOD` |
| Pearl grip | Grip | `COMPONENT_PISTOL_SEMIAUTO_GRIP_PEARL` |
| Standard sights | Iron sights | `COMPONENT_PISTOL_SEMIAUTO_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_PISTOL_SEMIAUTO_SIGHT_WIDE` |

:::

### Volcanic Pistol

Model: `WEAPON_PISTOL_VOLCANIC`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Volcanic Pistol — 10 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_PISTOL_VOLCANIC_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_PISTOL_VOLCANIC_BARREL_SHORT` |
| Standard grip | Grip | `COMPONENT_PISTOL_VOLCANIC_GRIP` |
| Burled grip | Grip | `COMPONENT_PISTOL_VOLCANIC_GRIP_BURLED` |
| Ebony grip | Grip | `COMPONENT_PISTOL_VOLCANIC_GRIP_EBONY` |
| Ironwood grip | Grip | `COMPONENT_PISTOL_VOLCANIC_GRIP_IRONWOOD` |
| Pearl grip | Grip | `COMPONENT_PISTOL_VOLCANIC_GRIP_PEARL` |
| Standard sights | Iron sights | `COMPONENT_PISTOL_VOLCANIC_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_PISTOL_VOLCANIC_SIGHT_WIDE` |
| Collector variant | Variants | `COMPONENT_SHORTARM_FRAME_ENGRAVING_VOLCANIC_COLLECTOR` |

:::

### Carbine Repeater

Model: `WEAPON_REPEATER_CARBINE`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Carbine Repeater — 12 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Stock | `COMPONENT_REPEATER_CARBINE_GRIP` |
| Burled grain | Stock | `COMPONENT_REPEATER_CARBINE_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_REPEATER_CARBINE_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_REPEATER_CARBINE_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_REPEATER_CARBINE_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REPEATER_CARBINE_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_REPEATER_CARBINE_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_REPEATER_CARBINE_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_CARBINE_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_CARBINE_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_CARBINE_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_CARBINE_WRAP5` |

:::

### Evans Repeater

Model: `WEAPON_REPEATER_EVANS`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Evans Repeater — 13 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Stock | `COMPONENT_REPEATER_EVANS_GRIP` |
| Burled grain | Stock | `COMPONENT_REPEATER_EVANS_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_REPEATER_EVANS_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_REPEATER_EVANS_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_REPEATER_EVANS_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REPEATER_EVANS_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_REPEATER_EVANS_WRAP` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_REPEATER_EVANS_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_EVANS_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_EVANS_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_EVANS_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_EVANS_WRAP5` |
| Winter variant | Variants | `COMPONENT_LONGARM_ROLE_ENGRAVING_EVANS_WINTER` |

:::

### Litchfield Repeater

Model: `WEAPON_REPEATER_HENRY`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Litchfield Repeater — 12 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Stock | `COMPONENT_REPEATER_HENRY_GRIP` |
| Burled grain | Stock | `COMPONENT_REPEATER_HENRY_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_REPEATER_HENRY_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_REPEATER_HENRY_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_REPEATER_HENRY_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REPEATER_HENRY_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_REPEATER_HENRY_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_REPEATER_HENRY_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_HENRY_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_HENRY_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_HENRY_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_HENRY_WRAP5` |

:::

### Lancaster Repeater

Model: `WEAPON_REPEATER_WINCHESTER`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Lancaster Repeater — 13 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Stock | `COMPONENT_REPEATER_WINCHESTER_GRIP` |
| Burled grain | Stock | `COMPONENT_REPEATER_WINCHESTER_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_REPEATER_WINCHESTER_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_REPEATER_WINCHESTER_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_REPEATER_WINCHESTER_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REPEATER_WINCHESTER_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_REPEATER_WINCHESTER_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_REPEATER_WINCHESTER_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_WINCHESTER_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_WINCHESTER_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_WINCHESTER_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_REPEATER_WINCHESTER_WRAP5` |
| Collector variant | Variants | `COMPONENT_LONGARM_FRAME_ENGRAVING_WINCHESTER_COLLECTOR` |

:::

### Bolt Action Rifle

Model: `WEAPON_RIFLE_BOLTACTION`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Bolt Action Rifle — 13 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Stock | `COMPONENT_RIFLE_BOLTACTION_GRIP` |
| Burled grain | Stock | `COMPONENT_RIFLE_BOLTACTION_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_RIFLE_BOLTACTION_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_RIFLE_BOLTACTION_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_RIFLE_BOLTACTION_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_RIFLE_BOLTACTION_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_BOLTACTION_WRAP` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_BOLTACTION_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_BOLTACTION_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_BOLTACTION_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_BOLTACTION_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_BOLTACTION_WRAP5` |
| Bounty Hunter | Variants | `COMPONENT_LONGARM_FRAME_ENGRAVING_BOLTACTION_BOUNTY` |

:::

### Elephant Rifle

Model: `WEAPON_RIFLE_ELEPHANT`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Elephant Rifle — 10 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_RIFLE_ELEPHANT_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_RIFLE_ELEPHANT_BARREL_SHORT` |
| Standard grain | Stock | `COMPONENT_RIFLE_ELEPHANT_GRIP` |
| Burled grain | Stock | `COMPONENT_RIFLE_ELEPHANT_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_RIFLE_ELEPHANT_GRIP_ENGRAVED` |
| Ironwood grain | Stock | `COMPONENT_RIFLE_ELEPHANT_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_RIFLE_ELEPHANT_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_RIFLE_ELEPHANT_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_ELEPHANT_WRAP1` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_ELEPHANT_WRAP2` |

Known options without a component name:

| Readable label | Part / page | Hash |
| --- | --- | --- |
| Wild West cloth wrap | Wrap / Cloth wraps | `0x1B2253BE` |
| Tartan cloth wrap | Wrap / Cloth wraps | `0x4CD9372B` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `0x558CC892` |
| Cartridge wrap | Wrap / Leather wraps | `0xFEB59AE5` |

These hashes are identification references; do not use them as numeric component-price keys.

:::

### Springfield Rifle

Model: `WEAPON_RIFLE_SPRINGFIELD`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Springfield Rifle — 12 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Stock | `COMPONENT_RIFLE_SPRINGFIELD_GRIP` |
| Burled grain | Stock | `COMPONENT_RIFLE_SPRINGFIELD_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_RIFLE_SPRINGFIELD_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_RIFLE_SPRINGFIELD_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_RIFLE_SPRINGFIELD_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_RIFLE_SPRINGFIELD_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_SPRINGFIELD_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_SPRINGFIELD_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_SPRINGFIELD_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_SPRINGFIELD_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_SPRINGFIELD_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_SPRINGFIELD_WRAP5` |

:::

### Varmint Rifle

Model: `WEAPON_RIFLE_VARMINT`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Varmint Rifle — 13 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Stock | `COMPONENT_RIFLE_VARMINT_GRIP` |
| Burled grain | Stock | `COMPONENT_RIFLE_VARMINT_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_RIFLE_VARMINT_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_RIFLE_VARMINT_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_REPEATER_PUMPACTION_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_REPEATER_PUMPACTION_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_VARMINT_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_VARMINT_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_VARMINT_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_VARMINT_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_VARMINT_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_VARMINT_WRAP5` |
| Naturalist variant | Variants | `COMPONENT_LONGARM_ROLE_ENGRAVING_VARMINT_NATURALIST` |

:::

### Carcano Rifle

Model: `WEAPON_SNIPERRIFLE_CARCANO`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Carcano Rifle — 10 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Stock | `COMPONENT_RIFLE_CARCANO_GRIP` |
| Burled grain | Stock | `COMPONENT_RIFLE_CARCANO_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_RIFLE_CARCANO_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_RIFLE_CARCANO_GRIP_IRONWOOD` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_CARCANO_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_CARCANO_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_CARCANO_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_CARCANO_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_CARCANO_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_CARCANO_WRAP5` |

:::

### Rolling Block Rifle

Model: `WEAPON_SNIPERRIFLE_ROLLINGBLOCK`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Rolling Block Rifle — 11 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Stock | `COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP` |
| Burled grain | Stock | `COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_IRONWOOD` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_ROLLINGBLOCK_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_RIFLE_ROLLINGBLOCK_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_ROLLINGBLOCK_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_ROLLINGBLOCK_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_ROLLINGBLOCK_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_RIFLE_ROLLINGBLOCK_WRAP5` |
| Reaper variant | Variants | `COMPONENT_LONGARM_ROLE_ENGRAVING_ROLLINGBLOCK_REAPER` |

:::

### Double-Barreled Shotgun

Model: `WEAPON_SHOTGUN_DOUBLEBARREL`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Double-Barreled Shotgun — 15 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_SHOTGUN_DOUBLEBARREL_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_SHOTGUN_DOUBLEBARREL_BARREL_SHORT` |
| Standard grain | Stock | `COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP` |
| Burled grain | Stock | `COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_SHOTGUN_DOUBLEBARREL_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_SHOTGUN_DOUBLEBARREL_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP5` |
| Krampus variant | Variants | `COMPONENT_LONGARM_ROLE_ENGRAVING_DOUBLEBARREL_KRAMPUS` |

:::

### Pump-Action Shotgun

Model: `WEAPON_SHOTGUN_PUMP`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Pump-Action Shotgun — 16 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_SHOTGUN_PUMP_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_SHOTGUN_PUMP_BARREL_SHORT` |
| Standard grain | Stock | `COMPONENT_SHOTGUN_PUMP_GRIP` |
| Burled grain | Stock | `COMPONENT_SHOTGUN_PUMP_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_SHOTGUN_PUMP_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_SHOTGUN_PUMP_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_SHOTGUN_PUMP_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_SHOTGUN_PUMP_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_SHOTGUN_PUMP_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_SHOTGUN_PUMP_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_PUMP_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_PUMP_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_PUMP_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_PUMP_WRAP5` |
| Widow variant | Variants | `COMPONENT_LONGARM_ROLE_ENGRAVING_PUMP_HALLOWEEN` |
| Trader variant | Variants | `COMPONENT_SHOTGUN_FRAME_ENGRAVING_PUMP_TRADER` |

:::

### Repeating Shotgun

Model: `WEAPON_SHOTGUN_REPEATING`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Repeating Shotgun — 14 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_SHOTGUN_REPEATING_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_SHOTGUN_REPEATING_BARREL_SHORT` |
| Standard grain | Stock | `COMPONENT_SHOTGUN_REPEATING01_GRIP` |
| Wide grain | Stock | `COMPONENT_SHOTGUN_REPEATING01_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_SHOTGUN_REPEATING01_GRIP_IRONWOOD` |
| Burled grain | Stock | `COMPONENT_SHOTGUN_REPEATING_GRIP_BURLED` |
| Standard sights | Iron sights | `COMPONENT_SHOTGUN_REPEATING_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_SHOTGUN_REPEATING_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_SHOTGUN_REPEATING01_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_SHOTGUN_REPEATING_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_REPEATING01_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_REPEATING_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_REPEATING_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_REPEATING_WRAP5` |

:::

### Sawed-Off Shotgun

Model: `WEAPON_SHOTGUN_SAWEDOFF`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Sawed-Off Shotgun — 12 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Standard grain | Grip | `COMPONENT_SHOTGUN_SAWEDOFF_GRIP` |
| Burled grain | Grip | `COMPONENT_SHOTGUN_SAWEDOFF_GRIP_BURLED` |
| Wide grain | Grip | `COMPONENT_SHOTGUN_SAWEDOFF_GRIP_EBONY` |
| Straight grain | Grip | `COMPONENT_SHOTGUN_SAWEDOFF_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_SHOTGUN_SAWED_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_SHOTGUN_SAWED_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_SHOTGUN_SAWEDOFF_WRAP1` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_SAWEDOFF_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_SAWEDOFF_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_SAWEDOFF_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_SAWEDOFF_WRAP5` |
| Moonshiner | Variants | `COMPONENT_LONGARM_ROLE_ENGRAVING_SAWEDOFF_MOONSHINER` |

:::

### Semi-Auto Shotgun

Model: `WEAPON_SHOTGUN_SEMIAUTO`. Also see the shared metals, engravings, inlays, wood finishes and other finishes below. Only options actually offered by this model can be selected.

::: details Semi-Auto Shotgun — 14 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Long barrel | Barrel / Length | `COMPONENT_SHOTGUN_SEMIAUTO_BARREL_LONG` |
| Short barrel | Barrel / Length | `COMPONENT_SHOTGUN_SEMIAUTO_BARREL_SHORT` |
| Standard grain | Stock | `COMPONENT_SHOTGUN_SEMIAUTO_GRIP` |
| Burled grain | Stock | `COMPONENT_SHOTGUN_SEMIAUTO_GRIP_BURLED` |
| Wide grain | Stock | `COMPONENT_SHOTGUN_SEMIAUTO_GRIP_ENGRAVED` |
| Straight grain | Stock | `COMPONENT_SHOTGUN_SEMIAUTO_GRIP_IRONWOOD` |
| Standard sights | Iron sights | `COMPONENT_SHOTGUN_SEMIAUTO_SIGHT_NARROW` |
| Improved sights | Iron sights | `COMPONENT_SHOTGUN_SEMIAUTO_SIGHT_WIDE` |
| Leather wrap | Wrap / Leather wraps | `COMPONENT_SHOTGUN_SEMIAUTO_WRAP1` |
| Cartridge wrap | Wrap / Leather wraps | `COMPONENT_SHOTGUN_SEMIAUTO_WRAP6` |
| Cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_SEMIAUTO_WRAP2` |
| Polka-dot cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_SEMIAUTO_WRAP3` |
| Wild West cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_SEMIAUTO_WRAP4` |
| Tartan cloth wrap | Wrap / Cloth wraps | `COMPONENT_SHOTGUN_SEMIAUTO_WRAP5` |

:::

### Improved Bow

Model: `WEAPON_BOW_IMPROVED`. All named bow options are in this table.

::: details Improved Bow — 28 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Natural | Bowstring | `COMPONENT_BOW_TRIGGER_TINT_A_1` |
| Charcoal | Bowstring | `COMPONENT_BOW_TRIGGER_TINT_A_2` |
| Purple | Bowstring | `COMPONENT_BOW_TRIGGER_TINT_A_3` |
| Sage | Bowstring | `COMPONENT_BOW_TRIGGER_TINT_A_4` |
| Snow | Bowstring | `COMPONENT_BOW_TRIGGER_TINT_A_5` |
| Amber | Bowstring | `COMPONENT_BOW_TRIGGER_TINT_A_6` |
| Gold | Bowstring | `COMPONENT_BOW_TRIGGER_TINT_A_7` |
| Brown | Bowstring | `COMPONENT_BOW_TRIGGER_TINT_A_8` |
| Natural | Leather | `COMPONENT_BOW_GRIPSTOCK_TINT_A_1` |
| Hickory | Leather | `COMPONENT_BOW_GRIPSTOCK_TINT_A_2` |
| Russet | Leather | `COMPONENT_BOW_GRIPSTOCK_TINT_A_3` |
| Myrtle | Leather | `COMPONENT_BOW_GRIPSTOCK_TINT_A_4` |
| Brown | Leather | `COMPONENT_BOW_GRIPSTOCK_TINT_A_5` |
| Smoke | Leather | `COMPONENT_BOW_GRIPSTOCK_TINT_A_6` |
| Walnut | Leather | `COMPONENT_BOW_GRIPSTOCK_TINT_A_7` |
| Linen | Leather | `COMPONENT_BOW_GRIPSTOCK_TINT_A_8` |
| Alligator variant | Variants | `COMPONENT_BOW_ROLE_ENGRAVING_IMPROVED_ALLIGATOR` |
| Horned variant | Variants | `COMPONENT_BOW_ROLE_ENGRAVING_IMPROVED_HORNED` |
| Jaguar variant | Variants | `COMPONENT_BOW_ROLE_ENGRAVING_IMPROVED_JAGUAR` |
| Inlaid wood variant | Variants | `COMPONENT_BOW_ROLE_ENGRAVING_IMPROVED_WOODEN_INLAY` |
| Cocobolo | Varnish | `COMPONENT_BOW_FRAME_TINT_A_1` |
| Maple | Varnish | `COMPONENT_BOW_FRAME_TINT_A_2` |
| Dark walnut | Varnish | `COMPONENT_BOW_FRAME_TINT_A_3` |
| Myrtle | Varnish | `COMPONENT_BOW_FRAME_TINT_A_4` |
| Ebony | Varnish | `COMPONENT_BOW_FRAME_TINT_A_5` |
| Birch | Varnish | `COMPONENT_BOW_FRAME_TINT_A_6` |
| Gray birch | Varnish | `COMPONENT_BOW_FRAME_TINT_A_7` |
| Walnut | Varnish | `COMPONENT_BOW_FRAME_TINT_A_8` |

:::

### Hunting Knife

Model: `WEAPON_MELEE_KNIFE`. All named knife options are in this table.

::: details Hunting Knife — 42 named components

| Readable label | Part / page | Component key |
| --- | --- | --- |
| Baroque | Blade / Engravings | `COMPONENT_MELEE_BLADE_ENGRAVING_1` |
| Skulls | Blade / Engravings | `COMPONENT_MELEE_BLADE_ENGRAVING_2` |
| Decorative | Blade / Engravings | `COMPONENT_MELEE_BLADE_ENGRAVING_3` |
| Iron | Blade / Metals | `COMPONENT_MELEE_BLADE_MATERIAL_1` |
| Nickel | Blade / Metals | `COMPONENT_MELEE_BLADE_MATERIAL_2` |
| Blued steel | Blade / Metals | `COMPONENT_MELEE_BLADE_MATERIAL_3` |
| Blackened steel | Blade / Metals | `COMPONENT_MELEE_BLADE_MATERIAL_4` |
| Browned steel | Blade / Metals | `COMPONENT_MELEE_BLADE_MATERIAL_5` |
| Brass | Blade / Metals | `COMPONENT_MELEE_BLADE_MATERIAL_6` |
| Gold | Blade / Metals | `COMPONENT_MELEE_BLADE_MATERIAL_7` |
| Silver | Blade / Metals | `COMPONENT_MELEE_BLADE_MATERIAL_8` |
| Copper | Blade / Metals | `COMPONENT_MELEE_BLADE_MATERIAL_9` |
| Iron | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_1` |
| Nickel | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_2` |
| Blued steel | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_3` |
| Blackened steel | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_4` |
| Browned steel | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_5` |
| Brass | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_6` |
| Gold | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_7` |
| Silver | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_8` |
| Copper | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_9` |
| Yellow enamel | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_11` |
| Blue enamel | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_12` |
| Green enamel | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_13` |
| Red enamel | Inlay materials | `COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_14` |
| Birch | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_A_1` |
| Black walnut | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_A_2` |
| Cordia | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_A_3` |
| Dark rosewood | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_A_4` |
| Bubinga | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_A_5` |
| Cocobolo | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_A_6` |
| Ebony | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_A_7` |
| Walnut | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_A_8` |
| Mahogany | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_B_1` |
| Maple | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_B_2` |
| Mesquite | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_B_3` |
| Myrtle | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_B_4` |
| Rosewood | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_B_5` |
| Wild cherry | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_B_6` |
| Light maple | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_B_7` |
| Dark walnut | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_B_8` |
| Gray birch | Grip / Varnish | `COMPONENT_MELEE_GRIP_TINT_GRAY_BIRCH` |

:::

## 3. Shared components

Shared components can be exposed as individual choices or as members of collection choices. The **Weapons in survey** column is the original recorded count; a shared key keeps the same price wherever it is used.

### Inlay materials

::: details Inlay materials — 84 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Iron | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_1` | 15 |
| Nickel | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_2` | 15 |
| Blued steel | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_3` | 15 |
| Blackened steel | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_4` | 15 |
| Browned steel | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_5` | 15 |
| Brass | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_6` | 15 |
| Gold | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_7` | 15 |
| Silver | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_8` | 15 |
| Copper | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_9` | 15 |
| Tempered steel | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_10` | 15 |
| Yellow enamel | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_11` | 15 |
| Blue enamel | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_12` | 15 |
| Green enamel | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_13` | 15 |
| Red enamel | `COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_14` | 15 |
| Iron | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_1` | 15 |
| Nickel | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_2` | 15 |
| Blued steel | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_3` | 15 |
| Blackened steel | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_4` | 15 |
| Browned steel | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_5` | 15 |
| Brass | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_6` | 15 |
| Gold | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_7` | 15 |
| Silver | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_8` | 15 |
| Copper | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_9` | 15 |
| Tempered steel | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_10` | 15 |
| Yellow enamel | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_11` | 15 |
| Blue enamel | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_12` | 15 |
| Green enamel | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_13` | 15 |
| Red enamel | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_14` | 15 |
| Iron | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_1` | 15 |
| Nickel | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_2` | 15 |
| Blued steel | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_3` | 15 |
| Blackened steel | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_4` | 15 |
| Browned steel | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_5` | 15 |
| Brass | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_6` | 15 |
| Gold | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_7` | 15 |
| Silver | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_8` | 15 |
| Copper | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_9` | 15 |
| Tempered steel | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_10` | 15 |
| Yellow enamel | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_11` | 15 |
| Blue enamel | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_12` | 15 |
| Green enamel | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_13` | 15 |
| Red enamel | `COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_14` | 15 |
| Iron | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_1` | 8 |
| Nickel | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_2` | 8 |
| Blued steel | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_3` | 8 |
| Blackened steel | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_4` | 8 |
| Browned steel | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_5` | 8 |
| Brass | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_6` | 8 |
| Gold | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_7` | 8 |
| Silver | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_8` | 8 |
| Copper | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_9` | 8 |
| Tempered steel | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_10` | 8 |
| Yellow enamel | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_11` | 8 |
| Blue enamel | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_12` | 8 |
| Green enamel | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_13` | 8 |
| Red enamel | `COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_14` | 8 |
| Iron | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_1` | 8 |
| Nickel | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_2` | 8 |
| Blued steel | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_3` | 8 |
| Blackened steel | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_4` | 8 |
| Browned steel | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_5` | 8 |
| Brass | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_6` | 8 |
| Gold | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_7` | 8 |
| Silver | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_8` | 8 |
| Copper | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_9` | 8 |
| Tempered steel | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_10` | 8 |
| Yellow enamel | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_11` | 8 |
| Blue enamel | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_12` | 8 |
| Green enamel | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_13` | 8 |
| Red enamel | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_14` | 8 |
| Iron | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_1` | 8 |
| Nickel | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_2` | 8 |
| Blued steel | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_3` | 8 |
| Blackened steel | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_4` | 8 |
| Browned steel | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_5` | 8 |
| Brass | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_6` | 8 |
| Gold | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_7` | 8 |
| Silver | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_8` | 8 |
| Copper | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_9` | 8 |
| Tempered steel | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_10` | 8 |
| Yellow enamel | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_11` | 8 |
| Blue enamel | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_12` | 8 |
| Green enamel | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_13` | 8 |
| Red enamel | `COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_14` | 8 |

:::

### Wrap

::: details Wrap: Leather — 20 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Hazel | `COMPONENT_LONGARM_WRAP_TINT_A_1` | 15 |
| Chestnut | `COMPONENT_LONGARM_WRAP_TINT_A_2` | 15 |
| Olive | `COMPONENT_LONGARM_WRAP_TINT_A_3` | 15 |
| Walnut | `COMPONENT_LONGARM_WRAP_TINT_A_4` | 15 |
| Brick red | `COMPONENT_LONGARM_WRAP_TINT_A_5` | 15 |
| Tobacco | `COMPONENT_LONGARM_WRAP_TINT_A_6` | 15 |
| Chocolate | `COMPONENT_LONGARM_WRAP_TINT_A_7` | 15 |
| Pebble | `COMPONENT_LONGARM_WRAP_TINT_A_8` | 15 |
| Black | `COMPONENT_LONGARM_WRAP_TINT_BLACK` | 15 |
| Cherry | `COMPONENT_LONGARM_WRAP_TINT_E_1` | 15 |
| Amethyst | `COMPONENT_LONGARM_WRAP_TINT_E_2` | 15 |
| Scarlet | `COMPONENT_LONGARM_WRAP_TINT_E_3` | 15 |
| Ginger | `COMPONENT_LONGARM_WRAP_TINT_E_4` | 15 |
| Navy blue | `COMPONENT_LONGARM_WRAP_TINT_E_5` | 15 |
| Mint | `COMPONENT_LONGARM_WRAP_TINT_E_6` | 15 |
| Smoke | `COMPONENT_LONGARM_WRAP_TINT_E_7` | 15 |
| Duck egg | `COMPONENT_LONGARM_WRAP_TINT_E_8` | 15 |
| Emerald | `COMPONENT_LONGARM_WRAP_TINT_E_9` | 15 |
| Sage | `COMPONENT_LONGARM_WRAP_TINT_E_10` | 15 |
| White | `COMPONENT_LONGARM_WRAP_TINT_WHITE` | 15 |

:::

::: details Wrap: Cloth — 43 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Cream | `COMPONENT_LONGARM_WRAP_TINT_B_1` | 15 |
| Ash | `COMPONENT_LONGARM_WRAP_TINT_B_2` | 15 |
| Tobacco | `COMPONENT_LONGARM_WRAP_TINT_B_3` | 15 |
| Cherry | `COMPONENT_LONGARM_WRAP_TINT_B_4` | 15 |
| Purple | `COMPONENT_LONGARM_WRAP_TINT_B_5` | 15 |
| Ginger | `COMPONENT_LONGARM_WRAP_TINT_B_6` | 15 |
| Sage | `COMPONENT_LONGARM_WRAP_TINT_B_7` | 15 |
| Cobalt | `COMPONENT_LONGARM_WRAP_TINT_B_8` | 15 |
| White | `COMPONENT_LONGARM_WRAP_TINT_C_1` | 15 |
| Turquoise | `COMPONENT_LONGARM_WRAP_TINT_C_2` | 15 |
| Saffron | `COMPONENT_LONGARM_WRAP_TINT_C_3` | 15 |
| Amethyst | `COMPONENT_LONGARM_WRAP_TINT_C_4` | 15 |
| Magenta | `COMPONENT_LONGARM_WRAP_TINT_C_5` | 15 |
| Scarlet | `COMPONENT_LONGARM_WRAP_TINT_C_6` | 15 |
| Amber | `COMPONENT_LONGARM_WRAP_TINT_C_7` | 15 |
| Emerald | `COMPONENT_LONGARM_WRAP_TINT_C_8` | 15 |
| Indigo | `COMPONENT_LONGARM_WRAP_TINT_C_9` | 15 |
| Russet | `COMPONENT_LONGARM_WRAP_TINT_D_1` | 15 |
| Coffee | `COMPONENT_LONGARM_WRAP_TINT_D_2` | 15 |
| Shadow | `COMPONENT_LONGARM_WRAP_TINT_D_3` | 15 |
| Charcoal | `COMPONENT_LONGARM_WRAP_TINT_D_4` | 15 |
| Walnut | `COMPONENT_LONGARM_WRAP_TINT_D_5` | 15 |
| Natural | `COMPONENT_LONGARM_WRAP_TINT_D_6` | 15 |
| Brown | `COMPONENT_LONGARM_WRAP_TINT_D_7` | 15 |
| Hickory | `COMPONENT_LONGARM_WRAP_TINT_D_8` | 15 |
| Wild West wrap: Russet | `COMPONENT_LONGARM_WRAP_TINT_NATIVE_1` | 15 |
| Wild West wrap: Ginger | `COMPONENT_LONGARM_WRAP_TINT_NATIVE_2` | 15 |
| Wild West wrap: Sage | `COMPONENT_LONGARM_WRAP_TINT_NATIVE_3` | 15 |
| Wild West wrap: Jewel | `COMPONENT_LONGARM_WRAP_TINT_NATIVE_4` | 15 |
| Wild West wrap: Emerald | `COMPONENT_LONGARM_WRAP_TINT_NATIVE_5` | 15 |
| Wild West wrap: Natural | `COMPONENT_LONGARM_WRAP_TINT_NATIVE_DEFAULT` | 15 |
| Polka-dot wrap: Sage | `COMPONENT_LONGARM_WRAP_TINT_POLKADOT_1` | 15 |
| Polka-dot wrap: Ginger | `COMPONENT_LONGARM_WRAP_TINT_POLKADOT_2` | 15 |
| Polka-dot wrap: Russet | `COMPONENT_LONGARM_WRAP_TINT_POLKADOT_3` | 15 |
| Polka-dot wrap: Sapphire | `COMPONENT_LONGARM_WRAP_TINT_POLKADOT_4` | 15 |
| Polka-dot wrap: Eggshell | `COMPONENT_LONGARM_WRAP_TINT_POLKADOT_5` | 15 |
| Polka-dot wrap: Natural | `COMPONENT_LONGARM_WRAP_TINT_POLKADOT_DEFAULT` | 15 |
| Tartan wrap: Sage | `COMPONENT_LONGARM_WRAP_TINT_TARTAN_1` | 15 |
| Tartan wrap: Cobalt | `COMPONENT_LONGARM_WRAP_TINT_TARTAN_2` | 15 |
| Tartan wrap: Russet | `COMPONENT_LONGARM_WRAP_TINT_TARTAN_3` | 15 |
| Tartan wrap: Mustard | `COMPONENT_LONGARM_WRAP_TINT_TARTAN_4` | 15 |
| Tartan wrap: Hickory | `COMPONENT_LONGARM_WRAP_TINT_TARTAN_5` | 15 |
| Tartan wrap: Natural | `COMPONENT_LONGARM_WRAP_TINT_TARTAN_DEFAULT` | 15 |

:::

### Grip / stock

::: details Grip / stock: Carvings — 12 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Buck scene | `COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_1` | 14 |
| Wolf scene | `COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_2` | 14 |
| Eagle scene | `COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_3` | 14 |
| Ram | `COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_4` | 14 |
| Flying eagle | `COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_5` | 14 |
| Bear | `COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_6` | 14 |
| Rattlesnake | `COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_1` | 9 |
| Scorpion | `COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_2` | 9 |
| Cougar | `COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_3` | 9 |
| Doe | `COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_4` | 9 |
| Eagle | `COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_5` | 9 |
| Buck | `COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_6` | 9 |

:::

::: details Grip / stock: Varnish — 34 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Birch | `COMPONENT_LONGARM_GRIPSTOCK_TINT_A_1` | 15 |
| Black walnut | `COMPONENT_LONGARM_GRIPSTOCK_TINT_A_2` | 15 |
| Cordia | `COMPONENT_LONGARM_GRIPSTOCK_TINT_A_3` | 15 |
| Dark rosewood | `COMPONENT_LONGARM_GRIPSTOCK_TINT_A_4` | 15 |
| Bubinga | `COMPONENT_LONGARM_GRIPSTOCK_TINT_A_5` | 15 |
| Cocobolo | `COMPONENT_LONGARM_GRIPSTOCK_TINT_A_6` | 15 |
| Ebony | `COMPONENT_LONGARM_GRIPSTOCK_TINT_A_7` | 15 |
| Walnut | `COMPONENT_LONGARM_GRIPSTOCK_TINT_A_8` | 15 |
| Mahogany | `COMPONENT_LONGARM_GRIPSTOCK_TINT_B_1` | 15 |
| Maple | `COMPONENT_LONGARM_GRIPSTOCK_TINT_B_2` | 15 |
| Mesquite | `COMPONENT_LONGARM_GRIPSTOCK_TINT_B_3` | 15 |
| Myrtle | `COMPONENT_LONGARM_GRIPSTOCK_TINT_B_4` | 15 |
| Rosewood | `COMPONENT_LONGARM_GRIPSTOCK_TINT_B_5` | 15 |
| Wild cherry | `COMPONENT_LONGARM_GRIPSTOCK_TINT_B_6` | 15 |
| Light maple | `COMPONENT_LONGARM_GRIPSTOCK_TINT_B_7` | 15 |
| Dark walnut | `COMPONENT_LONGARM_GRIPSTOCK_TINT_B_8` | 15 |
| Gray birch | `COMPONENT_LONGARM_GRIPSTOCK_TINT_GRAY_BIRCH` | 15 |
| Birch | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_1` | 8 |
| Black walnut | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_2` | 8 |
| Cordia | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_3` | 8 |
| Dark rosewood | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_4` | 8 |
| Bubinga | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_5` | 8 |
| Cocobolo | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_6` | 8 |
| Ebony | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_7` | 8 |
| Walnut | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_8` | 8 |
| Mahogany | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_1` | 8 |
| Maple | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_2` | 8 |
| Mesquite | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_3` | 8 |
| Myrtle | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_4` | 8 |
| Rosewood | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_5` | 8 |
| Wild cherry | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_6` | 8 |
| Light maple | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_7` | 8 |
| Dark walnut | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_8` | 8 |
| Gray birch | `COMPONENT_SHORTARM_GRIPSTOCK_TINT_GRAY_BIRCH` | 8 |

:::

### Barrel

::: details Barrel: Engravings — 12 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Baroque | `COMPONENT_LONGARM_BARREL_ENGRAVING_1` | 10 |
| Art Nouveau | `COMPONENT_LONGARM_BARREL_ENGRAVING_2` | 10 |
| Victorian | `COMPONENT_LONGARM_BARREL_ENGRAVING_3` | 10 |
| Decorative | `COMPONENT_LONGARM_BARREL_ENGRAVING_4` | 10 |
| Baroque | `COMPONENT_SHORTARM_BARREL_ENGRAVING_1` | 8 |
| Art Nouveau | `COMPONENT_SHORTARM_BARREL_ENGRAVING_2` | 8 |
| Victorian | `COMPONENT_SHORTARM_BARREL_ENGRAVING_3` | 8 |
| Decorative | `COMPONENT_SHORTARM_BARREL_ENGRAVING_4` | 8 |
| Baroque | `COMPONENT_SHOTGUN_BARREL_ENGRAVING_1` | 5 |
| Art Nouveau | `COMPONENT_SHOTGUN_BARREL_ENGRAVING_2` | 5 |
| Victorian | `COMPONENT_SHOTGUN_BARREL_ENGRAVING_3` | 5 |
| Decorative | `COMPONENT_SHOTGUN_BARREL_ENGRAVING_4` | 5 |

:::

::: details Barrel: Metals — 20 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Iron | `COMPONENT_LONGARM_BARREL_MATERIAL_1` | 15 |
| Nickel | `COMPONENT_LONGARM_BARREL_MATERIAL_2` | 15 |
| Blued steel | `COMPONENT_LONGARM_BARREL_MATERIAL_3` | 15 |
| Blackened steel | `COMPONENT_LONGARM_BARREL_MATERIAL_4` | 15 |
| Browned steel | `COMPONENT_LONGARM_BARREL_MATERIAL_5` | 15 |
| Brass | `COMPONENT_LONGARM_BARREL_MATERIAL_6` | 15 |
| Gold | `COMPONENT_LONGARM_BARREL_MATERIAL_7` | 15 |
| Silver | `COMPONENT_LONGARM_BARREL_MATERIAL_8` | 15 |
| Copper | `COMPONENT_LONGARM_BARREL_MATERIAL_9` | 15 |
| Tempered steel | `COMPONENT_LONGARM_BARREL_MATERIAL_10` | 15 |
| Iron | `COMPONENT_SHORTARM_BARREL_MATERIAL_1` | 8 |
| Nickel | `COMPONENT_SHORTARM_BARREL_MATERIAL_2` | 8 |
| Blued steel | `COMPONENT_SHORTARM_BARREL_MATERIAL_3` | 8 |
| Blackened steel | `COMPONENT_SHORTARM_BARREL_MATERIAL_4` | 8 |
| Browned steel | `COMPONENT_SHORTARM_BARREL_MATERIAL_5` | 8 |
| Brass | `COMPONENT_SHORTARM_BARREL_MATERIAL_6` | 8 |
| Gold | `COMPONENT_SHORTARM_BARREL_MATERIAL_7` | 8 |
| Silver | `COMPONENT_SHORTARM_BARREL_MATERIAL_8` | 8 |
| Copper | `COMPONENT_SHORTARM_BARREL_MATERIAL_9` | 8 |
| Tempered steel | `COMPONENT_SHORTARM_BARREL_MATERIAL_10` | 8 |

:::

::: details Barrel: Rifling — 2 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Improved rifling | `COMPONENT_LONGARM_BARREL_RIFLING_1` | 14 |
| Improved rifling | `COMPONENT_SHORTARM_BARREL_RIFLING_1` | 8 |

:::

### Frame

::: details Frame: Engravings — 12 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Baroque | `COMPONENT_LONGARM_FRAME_ENGRAVING_1` | 10 |
| Art Nouveau | `COMPONENT_LONGARM_FRAME_ENGRAVING_2` | 10 |
| Victorian | `COMPONENT_LONGARM_FRAME_ENGRAVING_3` | 10 |
| Decorative | `COMPONENT_LONGARM_FRAME_ENGRAVING_4` | 10 |
| Baroque | `COMPONENT_SHORTARM_FRAME_ENGRAVING_1` | 8 |
| Art Nouveau | `COMPONENT_SHORTARM_FRAME_ENGRAVING_2` | 8 |
| Victorian | `COMPONENT_SHORTARM_FRAME_ENGRAVING_3` | 8 |
| Decorative | `COMPONENT_SHORTARM_FRAME_ENGRAVING_4` | 8 |
| Baroque | `COMPONENT_SHOTGUN_FRAME_ENGRAVING_1` | 5 |
| Art Nouveau | `COMPONENT_SHOTGUN_FRAME_ENGRAVING_2` | 5 |
| Victorian | `COMPONENT_SHOTGUN_FRAME_ENGRAVING_3` | 5 |
| Decorative | `COMPONENT_SHOTGUN_FRAME_ENGRAVING_4` | 5 |

:::

::: details Frame: Metals — 20 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Iron | `COMPONENT_LONGARM_FRAME_MATERIAL_1` | 15 |
| Nickel | `COMPONENT_LONGARM_FRAME_MATERIAL_2` | 15 |
| Blued steel | `COMPONENT_LONGARM_FRAME_MATERIAL_3` | 15 |
| Blackened steel | `COMPONENT_LONGARM_FRAME_MATERIAL_4` | 15 |
| Browned steel | `COMPONENT_LONGARM_FRAME_MATERIAL_5` | 15 |
| Brass | `COMPONENT_LONGARM_FRAME_MATERIAL_6` | 15 |
| Gold | `COMPONENT_LONGARM_FRAME_MATERIAL_7` | 15 |
| Silver | `COMPONENT_LONGARM_FRAME_MATERIAL_8` | 15 |
| Copper | `COMPONENT_LONGARM_FRAME_MATERIAL_9` | 15 |
| Tempered steel | `COMPONENT_LONGARM_FRAME_MATERIAL_10` | 15 |
| Iron | `COMPONENT_SHORTARM_FRAME_MATERIAL_1` | 8 |
| Nickel | `COMPONENT_SHORTARM_FRAME_MATERIAL_2` | 8 |
| Blued steel | `COMPONENT_SHORTARM_FRAME_MATERIAL_3` | 8 |
| Blackened steel | `COMPONENT_SHORTARM_FRAME_MATERIAL_4` | 8 |
| Browned steel | `COMPONENT_SHORTARM_FRAME_MATERIAL_5` | 8 |
| Brass | `COMPONENT_SHORTARM_FRAME_MATERIAL_6` | 8 |
| Gold | `COMPONENT_SHORTARM_FRAME_MATERIAL_7` | 8 |
| Silver | `COMPONENT_SHORTARM_FRAME_MATERIAL_8` | 8 |
| Copper | `COMPONENT_SHORTARM_FRAME_MATERIAL_9` | 8 |
| Tempered steel | `COMPONENT_SHORTARM_FRAME_MATERIAL_10` | 8 |

:::

### Hammer

::: details Hammer — 20 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Iron | `COMPONENT_LONGARM_HAMMER_MATERIAL_1` | 13 |
| Nickel | `COMPONENT_LONGARM_HAMMER_MATERIAL_2` | 13 |
| Blued steel | `COMPONENT_LONGARM_HAMMER_MATERIAL_3` | 13 |
| Blackened steel | `COMPONENT_LONGARM_HAMMER_MATERIAL_4` | 13 |
| Browned steel | `COMPONENT_LONGARM_HAMMER_MATERIAL_5` | 13 |
| Brass | `COMPONENT_LONGARM_HAMMER_MATERIAL_6` | 13 |
| Gold | `COMPONENT_LONGARM_HAMMER_MATERIAL_7` | 13 |
| Silver | `COMPONENT_LONGARM_HAMMER_MATERIAL_8` | 13 |
| Copper | `COMPONENT_LONGARM_HAMMER_MATERIAL_9` | 13 |
| Tempered steel | `COMPONENT_LONGARM_HAMMER_MATERIAL_10` | 13 |
| Iron | `COMPONENT_SHORTARM_HAMMER_MATERIAL_1` | 7 |
| Nickel | `COMPONENT_SHORTARM_HAMMER_MATERIAL_2` | 7 |
| Blued steel | `COMPONENT_SHORTARM_HAMMER_MATERIAL_3` | 7 |
| Blackened steel | `COMPONENT_SHORTARM_HAMMER_MATERIAL_4` | 7 |
| Browned steel | `COMPONENT_SHORTARM_HAMMER_MATERIAL_5` | 7 |
| Brass | `COMPONENT_SHORTARM_HAMMER_MATERIAL_6` | 7 |
| Gold | `COMPONENT_SHORTARM_HAMMER_MATERIAL_7` | 7 |
| Silver | `COMPONENT_SHORTARM_HAMMER_MATERIAL_8` | 7 |
| Copper | `COMPONENT_SHORTARM_HAMMER_MATERIAL_9` | 7 |
| Tempered steel | `COMPONENT_SHORTARM_HAMMER_MATERIAL_10` | 7 |

:::

### Trigger

::: details Trigger — 20 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Iron | `COMPONENT_LONGARM_TRIGGER_MATERIAL_1` | 15 |
| Nickel | `COMPONENT_LONGARM_TRIGGER_MATERIAL_2` | 15 |
| Blued steel | `COMPONENT_LONGARM_TRIGGER_MATERIAL_3` | 15 |
| Blackened steel | `COMPONENT_LONGARM_TRIGGER_MATERIAL_4` | 15 |
| Browned steel | `COMPONENT_LONGARM_TRIGGER_MATERIAL_5` | 15 |
| Brass | `COMPONENT_LONGARM_TRIGGER_MATERIAL_6` | 15 |
| Gold | `COMPONENT_LONGARM_TRIGGER_MATERIAL_7` | 15 |
| Silver | `COMPONENT_LONGARM_TRIGGER_MATERIAL_8` | 15 |
| Copper | `COMPONENT_LONGARM_TRIGGER_MATERIAL_9` | 15 |
| Tempered steel | `COMPONENT_LONGARM_TRIGGER_MATERIAL_10` | 15 |
| Iron | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_1` | 8 |
| Nickel | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_2` | 8 |
| Blued steel | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_3` | 8 |
| Blackened steel | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_4` | 8 |
| Browned steel | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_5` | 8 |
| Brass | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_6` | 8 |
| Gold | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_7` | 8 |
| Silver | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_8` | 8 |
| Copper | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_9` | 8 |
| Tempered steel | `COMPONENT_SHORTARM_TRIGGER_MATERIAL_10` | 8 |

:::

### Iron sights

::: details Iron sights: Metals — 20 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Iron | `COMPONENT_LONGARM_SIGHT_MATERIAL_1` | 15 |
| Nickel | `COMPONENT_LONGARM_SIGHT_MATERIAL_2` | 15 |
| Blued steel | `COMPONENT_LONGARM_SIGHT_MATERIAL_3` | 15 |
| Blackened steel | `COMPONENT_LONGARM_SIGHT_MATERIAL_4` | 15 |
| Browned steel | `COMPONENT_LONGARM_SIGHT_MATERIAL_5` | 15 |
| Brass | `COMPONENT_LONGARM_SIGHT_MATERIAL_6` | 15 |
| Gold | `COMPONENT_LONGARM_SIGHT_MATERIAL_7` | 15 |
| Silver | `COMPONENT_LONGARM_SIGHT_MATERIAL_8` | 15 |
| Copper | `COMPONENT_LONGARM_SIGHT_MATERIAL_9` | 15 |
| Tempered steel | `COMPONENT_LONGARM_SIGHT_MATERIAL_10` | 15 |
| Iron | `COMPONENT_SHORTARM_SIGHT_MATERIAL_1` | 8 |
| Nickel | `COMPONENT_SHORTARM_SIGHT_MATERIAL_2` | 8 |
| Blued steel | `COMPONENT_SHORTARM_SIGHT_MATERIAL_3` | 8 |
| Blackened steel | `COMPONENT_SHORTARM_SIGHT_MATERIAL_4` | 8 |
| Browned steel | `COMPONENT_SHORTARM_SIGHT_MATERIAL_5` | 8 |
| Brass | `COMPONENT_SHORTARM_SIGHT_MATERIAL_6` | 8 |
| Gold | `COMPONENT_SHORTARM_SIGHT_MATERIAL_7` | 8 |
| Silver | `COMPONENT_SHORTARM_SIGHT_MATERIAL_8` | 8 |
| Copper | `COMPONENT_SHORTARM_SIGHT_MATERIAL_9` | 8 |
| Tempered steel | `COMPONENT_SHORTARM_SIGHT_MATERIAL_10` | 8 |

:::

### Cylinder / action

::: details Cylinder / action: Engravings — 4 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Baroque | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_1` | 7 |
| Art Nouveau | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_2` | 7 |
| Victorian | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_3` | 7 |
| Decorative | `COMPONENT_SHORTARM_CYLINDER_ENGRAVING_4` | 7 |

:::

::: details Cylinder / action: Metals — 10 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Iron | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_1` | 8 |
| Nickel | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_2` | 8 |
| Blued steel | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_3` | 8 |
| Blackened steel | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_4` | 8 |
| Browned steel | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_5` | 8 |
| Brass | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_6` | 8 |
| Gold | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_7` | 8 |
| Silver | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_8` | 8 |
| Copper | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_9` | 8 |
| Tempered steel | `COMPONENT_SHORTARM_CYLINDER_MATERIAL_10` | 8 |

:::

### Lever

::: details Lever: Engravings — 4 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Baroque | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_1` | 7 |
| Art Nouveau | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_2` | 7 |
| Victorian | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_3` | 7 |
| Decorative | `COMPONENT_LONGARM_CYLINDER_ENGRAVING_4` | 7 |

:::

::: details Lever: Metals — 10 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Iron | `COMPONENT_LONGARM_CYLINDER_MATERIAL_1` | 15 |
| Nickel | `COMPONENT_LONGARM_CYLINDER_MATERIAL_2` | 15 |
| Blued steel | `COMPONENT_LONGARM_CYLINDER_MATERIAL_3` | 15 |
| Blackened steel | `COMPONENT_LONGARM_CYLINDER_MATERIAL_4` | 15 |
| Browned steel | `COMPONENT_LONGARM_CYLINDER_MATERIAL_5` | 15 |
| Brass | `COMPONENT_LONGARM_CYLINDER_MATERIAL_6` | 15 |
| Golden | `COMPONENT_LONGARM_CYLINDER_MATERIAL_7` | 15 |
| Silver | `COMPONENT_LONGARM_CYLINDER_MATERIAL_8` | 15 |
| Copper | `COMPONENT_LONGARM_CYLINDER_MATERIAL_9` | 15 |
| Tempered steel | `COMPONENT_LONGARM_CYLINDER_MATERIAL_10` | 15 |

:::

### Trigger guard

::: details Trigger guard: Engravings — 4 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Baroque | `COMPONENT_SHOTGUN_CYLINDER_ENGRAVING_1` | 3 |
| Art Nouveau | `COMPONENT_SHOTGUN_CYLINDER_ENGRAVING_2` | 3 |
| Victorian | `COMPONENT_SHOTGUN_CYLINDER_ENGRAVING_3` | 3 |
| Decorative | `COMPONENT_SHOTGUN_CYLINDER_ENGRAVING_4` | 3 |

:::

### Scope

::: details Scope — 3 component keys

| Readable label | Component key | Weapons in survey |
| --- | --- | ---: |
| Short scope | `COMPONENT_RIFLE_SCOPE02` | 9 |
| Medium scope | `COMPONENT_RIFLE_SCOPE03` | 5 |
| Long scope | `COMPONENT_RIFLE_SCOPE04` | 2 |

:::

## 4. Coverage and unnamed options

The recorded native shop layouts contain customization options for the 25 models above. High Roller (`WEAPON_REVOLVER_DOUBLEACTION_GAMBLER`), Lowry's Revolver (`WEAPON_REVOLVER_NAVY_CROSSOVER`) and the rare double-barreled shotgun (`WEAPON_SHOTGUN_DOUBLEBARREL_EXOTIC`) have linked layouts with no customization options. The other surveyed catalogue models have no customization menu through those layouts.

The component-name survey was recorded on **21 September 2026**. It found **766 reachable items**: 688 named items and 78 items without a known `COMPONENT_*` name. The source identifies eight direct option rows by hash, including a free no-variant removal row; they appear under their weapon above. The remaining unnamed items are collection proxies or their removal members, not extra component-price keys.

An unnamed installed component uses `Config.prices.weapons.components.default`. The price configuration expects component **names**, so a numeric hash key does not provide an individual price override. Names that exist in the game but are absent from the gunsmith's offered choices are not useful price overrides.

### Export the complete associations from the game

For a development session, download <a href="/snippets/gunsmith/export-components.lua" download>export-components.lua</a> and <a href="/snippets/gunsmith/component-names.txt" download>component-names.txt</a> into `jo_gunsmith/client/dev/`, then add the two manifest entries below after the existing client scripts.

::: details Temporary fxmanifest.lua entries
```lua
client_script "client/dev/export-components.lua"
file "client/dev/component-names.txt"
```
:::

Restart jo_gunsmith, join with your RedM client, and run **`gunsmithcomponentsdoc`** in the F8 console. It reads every configured weapon's customization tree and prints one `GUNSMITH_COMPONENTS_DOC_ITEM` JSON record per model/component association, including shared collection members. Each record contains `model`, `hash`, `name`, `label`, `part`, `page` and `kind`. Unknown names are recorded as `false`.

The result is in `%LOCALAPPDATA%\RedM\RedM.app\logs\CitizenFX_log_*.log`. Use a complete run between `GUNSMITH_COMPONENTS_DOC_BEGIN` and `GUNSMITH_COMPONENTS_DOC_END`; an error or a missing end marker means the export is incomplete. Remove the temporary manifest entries and exporter after collecting the data.

The existing development diagnostic `gunsmithnames WEAPON_NAME` can also record one model at a time when its diagnostic file is loaded. A batch `gunsmithnames` result alone reports aggregate counts and the first model, rather than every association.
