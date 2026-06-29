<!-- #region shared|jo.pricing.formatPrice -->
Formats one payment expression and returns a `Price` object.

A `Price` is still a numeric Lua table. Each entry inside it is paid together.

Accepted formats include:

- `10` for a money price.
- `{ money = 10 }`, `{ gold = 1 }` or `{ rol = 5 }`.
- `{ money = 2.75, gold = 2 }` for an AND price.
- `{ item = "water" }` for one item.
- `{ money = 5, item = "acid" }` for money plus one item.
- `{ money = 2, { item = "acid", quantity = 3 } }` for money plus multiple items.

If `quantity` is missing on an item, it defaults to `1`.
If `keep` is missing on an item, it defaults to `false`.
<!-- #endregion shared|jo.pricing.formatPrice -->


<!-- #region shared|jo.pricing.formatPrices -->
Formats a list of payment expressions and returns a `Prices` object.

`Prices` is a numeric table containing one or more `Price` objects.
Its `operator` property is either `"and"` or `"or"`.

Without a root `operator = "or"`, the input is formatted as a single AND option.
This means `{ money = 2, gold = 1 }` and `{ { money = 2 }, { gold = 1 } }` both become one option.

Only a root `operator = "or"` creates alternatives.
Nested operators are ignored.
<!-- #endregion shared|jo.pricing.formatPrices -->


<!-- #region shared|jo.pricing.isPriceFree -->
Returns `true` only when the formatted price is free.

For a `Prices` object, it returns `true` only when the set contains one free option.
<!-- #endregion shared|jo.pricing.isPriceFree -->


<!-- #region shared|jo.pricing.mergePrices -->
Merges multiple prices into one AND `Price`.

This is useful when you need to add several price fragments and keep the result as a single payment expression.
<!-- #endregion shared|jo.pricing.mergePrices -->


<!-- #region shared|jo.pricing.tax -->
Returns a new taxed `Price` based on the provided value.

`percentage` is a multiplier. For example, `0.2` returns 20% of the price and `1.2` returns 120% of the price.
Item quantities are rounded down by default, or rounded up when `roundUpItems` is `true`.
<!-- #endregion shared|jo.pricing.tax -->


<!-- #region shared|PriceClass:add -->
Mutates the current `Price` by adding another price to it.

Currencies and compatible items are normalized after the addition.
Items are merged only when they use the same item name, `keep` value and metadata.
<!-- #endregion shared|PriceClass:add -->


<!-- #region shared|PriceClass:copy -->
Creates an independent `Price` copy.

Mutating the copy does not mutate the original price.
<!-- #endregion shared|PriceClass:copy -->


<!-- #region shared|PriceClass:isFree -->
Checks whether this `Price` is free.
<!-- #endregion shared|PriceClass:isFree -->


<!-- #region shared|PriceClass:remove -->
Strictly removes another price from the current `Price`.

If one currency amount or item quantity is missing, the method returns `false, reason` and the original `Price` is not mutated.
<!-- #endregion shared|PriceClass:remove -->


<!-- #region shared|PriceClass:tax -->
Mutates the current `Price` by applying a multiplier.

Currencies are multiplied directly.
Item quantities are rounded down by default, or rounded up when `roundUpItems` is `true`.
<!-- #endregion shared|PriceClass:tax -->


<!-- #region shared|PriceClass:toTable -->
Returns a deep plain table copy without object methods.

Use it when you explicitly need to serialize or pass a price without its metatable.
<!-- #endregion shared|PriceClass:toTable -->


<!-- #region shared|PricesClass:addPrice -->
Adds a price option to this `Prices` object.

When `operator` is `"or"`, this adds a new option.
When `operator` is `"and"`, this merges the price into the single AND option.
<!-- #endregion shared|PricesClass:addPrice -->


<!-- #region shared|PricesClass:copy -->
Creates an independent copy of the `Prices` object and all its nested `Price` objects.
<!-- #endregion shared|PricesClass:copy -->


<!-- #region shared|PricesClass:removePrice -->
Removes one option from this `Prices` object by numeric index.
<!-- #endregion shared|PricesClass:removePrice -->


<!-- #region shared|PricesClass:toTable -->
Returns a deep plain table copy without object methods.

The returned table keeps the `operator` field.
<!-- #endregion shared|PricesClass:toTable -->
