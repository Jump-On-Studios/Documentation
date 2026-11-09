---
outline: [2,4]
---

# ⚖️ Auction House

Documentation related to the `jo_auction_house` script.

`jo_auction_house` gives players a market run from auction houses across the map. Players sell items at a fixed price or at auction, post buy orders for items they want and check the median price exchanged before trading. Purchased items, unsold lots and money earned wait in a private chest at the auction house.

<!-- TODO: check the shop URL and replace TODO_PREVIEW_EMBED_URL once the product page and video are published. -->
:::: tabs
::: tab BUY
[Buy it on the shop](https://jumpon-studios.com/redm/auction-house)
:::

::: tab PREVIEW
<iframe width="560" height="315" src="TODO_PREVIEW_EMBED_URL" title="RedM - Auction House" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
:::
::::

## 1. Installation

`jo_auction_house` works with the frameworks supported by the [`jo_libs` framework bridge](/jo_libs/modules/framework-bridge/#compatible-frameworks).

The script requires:

- `jo_libs` version `2.17.1` or newer
- `oxmysql`

To install `jo_auction_house`:

1. Download the latest [`jo_libs`](https://github.com/Jump-On-Studios/RedM-jo_libs/releases/latest/download/jo_libs.zip) release.
2. Unzip it and place the `jo_libs` folder in your resources folder.
3. Download `jo_auction_house` from your [account](https://jumpon-studios.com/account).
4. Unzip it and place the `jo_auction_house` folder in your resources folder.
5. Start the resources in this order in your `server.cfg`, after your framework and inventory:

```cfg
ensure oxmysql
ensure jo_libs
ensure jo_auction_house
```

:::tip No SQL file required
The script creates its database tables automatically on its first startup.
:::

:::warning Choose the market mode before the first start
`Config.marketMode` decides whether each auction house has its own market (`"local"`, default) or all of them share one (`"global"`). The mode is saved in the database on the first start and cannot be changed afterwards: the resource refuses to start if the configuration no longer matches.
:::

To let administrators use the removal commands, grant them the `jo_auction_house.admin` permission:

```cfg
add_ace group.admin jo_auction_house.admin allow
```

The **Auction House** script is now ready to use.

## 2. Usage

Each auction house has a clerk and a chest next to it, shown on the map by a blip. The script ships with auction houses in Valentine, Saint Denis and Blackwater.

- In **local** mode, each auction house has its own lots and buy orders. Items and money are collected at the auction house where the trade happened.
- In **global** mode, every auction house shows the same market. Items and money can be collected at any chest.

Approach the clerk and press `ENTER` to open the auction house. The interface is split into counters: **Market**, **Wanted**, **Sell**, **My sales** and **History**. Press `Q` and `E` to change counter and `ESC` to close.

:::: tabs
::: tab 🛒 Buying
1. Open the **Market** counter. Filter by category, search by name (`F`), choose between fixed prices and auctions, and sort by price or ending time.
2. Select a lot to open its sheet. It shows the price per unit, the seller's remaining quantity and a market verdict against the median price exchanged.
3. Choose the quantity, then select **Buy** and confirm.

The price is taken from your wallet at once. The items wait in the chest of the auction house: open it to receive them.

A lot priced in money can be bought in parts when partial trades are enabled. Lots asking for items instead of money (tagged **Trade**) and auctions are bought whole. Your own lots cannot be bought unless the server allows it.
:::

::: tab 💰 Selling
1. Open the **Sell** counter. It lists the items of your satchel that can be traded.
2. Select an item, then the quantity and the category.
3. Under **Fixed price**, enter a price per unit in dollars, gold or both. When barter is enabled, switch the price to **Items** to ask for one catalogue item instead.
4. Select the sale button and check the receipt: gross price, commission and what you receive.
5. Confirm to publish the lot.

The items leave your satchel at once. A lot cannot be edited: cancel it from **My sales** and publish it again.

The commission is deducted from what the seller receives. Barter lots pay no commission. A lot that is not sold before it expires returns to your chest.
:::

::: tab 🔨 Auctions
##### Start an auction

1. In the **Sell** counter, select an item and switch the form to **Auction**.
2. Choose the currency, the starting price, an optional buy-now price and the duration.
3. Confirm the receipt to publish the auction.

An auction can be cancelled only while nobody has bid on it.

##### Bid

1. In the **Market** counter, select a lot tagged **Auction**.
2. Select **Place a bid**. The amount is prefilled with the next minimum bid.
3. Confirm the receipt.

The bid is taken from your wallet when you place it. Raising your own bid only charges the difference. When another player outbids you, your bid is returned as money to collect at the chest, never directly to your wallet. Bidders stay anonymous, and late bids do not extend the auction.

##### Buy now and closing

**Buy now** closes the auction at once, as long as no bid has reached the buy-now price. When an auction ends, the highest bidder wins: the lot waits in their chest and the seller collects the money at theirs. An auction without bids returns to the seller's chest.
:::

::: tab 📜 Buy orders
##### Post a buy order

1. Open the **Wanted** counter and select **Post a buy order**.
2. Search for the item. You do not need to own it.
3. Choose the quantity and the price per unit in dollars, gold or both. When barter is enabled, switch to **Items** to offer a stack from your satchel for the whole order.
4. Choose the duration and confirm the receipt.

The total is taken from your wallet (or the items from your satchel) when the order is posted and held until it is supplied. Supplied items wait in your chest. Cancel an order from its sheet or from **My sales → My orders**: what remains held is returned at the chest. An expired order is refunded the same way.

##### Supply an order

1. Open the **Wanted** counter. **Only those I can supply** keeps the orders matching your satchel.
2. Select an order, choose the quantity and confirm.

The items are taken from one stack of your satchel. The money, after commission, waits at the chest. Buy orders priced in money can be supplied in parts when partial trades are enabled.
:::

::: tab 📦 Chest & money
The chest next to the clerk is private to each character.

- Press `ENTER` near the chest to open it. Purchased items, won auctions, cancelled or expired lots and items received from barter are added before it opens.
- Press `R` to **Collect your money**. The prompt appears only when money is owed and shows the amount.

Money from sales, supplied orders and refunds (outbid, cancelled or expired orders, removed lots) is never paid automatically: it is collected at the chest. In local mode, collect it at the auction house where the trade happened.

When the chest is full, the remaining items stay waiting until there is room. Online players are notified of their sales; reminders of what waits at which auction house are sent at character selection.
:::

::: tab 📈 Market prices
Lot sheets, order sheets and both forms show a market line: the median price per unit exchanged over the default period, its trend and a verdict on the price. The forms also suggest prices you can apply with one click.

Open the **Item sheet** with its button or with `I` to see:

- the lots for sale and the orders wanted for that item, with the best offer of each;
- the median exchanged price per currency, its trend and the volume over 7, 30 or 90 days;
- a chart of the price and the units exchanged, or the figures as a table.

From two letters typed in the **Market** or **Wanted** search, an **Item sheets** row opens the sheet of any tradable item, even one nobody sells.

Prices come from concluded exchanges only and are computed separately for dollars and gold. A price appears once an item has enough exchanges in that currency. Barter and mixed dollar-and-gold exchanges count in the volume, not in the price.
:::

::: tab 🗂️ My sales & history
**My sales** has three views:

- **My lots** — your open lots, with cancellation, then your closed lots (sold, cancelled or expired).
- **My bids** — the auctions you bid on, leading or outbid.
- **My orders** — your buy orders, with cancellation, then the closed ones.

**History** lists your completed trades: purchases, sales, auctions and supplied orders.
:::
::::

##### Default controls

| Key | Context | Action |
| --- | --- | --- |
| `ENTER` | Clerk | Open the auction house |
| `ENTER` | Chest | Open the chest |
| `R` | Chest | Collect the money owed |
| `Q` / `E` | Interface | Change counter |
| `F` | Interface | Search |
| `I` | Interface | Open the item sheet of the selected lot, order or item |
| `ENTER` | Interface | Run the main action of the selected line |
| `ESC` | Interface | Close the receipt, the item sheet, then the interface |

##### Commands

| Command | Who | Effect |
| --- | --- | --- |
| `/auctionHouse [id]` | Players allowed by the server | Opens an auction house without walking to it. In local mode, pass the auction house `id`. Nobody can use it remotely until the [`canUseAuctionHouseRemotely`](#canuseauctionhouseremotely) filter allows them. |
| `/auctionremove <listing id>` | Console or `jo_auction_house.admin` | Returns an active lot to its seller's chest. The leader of an auction gets their bid back at the chest. |
| `/orderremove <order id>` | Console or `jo_auction_house.admin` | Closes an active buy order and returns what it held to the buyer's chest. |

The chest is never remote: items and money are always collected at an auction house.

## 3. Configuration

<ScriptConfig scriptPath="redm/auction-house" />

## 4. FAQ

:::details Why does the resource refuse to start after I changed the market mode?

The market mode is recorded in the database on the first start because local and global chests hold different contents. Restore the recorded `Config.marketMode`. Switching modes on an existing database is not supported.
:::

:::details Why did lots or chest contents disappear after I edited an auction house?

Every lot and waiting item is saved with the auction house `id`. Renaming or removing a location hides its lots and chest contents. Restore the previous `id`.
:::

:::details Why was my money not added to my wallet after a sale?

Money from sales and refunds is never paid automatically. Go to the chest and press `R` to collect it. In local mode, use the chest of the auction house where the trade happened.
:::

:::details Why can't I find an item in the Sell counter?

The item must be allowed by `Config.itemFilter`. Inventory entries of type weapon are never offered. Items already listed have left your satchel.
:::

:::details Why can't I open the auction house with the command?

The command works near the clerk by default. To use it from anywhere, register the [`canUseAuctionHouseRemotely`](#canuseauctionhouseremotely) filter. In local mode, also pass the auction house `id`.
:::

:::details What happens to buy orders when I disable them?

With `Config.enableBuyOrders = false`, the **Wanted** counter and every order action disappear, and expiry pauses. Existing orders stay in the database: they are not cancelled or refunded automatically. Settle them before disabling the feature.
:::

## 5. For developers

`jo_auction_house` exposes [Actions](/DeveloperResources/actions) and [Filters](/DeveloperResources/filters) through the [jo_libs hook module](/jo_libs/modules/hook/). Start your integration resources after `jo_auction_house` and register hooks on the side shown by each badge. The callbacks and network events used by the interface are not part of the public API.

:::warning Hooks never bypass server checks
Identity, distance, ownership, quantities and payment are always checked by the server, whatever a filter returns. Hook arguments cross resource boundaries as copied tables: use their fields (`listing.item`, `listing.quantity`, `order.locationId`…), not class methods. Prices are copies of `jo.pricing` tables.
:::

### Actions

Actions run after an operation has been saved. Their callbacks do not return a value.

#### <Badge type="client" text="Client" /> auctionHouseOpened

Triggered after the interface opens for the local player.

```lua
-- @param location - table configured auction house (id, name, npc, chest, blip)
exports.jo_auction_house:registerAction("auctionHouseOpened", function(location)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> auctionSettled

Triggered after an auction closes for a buyer: when it ends with bids, or when a player uses buy-now. An auction ending without bids does not trigger it.

```lua
-- @param listing - table closed auction; listing.price is the final price
-- @param buyer - table { identifier = string, charid = string } of the winner
-- @param buyNow - boolean true when closed by buy-now
exports.jo_auction_house:registerAction("auctionSettled", function(listing, buyer, buyNow)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> bidPlaced

Triggered after a bid has been paid and saved.

```lua
-- @param listing - table auction with its new current bid
-- @param source - integer server ID of the bidder
-- @param amount - number bid amount in the auction currency
exports.jo_auction_house:registerAction("bidPlaced", function(listing, source, amount)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> listingCancelled

Triggered after the seller cancels a lot. Expiry and `/auctionremove` do not trigger it.

```lua
-- @param listing - table cancelled lot
-- @param source - integer server ID of the seller
exports.jo_auction_house:registerAction("listingCancelled", function(listing, source)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> listingPublished

Triggered after a fixed-price lot or an auction is saved and its items have left the seller's inventory.

```lua
-- @param listing - table published lot; listing.type is "direct" or "auction"
-- @param source - integer server ID of the seller
exports.jo_auction_house:registerAction("listingPublished", function(listing, source)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> listingSold

Triggered after each purchase of a fixed-price lot. On a partial purchase, `listing` holds the remaining quantity; its `status` becomes `"sold"` when nothing remains. Auctions trigger `auctionSettled` instead.

```lua
-- @param listing - table lot after the purchase
-- @param buyerSource - integer server ID of the buyer
-- @param quantity - integer units bought
exports.jo_auction_house:registerAction("listingSold", function(listing, buyerSource, quantity)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> moneyCollected

Triggered after money owed has been credited to the player's wallet at a chest.

```lua
-- @param source - integer server ID of the player
-- @param collected - table jo.pricing copy of the amount paid
exports.jo_auction_house:registerAction("moneyCollected", function(source, collected)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> orderClosed

Triggered when a buy order closes before being fully supplied. What it still held is returned to the buyer's chest.

```lua
-- @param order - table closed buy order
-- @param reason - string "cancelled", "expired" or "removed" (/orderremove)
exports.jo_auction_house:registerAction("orderClosed", function(order, reason)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> orderCreated

Triggered after a buy order is saved and its total or offered items have been taken.

```lua
-- @param order - table posted buy order
-- @param source - integer server ID of the buyer
exports.jo_auction_house:registerAction("orderCreated", function(order, source)
    -- Your code here
end)
```

#### <Badge type="server" text="Server" /> orderFulfilled

Triggered after each supply. On a partial supply, `order` holds the remaining quantity; its `status` becomes `"fulfilled"` when nothing remains.

```lua
-- @param order - table buy order after the supply
-- @param supplierSource - integer server ID of the supplier
-- @param quantity - integer units supplied
exports.jo_auction_house:registerAction("orderFulfilled", function(order, supplierSource, quantity)
    -- Your code here
end)
```

### Filters

Filters synchronously control permissions or replace values. Always return the value expected by the filter. A filter may run several times for one operation: do not rely on side effects.

#### <Badge type="server" text="Server" /> canBuyListing

Controls whether a player can buy a fixed-price lot, before the payment. Also called before an auction buy-now, with the whole quantity.

```lua
-- @param allowed - boolean true by default
-- @param source - integer server ID of the buyer
-- @param listing - table copy of the lot
-- @param quantity - integer units to buy
-- @return boolean true to allow
exports.jo_auction_house:registerFilter("canBuyListing", function(allowed, source, listing, quantity)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canCollectMoney

Controls whether a player can collect the money owed at a chest. Refusing keeps the money owed; the filter cannot change the amount.

```lua
-- @param allowed - boolean true by default
-- @param source - integer server ID of the player
-- @param owed - table jo.pricing copy of the amount owed at this chest
-- @return boolean true to allow
exports.jo_auction_house:registerFilter("canCollectMoney", function(allowed, source, owed)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canCreateOrder

Controls whether a player can post a buy order, before its total is taken.

```lua
-- @param allowed - boolean true by default
-- @param source - integer server ID of the buyer
-- @param data - table { locationId, item, quantity, price, barter, duration }
--   price: jo.pricing copy of the total held, or of the offered items when barter is true
--   duration: integer seconds
-- @return boolean true to allow
exports.jo_auction_house:registerFilter("canCreateOrder", function(allowed, source, data)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canFulfillOrder

Controls whether a player can supply a buy order, before their items are taken.

```lua
-- @param allowed - boolean true by default
-- @param source - integer server ID of the supplier
-- @param order - table copy of the buy order
-- @param quantity - integer units to supply
-- @return boolean true to allow
exports.jo_auction_house:registerFilter("canFulfillOrder", function(allowed, source, order, quantity)
    return allowed
end)
```

#### <Badge type="client" text="Client" /> canOpenAuctionHouse

Controls whether the interface opens for the local player. This is a client-side convenience: the server still checks every request.

```lua
-- @param allowed - boolean true by default
-- @param location - table configured auction house
-- @return boolean true to open
exports.jo_auction_house:registerFilter("canOpenAuctionHouse", function(allowed, location)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canPlaceBid

Controls whether a player can bid on an auction, before the bid is paid.

```lua
-- @param allowed - boolean true by default
-- @param source - integer server ID of the bidder
-- @param listing - table copy of the auction
-- @param amount - number bid amount in the auction currency
-- @return boolean true to allow
exports.jo_auction_house:registerFilter("canPlaceBid", function(allowed, source, listing, amount)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canPublishListing

Controls whether a player can publish a lot or an auction, before the items leave their inventory.

```lua
-- @param allowed - boolean true by default
-- @param source - integer server ID of the seller
-- @param data - table { locationId, item, quantity, metadata, category, price, type, buyNowPrice }
--   price: jo.pricing copy; the starting price of an auction
--   type: "direct" or "auction"
--   buyNowPrice: number|nil auction buy-now price
-- @return boolean true to allow
exports.jo_auction_house:registerFilter("canPublishListing", function(allowed, source, data)
    return allowed
end)
```

#### <Badge type="client" text="Client" /> canSeeAuctionHouseBlip

Controls whether an auction house blip is shown to the local player. Called when the blips are created.

```lua
-- @param allowed - boolean true by default
-- @param location - table configured auction house
-- @return boolean true to show the blip
exports.jo_auction_house:registerFilter("canSeeAuctionHouseBlip", function(allowed, location)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> canUseAuctionHouseRemotely

Controls whether a player farther than 10 meters from the clerk can use the auction house. Called by the `/auctionHouse` command and by each interface request made from a distance. It never applies to the chest.

```lua
-- @param allowed - boolean false by default
-- @param source - integer server ID of the player
-- @param locationId - string auction house id
-- @return boolean true to allow remote use
exports.jo_auction_house:registerFilter("canUseAuctionHouseRemotely", function(allowed, source, locationId)
    return allowed
end)
```

#### <Badge type="server" text="Server" /> overwriteCommission

Replaces the commission rate of a fixed-price lot, an auction or a buy order. Called when the receipt is quoted and again at confirmation; the operation is refused if the two rates differ. The rate is then stored with the lot or order. Barter lots and orders pay no commission and never call it.

```lua
-- @param rate - number percentage, Config.commissionPercent by default
-- @param source - integer server ID of the seller, or of the buyer for a buy order
-- @param locationId - string auction house id
-- @param item - string item name
-- @param quantity - integer units
-- @param price - table jo.pricing copy: lot total, auction starting price or order total
-- @return number percentage from 0 to 100; any other value refuses the operation
exports.jo_auction_house:registerFilter("overwriteCommission", function(rate, source, locationId, item, quantity, price)
    return rate
end)
```

### Snippets

#### Allow the remote command with an ACE permission

This server-side filter lets players with the `jo_auction_house.remote` permission use `/auctionHouse` from anywhere. Add `add_ace group.vip jo_auction_house.remote allow` (or another group) to your `server.cfg`.

```lua
exports.jo_auction_house:registerFilter("canUseAuctionHouseRemotely", function(allowed, source, locationId)
    return allowed or IsPlayerAceAllowed(source, "jo_auction_house.remote")
end)
```

#### Lower the commission for a job

This server-side filter halves the commission for traders. The same rate is returned at quote and confirmation, so the receipt stays valid.

```lua
exports.jo_auction_house:registerFilter("overwriteCommission", function(rate, source, locationId, item, quantity, price)
    if jo.framework:getJob(source) == "trader" then
        return rate / 2
    end
    return rate
end)
```

#### Keep buy orders for one job

This server-side filter only allows merchants to post buy orders while preserving earlier refusals.

```lua
exports.jo_auction_house:registerFilter("canCreateOrder", function(allowed, source, data)
    if not allowed then return false end
    return jo.framework:getJob(source) == "merchant"
end)
```
