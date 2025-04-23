<!-- #region client|jo.gameEvents.listen -->
#### Example
```lua
jo.gameEvents.listen("EVENT_ENTITY_DAMAGED", function(data)
    print("Target:", data.target_entity)
    print("Origin:", data.initiator_entity)
    print("Weapon:", data.weapon)
    log(data)
end)

```
<!-- #endregion client|jo.gameEvents.listen -->

