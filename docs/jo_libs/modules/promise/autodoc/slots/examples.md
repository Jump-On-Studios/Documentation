<!-- #region shared|jo.promise.new -->
#### Example
```lua
-- Example: Convert a callback-based function to promise-based
local function fetchDataWithCallback(id, callback)
    -- Simulate async operation
    local id = "TheUniqueID"
    jo.timeout.delay(id, 1000, function()
        local result = { id = id, name = "Item " .. id }
        callback(result)
    end)
end

-- Using jo.promise to convert the callback to a promise
local result = jo.promise.new(function(resolver)
    fetchDataWithCallback(123, resolver)
end)

-- Now 'result' contains the data directly, without needing a callback
print("Fetched item: " .. result.name)

```
<!-- #endregion shared|jo.promise.new -->