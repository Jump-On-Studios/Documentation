---
outline: [2,4]
---

# 🪪 ID Card V2

Documentation related to the `jo_idcard_v2` script.

ID Card V2 lets players obtain a physical identity card with their portrait, inspect both sides in 3D, and hand it to another player. Registration offices handle replacements and renewals, fake ID sellers sell false identities, and authorized lawmen consult an animated register book to check or strike off official cards.

<!-- TODO: Add the verified store link / BuyScript product slug. -->
<!-- TODO: Add the preview video when its URL is available. -->

## 1. Installation

`jo_idcard_v2` integrates with VORP and RSG through the [`jo_libs` framework bridge](/jo_libs/modules/framework-bridge/). It requires `jo_libs` version `2.17.3` or newer and `oxmysql`.

<!-- TODO: Confirm the published jo_libs release containing getUserIdentity and getUserInventoryItems before release. The current 1.0.0 manifest checks only 2.17.2. -->

To install `jo_idcard_v2`:

1. Download the latest [`jo_libs`](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip) release and place the `jo_libs` folder in your resources folder.
2. Download ID Card V2 from your [account](https://jumpon-studios.com/account), then extract the `jo_idcard_v2` folder into your resources folder.
3. Add the `id_card` inventory item using the example for your framework below.
4. Start `oxmysql` before your framework and inventory, then add these lines to your `server.cfg` after them:

```cfg
ensure jo_libs
ensure jo_idcard_v2
```

::: tip No SQL file required
The script automatically creates its database table on first startup. The inventory item must be added separately.
:::

### Inventory item

The script registers the usable item automatically. Allow players to carry several cards, with separate metadata for each one. If you rename `id_card`, also update `Config.cardItem`.

:::: tabs
::: tab VORP

Add this item to your `items` database table:

```sql
INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `groupId`, `desc`, `weight`)
VALUES ('id_card', 'Identity card', 5, 1, 'item_standard', 1, 1, 'An identity card', 0.10);
```

Restart the inventory after adding the item or changing its limit.
:::

::: tab RSG

Add this entry to `rsg-core/shared/items.lua`:

```lua
id_card = {
    name = "id_card",
    label = "Identity card",
    weight = 10,
    type = "item",
    image = "id_card.png",
    unique = true,
    useable = true,
    shouldClose = true,
    description = "An identity card"
},
```

Place your `id_card.png` image in the inventory's image folder, then restart the server to reload its item list.
:::
::::

For lawmen, match the register and confiscation job lists to your framework's job names. These two permissions are configured separately.

## 2. Usage

The controls below are the default keyboard controls. Follow the prompts displayed by your server if its bindings or language have been changed. Menu choices that buy, replace or renew a card require holding `ENTER` for about one second.

::::: tabs class="idcard-usage-tabs"

:::: tab 🪪 Create

Registration offices are marked on the map by default.

1. Visit a registration office and approach the clerk's interaction point at the counter.
2. Press `ENTER` when **Talk** appears, then choose **Get my card**.
3. If several payment options are offered, hold `B` to cycle through them before confirming.
4. Complete any missing birth date and nationality information. Your real character name comes from the framework; this menu does not rename the character. When the framework stores an age, the birth year is fixed and you choose only the day and month.
5. Review **Identity** and **Description** in the summary, then hold `ENTER` on **Go to the photo studio**.
6. Wait for the photograph. You are taken to a private studio and returned to your original position automatically. Hats, glasses and masks are temporarily removed for an official photograph and restored afterwards.

After the photograph, the server checks the purchase again, takes payment, saves the official record and gives the card item. You can cancel the information panel or go back from the summary before entering the studio without being charged.

Each character can have one unstruck official card, including an expired one. If the character already has one, the office offers replacement and renewal instead of another first purchase. Carrying a fake or someone else's card does not make it your official identity.

The printed identity and physical description are saved when the card is created. The card's town, state, seal, revenue stamp and clerk signature identify its issuing office. Changing clothes later does not update an existing portrait.

::::

:::: tab 🤝 Inspect

Use a card item from your inventory to hold it in your hand. The portrait can take a moment to appear.

| Context | Default key | Action |
| --- | --- | --- |
| Holding a card | `R` | Flip between the front and back. |
| Holding a card | `Z` | Zoom in on the visible side; press again to leave zoom. You can still flip while zoomed. |
| Holding your card item | `B` | Offer it to the closest available player. |
| Holding your card item | `X` | Put it away. |
| Receiving an offer | `G` | Accept the offered card from the notification. |
| Inspecting another player's card | `X` | Give it back. |
| Inspecting another player's card, when authorized | Hold `C` | Confiscate it. |

`Backspace` also leaves zoom.

To show a card, stand near the intended recipient and press `B`. The server chooses the closest player in the same routing bucket, within 3 metres by default. The recipient has 10 seconds by default to accept. An occupied player cannot receive another card.

The card item stays in the original inventory during inspection. Giving it back closes the view; confiscation transfers the actual item to the inspector. If the inspector cannot carry it, it is returned to its original holder. Confiscation does not strike off or invalidate the official record.

An inspection also ends if the players move too far apart (5 metres by default), one disconnects, or the item is no longer in the original inventory. Only one card interaction can run per player at a time.

Cards can be inspected on foot. Using one is refused while dead, swimming, in water, ragdolling, handcuffed, mounted, in a vehicle or in a scenario. Entering one of these states or interrupting the holding animation closes the card. Other players see the holding animation; the printed content is shown to the person inspecting it.

::::

:::: tab 🔁 Replace

1. Return to an official registration office.
2. Choose **Replace or renew my card**.
3. Select **Report my card stolen** or **Report my card lost**.
4. Select a payment option if needed, then hold `ENTER` to confirm.

You receive a new card with a new number and the same saved identity, description and portrait. Its issue details and validity are recalculated. The old record is struck off as stolen or lost, and the old item is kept if it is still in an inventory. It remains readable, but the register shows its cancellation.

If a lawman already struck off your card from the register, the office offers a direct replacement at the duplicate price. It keeps the saved photograph and gives a new number. You do not report the same card a second time.

::::

:::: tab 📷 Renew

1. Open **Replace or renew my card** at an official office.
2. Choose **Renew my card**, select the payment option, then hold `ENTER`.
3. Complete the photo studio sequence.

Renewal always takes a new photograph. It updates the existing record's portrait, issue office, issue date and expiry date while keeping its number, identity, physical description and inventory item. Renewal is available before or after expiration. Use the replacement flow for a card that has been struck off.

When expiration is enabled, validity is measured in real server days. A card remains valid throughout its expiry date. Without an expiry date, it does not expire. Printed issue, expiry and strike dates are shifted to the configured game year; changing the game year does not extend real validity.

::::

:::: tab 🎭 Fakes

The supplied fake ID seller is in Lemoyne and has no map blip.

Find a fake ID seller, press `ENTER` on **Talk**, then choose **Buy a fake card**. Select a quality and payment option, hold `ENTER`, and complete the studio sequence. For a cheap fake, fill in the false identity before the photograph.

| | Cheap card | Premium card |
| --- | --- | --- |
| Name and nationality | Chosen by the buyer. | Copied from a randomly selected official card belonging to another character of the same sex. |
| Number | A new number with no official register entry. | The victim's official card number. |
| Issue details | A randomly chosen official issuing office and a new issue date. | The victim's office, issue date and expiry date. |
| Portrait, birth date and sex | The buyer's. | The buyer's. |
| Physical description | The buyer's, with possible incorrect fields. | The buyer's, with possible incorrect fields. |
| Printing defects | Visible clues according to the server's settings. | No printing defects. |

Cheap names must be nonempty, at most 50 characters, and contain letters, spaces, apostrophes or hyphens. Nationality must be one of the offered choices. A premium fake cannot be bought when no eligible, unstruck, unexpired official card exists for another character of the same sex. No payment is taken in that case.

A fake does not create an official entry. A cheap number finds nothing in the register; a premium number finds the victim. Compare the portrait, date of birth and description as well as the name and number.

Cheap printing clues can include mismatched towns on seals and stamps, a seal that misses the photograph, a missing signature, a misspelled clerk name, malformed numbers or dates, inconsistent dates, a single border, ink blots, shifted printing, or a photograph with headwear. These defects are saved with the fake and remain the same each time it is inspected. Their availability and frequency depend on the server's settings. Masks are always removed from photographs.

::::

:::: tab 📖 Register

1. With an authorized job, approach the reader's place in front of a register book at an office counter.
2. Press `ENTER` on **Open register**. The book opens independently of the clerk's menu.
3. Use the arrow keys to browse, or search by number or name.

| Default key | Action |
| --- | --- |
| `LEFT` / `RIGHT` | Previous / next page or search result. |
| `N` | Search an exact card number. |
| `F` | Search a name. |
| `R` | Start striking off the eligible card displayed after a search. |
| `X` | Close the book. |

Normal browsing shows two official records per spread, in number order. Searches show a result index on the left and the selected record on the right, with up to eight results, newest first. Name searches accept at least two characters and match both first-name/last-name orders. Number searches require the full number with the configured number of digits; keep leading zeroes.

By default, an office's book lists official cards issued in that town, including cards from other offices in the same town. A globally scoped register lists every town. Expired and struck records remain visible with their markings; fake records are never listed. The register provides the official portrait, identity, description, issue details and cancellation information.

::::

:::: tab 🚫 Strike off

1. Search the register for the official card.
2. Display its record. **Strike off** is available only after a search, on an unstruck and unexpired official card.
3. Press `R`, select **Stolen** or **Lost**, and check the displayed identity.
4. Click the red **Strike off** button to confirm. Pressing `ENTER` alone does not confirm this action.

The record is cancelled immediately and the book displays the reason and date. This is permanent: the book has no undo. The holder receives no automatic notification and must visit a registration office for a replacement. The item itself is not removed.

::: warning Check the person, not only the number
A premium fake uses a real person's number. Striking off the result cancels the victim's official card. Compare the official portrait and identity with the person presenting the document before confirming.
:::
::::
:::::

## 3. Configuration

<!-- TODO: Confirm the product API slug and publish its configuration files. redm/id-card-v2 returned HTTP 404 during documentation preparation. -->
<ScriptConfig scriptPath="redm/id-card-v2" />

For the shared customization conventions, see [Config folder](/DeveloperResources/scripts-configuration/config-folder).

## 4. FAQ

::: details Which frameworks are supported?
VORP has been tested in game. RSG and RSG v2 identity and inventory integrations are implemented through jo_libs but have not been validated in game in this version.

For other bridges, card creation requires a first name, last name and a valid birth date or age. `HasIDCard` also needs inventory enumeration, currently implemented for VORP and RSG inventories. Support for jo_libs alone does not guarantee these capabilities.
:::

::: details The office says my identity is unavailable.
Check that jo_libs provides `getUserIdentity`, and that the character has a first name, last name and valid birth date or age. A bridge with only the character's name is insufficient. Missing nationality can be completed at the office; a missing birth date can be completed only when a valid age is available.
:::

::: details I paid, but the purchase says the card item could not be given.
Check that the inventory item exists, is usable and can retain individual metadata. Allow more than one card and leave enough inventory capacity. Restart the inventory after changing cached item definitions. The failed new card is removed and its price is refunded; a failed duplicate also restores the old record when that purchase had just struck it off.
:::

::: details A card says it is not in the register when I use the item.
The usable item requires both `metadata.id` and the matching `metadata.serial`. An item manually created without those values, with mismatched values, or whose database record was removed cannot be opened. Let the registration or fake purchase flow issue the item.
:::

::: details I cannot see the Open register or Confiscate prompt.
Register access and confiscation use different job lists and server filters. Match each permission to your framework's job names. For a register, stand in the reader's place facing the book; the interaction point is in front of it. The card and clerk interactions also hide other nearby prompts while in use.
:::

::: details A number cannot be found, but the player has a card.
A local register only searches its own town. Try an office in the issuing town or a register configured for global access. A cheap fake has no official entry. A premium fake resolves to the victim's official record. Check the number carefully because a cheap fake can also print a malformed number.
:::

::: details My card is expired or struck, but I can still read it.
Inspection shows the physical document. It does not certify that the document is valid. The official register shows expiry and cancellation; integrations can use `HasValidID` or `CheckCard` when they need authoritative checks.
:::

::: details The photograph does not show my new outfit, or renewal did not change my identity.
The portrait is saved from the photo session. Renewal takes a new photograph while preserving the saved identity and physical description. A duplicate keeps the old photograph as well. Changing the current character's appearance does not rewrite an existing card automatically.
:::

::: details Can I use this as an upgrade of kd_idcard?
ID Card V2 is a separate resource with its own database table and card metadata. No automatic migration from `kd_idcard` is provided. Do not assume that old items or card records can be used directly.
:::

## 5. For developers

### Integration setup

Use the public exports and hooks below from your own resource. The script's network callbacks, card display events, internal classes and UI scene module are implementation details, not external entry points for issuing cards or bypassing inventory checks.

For hook integrations, load `@jo_libs/init.lua` and declare `jo_libs` as a dependency in your manifest. Put the following registration code on the same side as the chosen hook:

```lua
jo.onResourceStart("jo_idcard_v2", function()
    exports.jo_idcard_v2:registerAction("cardCreated", function(source, card, price)
        print(("Player %s received card %s"):format(source, card.serial))
    end)
end)
```

This example belongs in a **server script**. `jo.onResourceStart` handles a parent that is already ready and registers again after its restarts. For this restart behavior, depend on `jo_libs` rather than declaring `jo_idcard_v2` as a manifest dependency. For runtime export calls, check `GetResourceState("jo_idcard_v2") == "started"` before calling. No local hook module is needed to call the parent's registration exports. Hook priority is optional and defaults to `10`.

### Data contracts

| Value | Contract |
| --- | --- |
| `source`, `owner`, `target` | Integer server player IDs. `source` means the actor named in each hook, which can be the buyer, inspector or lawman. |
| `desk` | The configured official office or fake seller. Common fields include `id`, `name`, `npc` and `blip`; official offices also have `town`, optional `clerkName`, `issue` and/or `register`. A fake seller has no official town or register. |
| Server `card` / `newCard` / `oldCard` / `victim` | A `Card` instance. It can contain `id`, `serial`, private holder `identifier` / `charid`, `kind` (`official` or `fake`), `fakeQuality`, `fakeClues`, `status` (`valid` or `struck`), `struckReason`, `struckAt`, identity, `description`, `appearance`, `issuedDesk`, `issuedTown`, `issuedAt` and `expiresAt`. Date strings are `YYYY-MM-DD`; server issue, expiry and strike dates use real years. Do not forward the whole object to clients. |
| Display data | A plain table containing `serial`, `firstname`, `lastname`, `birthdate`, `gender`, `nationality`, `description`, `issuedTown`, `issuedAt`, `expiresAt`, `clerkName` and optional `clues`. `issuedTown` is a town key. Issue and expiry dates use the game year. No database ID, holder IDs, `kind`, `fakeQuality`, `status` or `appearance` is included. |
| `description` | Raw physical values: `skinTone`, `eyes`, `height` and `build`. They are not translated label strings. |
| Register result | Display identity and description plus `expired`, `status`, `struckReason`, `struckAt` and portrait `appearance = { skin, clothes }`; no holder IDs. Dates shown by the register use the game year. |
| `price` | The selected jo_libs `PriceClass`, not the entire price group. Purchase actions receive the price actually debited, empty for a free operation. Price filters receive a copy and must return a valid price table, for example `{ money = 5 }`, or the received price. |

Action card objects are operation snapshots. A freshly inserted card may not yet contain its database-generated issue or expiry dates. `cardDuplicated` receives an old object whose in-memory status may still say `valid`; `cardRenewed` receives the previous issue and expiry dates even though the database has been updated. `cardStruck` is reloaded and contains the new cancellation information. Use the action's documented meaning rather than inferring completion from those snapshot fields.

### Exports

All three exports run on the **server** and read authoritative card records. `HasIDCard` returns `nil`, `HasValidID` returns `false` and `CheckCard` returns `nil` while the database is not initialized.

#### <Badge type="server" text="Server" /> CheckCard

Classifies an item using its exact metadata. Both the database ID and serial must match. It does not check possession or whether the person presenting the item is its rightful holder.

```lua
-- metadata: table { id: integer, serial: string }
-- Returns "official", "fake", "struck", "expired", or nil.
local status = exports.jo_idcard_v2:CheckCard(metadata)
```

Classification takes precedence in this order: `fake`, `struck`, `expired`, `official`. An expired fake still returns `fake`; a struck and expired official card returns `struck`. Invalid metadata or a missing record returns `nil`.

#### <Badge type="server" text="Server" /> HasIDCard

Returns display data for a nonexpired card carried by the player, or `nil`. This is a presentable document check: it can return a fake, a struck card, or another character's card. The calling resource decides whether the printed identity is acceptable.

```lua
-- source: integer|string server player ID
-- Returns display data (table), or nil.
local card = exports.jo_idcard_v2:HasIDCard(source)
if card then
    print(card.firstname, card.lastname, card.serial)
end
```

Selection prefers the current character's unstruck official card, then their other cards, then cards belonging to other characters. All candidates must be nonexpired and match their item's ID and serial. No further order is guaranteed within a priority. Only the configured card item is considered.

This export needs `jo.framework:getUserInventoryItems`. It returns `nil` when the function is unavailable or the inventory supplies no eligible items. Inventory enumeration is implemented for VORP and RSG inventories.

#### <Badge type="server" text="Server" /> HasValidID

Returns whether the current character has their own official, unstruck, nonexpired card in their inventory with the correct ID and serial. A fake, a confiscated card belonging to someone else, or a valid record without its inventory item does not qualify.

```lua
-- source: integer|string server player ID
-- Returns boolean.
local allowed = exports.jo_idcard_v2:HasValidID(source)
```

### Actions

[Actions](/DeveloperResources/actions) run after the operation described below. Their callbacks have no replacement return value. Entries are listed alphabetically.

#### <Badge type="server" text="Server" /> cardConfiscated

Runs after the card item was removed from its holder and successfully given to the inspector. It does not mean the official record was cancelled.

```lua
-- source: integer inspector; owner: integer original item holder; card: Card
exports.jo_idcard_v2:registerAction("cardConfiscated", function(source, owner, card)
    print(source, owner, card.serial)
end)
```

#### <Badge type="server" text="Server" /> cardCreated

Runs after an official card is saved and its item successfully given, after payment.

```lua
-- source: integer buyer; card: Card; price: PriceClass actually debited
exports.jo_idcard_v2:registerAction("cardCreated", function(source, card, price)
    print(source, card.serial)
end)
```

#### <Badge type="server" text="Server" /> cardDuplicated

Runs after a replacement is saved and its item given, after payment. A newly reported old card has been struck off; a previously struck record stays struck.

```lua
-- source: integer buyer; newCard: Card; oldCard: Card; price: PriceClass debited
exports.jo_idcard_v2:registerAction("cardDuplicated", function(source, newCard, oldCard, price)
    print(oldCard.serial, newCard.serial)
end)
```

#### <Badge type="server" text="Server" /> cardInspected

Runs after the recipient accepts an offered card and the server sends its inspection view. The item is still in the owner's inventory.

```lua
-- source: integer recipient; owner: integer item holder; card: Card
exports.jo_idcard_v2:registerAction("cardInspected", function(source, owner, card)
    print(source, owner, card.serial)
end)
```

#### <Badge type="server" text="Server" /> cardRenewed

Runs after payment and a successful database renewal. The passed card has its new appearance and issuing office, but still contains the previous issue and expiry dates in memory.

```lua
-- source: integer buyer; card: Card; price: PriceClass actually debited
exports.jo_idcard_v2:registerAction("cardRenewed", function(source, card, price)
    print(source, card.serial)
end)
```

#### <Badge type="server" text="Server" /> cardStruck

Runs after an official card is struck off from the register. The card is reloaded from the database. This action does not run for a replacement purchase; use `cardDuplicated` for that flow.

```lua
-- source: integer lawman; desk: table; card: Card with updated strike data
-- reason: "theft"|"loss"
exports.jo_idcard_v2:registerAction("cardStruck", function(source, desk, card, reason)
    print(card.serial, reason, card.struckAt)
end)
```

#### <Badge type="client" text="Client" /> deskOpened

Runs after the clerk's menu is built and opened, including the fake ID seller's menu.

```lua
-- desk: table official office or fake seller
exports.jo_idcard_v2:registerAction("deskOpened", function(desk)
    print(desk.id)
end)
```

#### <Badge type="server" text="Server" /> fakeCardCreated

Runs after a fake is saved and its item given, after payment. `victim` is the official card copied by a premium fake, or `nil` for a cheap fake.

```lua
-- source: integer buyer; card: Card (kind = "fake"); victim: Card|nil
-- price: PriceClass actually debited
exports.jo_idcard_v2:registerAction("fakeCardCreated", function(source, card, victim, price)
    print(card.serial, card.fakeQuality, victim and victim.serial)
end)
```

#### <Badge type="server" text="Server" /> registerOpened

Runs when opening the register succeeds after distance and access checks. It runs before the client finishes the book-opening animation.

```lua
-- source: integer reader; desk: table; total: integer official records in scope
exports.jo_idcard_v2:registerAction("registerOpened", function(source, desk, total)
    print(source, desk.id, total)
end)
```

#### <Badge type="server" text="Server" /> registerSearched

Runs after a successful register search, including a search with no matches. Query and results are sanitized server data.

```lua
-- source: integer reader; desk: table
-- query: table { serial: string } or { name: string }
-- results: table[] register results, possibly empty
exports.jo_idcard_v2:registerAction("registerSearched", function(source, desk, query, results)
    print(query.serial or query.name, #results)
end)
```

### Filters

[Filters](/DeveloperResources/filters) must return the expected type. Return the received value to preserve earlier filters. Permission examples below preserve an existing refusal; return `false` to add a restriction. Essential checks such as distance, item matching, ownership and record eligibility still apply.

Filters can run more than once per operation. In particular, studio permissions and prices are checked before entry and again before payment. Keep these callbacks synchronous and free of payments, rewards or other one-time effects.

#### <Badge type="server" text="Server" /> canAccessRegister

Controls register access. The initial value is membership in the office's register job list, or the global list when it has no override. It runs for prompt eligibility and each open, page request, search and strike operation. A custom authorization integration can extend this job rule; distance and scope checks remain.

```lua
-- allowed: boolean job access / previous filter result
-- source: integer reader; desk: table; returns boolean
exports.jo_idcard_v2:registerFilter("canAccessRegister", function(allowed, source, desk)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canBuyCard

Runs before the first-card studio and again before payment. Returning `false` refuses the purchase.

```lua
-- allowed: boolean (initially true); source: integer buyer; desk: table
-- Returns boolean.
exports.jo_idcard_v2:registerFilter("canBuyCard", function(allowed, source, desk)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canBuyFakeCard

Runs before the fake studio and again before payment. The identity argument is a copy of the sanitized purchase request; the final victim is not supplied here.

```lua
-- allowed: boolean (initially true); source: integer buyer; desk: table fake seller
-- quality: "cheap"|"premium"
-- fake: { quality, firstname, lastname, nationality } for cheap, { quality } for premium
-- Returns boolean.
exports.jo_idcard_v2:registerFilter("canBuyFakeCard", function(allowed, source, desk, quality, fake)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canConfiscateCard

Controls whether the inspector can keep a card. The initial value comes from the confiscation job list. It runs when the card is accepted to decide prompt visibility, then again when confiscation is requested.

```lua
-- allowed: boolean job access / previous filter result
-- source: integer inspector; owner: integer original item holder; card: Card
-- Returns boolean.
exports.jo_idcard_v2:registerFilter("canConfiscateCard", function(allowed, source, owner, card)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canDuplicateCard

Runs after selecting an eligible official card and validating the reason, before calculating the duplicate price. `reason` is `nil` when replacing a card already struck off from the register.

```lua
-- allowed: boolean (initially true); source: integer buyer; desk: table; card: Card old record
-- reason: "theft"|"loss"|nil; returns boolean
exports.jo_idcard_v2:registerFilter("canDuplicateCard", function(allowed, source, desk, card, reason)
    return allowed
end)
```

#### <Badge type="client" text="Client" /> canOpenDesk

Runs when the player activates **Talk**, before requesting the draft and opening the clerk's menu. This controls the client interface; use server purchase filters for authoritative restrictions.

```lua
-- allowed: boolean (initially true); desk: table office or fake seller
-- Returns boolean.
exports.jo_idcard_v2:registerFilter("canOpenDesk", function(allowed, desk)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canRenewCard

Runs before the renewal studio and again before payment, after finding the character's eligible official card.

```lua
-- allowed: boolean (initially true); source: integer buyer; desk: table; card: Card
-- Returns boolean.
exports.jo_idcard_v2:registerFilter("canRenewCard", function(allowed, source, desk, card)
    return allowed
end)
```

#### <Badge type="client" text="Client" /> canSeeDeskBlip

Runs once per office or fake seller when enabled blips are created after resource readiness. Return `false` to hide an eligible blip. It does not enable a blip disabled in configuration, and it is not reevaluated continuously when a player's job changes.

```lua
-- allowed: boolean (initially true); desk: table office or fake seller
-- Returns boolean.
exports.jo_idcard_v2:registerFilter("canSeeDeskBlip", function(allowed, desk)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canShowCard

Runs after the server finds the nearest eligible recipient and before sending the inspection request.

```lua
-- allowed: boolean (initially true); source: integer item holder
-- target: integer recipient; card: Card; returns boolean
exports.jo_idcard_v2:registerFilter("canShowCard", function(allowed, source, target, card)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canStrikeCard

Runs after register access, distance, scope, number, status and reason checks, before striking off the record. The card is an unstruck, unexpired official card. Returning `true` does not bypass those preceding checks.

```lua
-- allowed: boolean (initially true); source: integer lawman; desk: table
-- card: Card; reason: "theft"|"loss"; returns boolean
exports.jo_idcard_v2:registerFilter("canStrikeCard", function(allowed, source, desk, card, reason)
    return allowed
end)
```

#### <Badge type="client" text="Client" /> deskMenuItems

Replaces the clerk's home-menu item list before it is added to `jo.menu`. Return an array of valid menu items. This does not control server permissions.

```lua
-- items: table[] jo.menu items; desk: table; draft: table server draft
-- Returns table[] menu items.
exports.jo_idcard_v2:registerFilter("deskMenuItems", function(items, desk, draft)
    return items
end)
```

For an official office, the draft can contain a new-card `card`, `missing` flags and `birthYear`; `owned = true` with `card` and `expired`; `struck = { serial, reason, at }`; or `success = false` with `reason`. A fake seller receives only `{ success = true }`. Handle these variants before reading optional fields.

#### <Badge type="server" text="Server" /> overwriteCardPrice

Replaces the selected first-card price before studio entry and again before payment. The fourth argument is always `nil`.

```lua
-- price: PriceClass; source: integer buyer; desk: table; card: nil
-- priceIndex: integer selected alternative (1-based); returns table price
exports.jo_idcard_v2:registerFilter("overwriteCardPrice", function(price, source, desk, card, priceIndex)
    return price
end)
```

#### <Badge type="server" text="Server" /> overwriteDuplicatePrice

Replaces the selected replacement price before checking funds and taking payment. `card` is the old official record, including a previously struck record in the direct replacement flow.

```lua
-- price: PriceClass; source: integer buyer; desk: table; card: Card old record
-- priceIndex: integer selected alternative (1-based); returns table price
exports.jo_idcard_v2:registerFilter("overwriteDuplicatePrice", function(price, source, desk, card, priceIndex)
    return price
end)
```

#### <Badge type="server" text="Server" /> overwriteFakePrice

Replaces the selected fake-card price before studio entry and again before payment. The fourth argument is the quality string, not a card object.

```lua
-- price: PriceClass; source: integer buyer; desk: table fake seller
-- quality: "cheap"|"premium"; priceIndex: integer (1-based); returns table price
exports.jo_idcard_v2:registerFilter("overwriteFakePrice", function(price, source, desk, quality, priceIndex)
    return price
end)
```

#### <Badge type="server" text="Server" /> overwriteRenewalPrice

Replaces the selected renewal price before studio entry and again before payment.

```lua
-- price: PriceClass; source: integer buyer; desk: table; card: Card being renewed
-- priceIndex: integer selected alternative (1-based); returns table price
exports.jo_idcard_v2:registerFilter("overwriteRenewalPrice", function(price, source, desk, card, priceIndex)
    return price
end)
```

An empty returned table makes the operation free. A value other than a table refuses the operation. The server normalizes returned tables through jo_libs pricing; keep them valid prices. The selected alternative is resolved on the server and an invalid selection is refused before the filter.

### Integration examples

#### Require an official identity for an external service

Place this check in the **server handler** that authorizes your own service, before taking payment or giving a reward. It requires `jo_idcard_v2` to be running and an inventory supported by its validity check.

```lua
local function canUseService(playerId)
    if GetResourceState("jo_idcard_v2") ~= "started" then return false end
    return exports.jo_idcard_v2:HasValidID(playerId)
end

-- In your existing server handler:
-- if not canUseService(source) then return end
-- Continue your service's own permission and payment checks.
```

Use `HasIDCard` instead if your roleplay service should accept a presentable false identity. Use `CheckCard` only when the integration is intended to know the authoritative truth of a specific item; obtain its metadata from trusted server inventory data.

#### Restrict premium fakes to an approved list of buyers

Place this in a **server script** with the integration setup above. Populate `approvedCharacters` from your own persistent authorization system; the example starts with no approved characters. Existing filter refusals remain in force.

```lua
local approvedCharacters = {} -- Keys: "identifier|charid"; value: true

jo.onResourceStart("jo_idcard_v2", function()
    exports.jo_idcard_v2:registerFilter("canBuyFakeCard", function(allowed, source, desk, quality, fake)
        if not allowed then return false end
        if quality ~= "premium" then return allowed end
        local ids = jo.framework:getUserIdentifiers(source)
        if not ids then return false end
        local key = tostring(ids.identifier) .. "|" .. tostring(ids.charid)
        return approvedCharacters[key] == true
    end)
end)
```

The filter is checked before the studio and before payment. It does not charge the player or select the victim; those remain part of the card purchase flow.
