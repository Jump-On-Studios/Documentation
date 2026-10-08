-- * ================================================================
-- * JO_GUNSMITH - RSG CORE ITEMS
-- * ================================================================
-- On RSG, the gunsmith uses the weapon items rsg-core already declares in
-- rsg-core/shared/items.lua, as they are: types weapon, weapon_thrown and
-- equipment, and the ammo_box_* items. jo_libs hears their use (its bridge
-- listens to rsg-inventory:server:useItem), and the gunsmith equips them.
--
-- INSTALLATION
--   1. Do not start rsg-weapons, rsg-weaponcomp and rsg-ammo (remove their
--      `ensure`, or move them out of [framework]): rsg-inventory sends the use
--      of a weapon to rsg-weapons too, which would equip it a second time, and
--      rsg-ammo registers the use of the same ammo boxes.
--   2. Paste the 13 lines below at the end of rsg-core/shared/items.lua, after
--      the RSGShared.Items table: 9 weapons of the gunsmith that have no item in
--      rsg-core (without them, buying one is refunded), the gun oil of
--      Config.gunOilItem, which cleans the weapon in hand, and 3 lines making the
--      hatchet, the hunter hatchet and the cleaver unique: rsg-core declares them
--      weapon_thrown and stackable, the gunsmith keeps them as melee weapons with
--      a serial each. The gunsmith does not sell the oil: put it in the shops of
--      your other scripts.
--   3. Optional, for a clean console: rsg-essentials calls an export of
--      rsg-weapons when a weapon leaves the inventory (dropped, stored), which
--      fails once rsg-weapons is stopped. The gunsmith puts the weapon away by
--      itself. Add this line at the top of the
--      'rsg-core:client:RemoveWeaponFromTab' handler, in
--      rsg-essentials/client/weaponcheck.lua:
--          if GetResourceState('rsg-weapons') ~= 'started' then return end
--   4. Start jo_libs, then jo_gunsmith, after [framework].
--
-- The types follow their neighbours in items.lua. unique = true: rsg-inventory
-- stacks non-unique items whatever their metadata, and each copy carries its
-- own serial. Images: the closest one rsg-inventory ships when the weapon has
-- none of its own (the lantern stands in for the moonshine jug).
--
-- The 10 thrown weapons of rsg-core (bolas, dynamite, molotov, poison bottle,
-- throwing knives, tomahawks) stay as they are, unique = false: the gunsmith
-- treats them as consumables without serial, one throw per item of the stack
-- (docs/research/thrown_weapons.md).

RSGShared.Items.weapon_melee_knife_civil_war = { name = "weapon_melee_knife_civil_war", label = "Civil War Knife", weight = 1000, type = "equipment", ammotype = nil, image = "weapon_melee_knife_civil_war.png", unique = true, useable = true, shouldClose = true, description = "A Civil War knife" }
RSGShared.Items.weapon_melee_knife_miner = { name = "weapon_melee_knife_miner", label = "Miner Knife", weight = 1000, type = "equipment", ammotype = nil, image = "weapon_melee_knife.png", unique = true, useable = true, shouldClose = true, description = "A miner's knife" }
RSGShared.Items.weapon_melee_knife_vampire = { name = "weapon_melee_knife_vampire", label = "Vampire Knife", weight = 1000, type = "equipment", ammotype = nil, image = "weapon_melee_knife.png", unique = true, useable = true, shouldClose = true, description = "A vampire knife" }
RSGShared.Items.weapon_melee_hatchet_double_bit = { name = "weapon_melee_hatchet_double_bit", label = "Double Bit Hatchet", weight = 1000, type = "weapon_thrown", ammotype = nil, image = "weapon_melee_hatchet_double_bit.png", unique = true, useable = true, shouldClose = true, description = "A double bit hatchet" }
RSGShared.Items.weapon_melee_hatchet_hewing = { name = "weapon_melee_hatchet_hewing", label = "Hewing Hatchet", weight = 1000, type = "weapon_thrown", ammotype = nil, image = "weapon_melee_hatchet_double_bit.png", unique = true, useable = true, shouldClose = true, description = "A hewing hatchet" }
RSGShared.Items.weapon_melee_hatchet_viking = { name = "weapon_melee_hatchet_viking", label = "Viking Hatchet", weight = 1000, type = "weapon_thrown", ammotype = nil, image = "weapon_melee_hatchet_viking.png", unique = true, useable = true, shouldClose = true, description = "A Viking hatchet" }
RSGShared.Items.weapon_melee_lantern_electric = { name = "weapon_melee_lantern_electric", label = "Electric Lantern", weight = 1000, type = "equipment", ammotype = nil, image = "weapon_melee_lantern.png", unique = true, useable = true, shouldClose = true, description = "An electric lantern" }
RSGShared.Items.weapon_melee_hammer = { name = "weapon_melee_hammer", label = "Hammer", weight = 1000, type = "equipment", ammotype = nil, image = "weapon_melee_hammer.png", unique = true, useable = true, shouldClose = true, description = "A hammer" }
RSGShared.Items.weapon_moonshinejug_mp = { name = "weapon_moonshinejug_mp", label = "Moonshine Jug", weight = 1000, type = "equipment", ammotype = nil, image = "weapon_melee_lantern.png", unique = true, useable = true, shouldClose = true, description = "A moonshine jug" }
RSGShared.Items.jo_gun_oil = { name = "jo_gun_oil", label = "Gun Oil", weight = 200, type = "item", image = "weapon_gun_oil.png", unique = false, useable = true, shouldClose = true, description = "Cleans the weapon in hand" }
RSGShared.Items.weapon_melee_hatchet.unique = true
RSGShared.Items.weapon_melee_hatchet_hunter.unique = true
RSGShared.Items.weapon_melee_cleaver.unique = true
