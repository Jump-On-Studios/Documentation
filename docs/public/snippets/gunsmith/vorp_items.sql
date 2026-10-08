-- * ================================================================
-- * JO_GUNSMITH - VORP INVENTORY ITEMS
-- * ================================================================
-- One inventory item per weapon of config/_default.lock/weapons.lua, for the
-- `items` table of vorp_inventory. Restart vorp_inventory afterwards: it reads
-- the table on start only.
--
-- What the gunsmith needs from these rows:
--   type    item_standard, never item_weapon: a VORP weapon carries fixed
--           metadata, and the gunsmith writes the serial of the copy in them.
--   limit   -1: VORP counts every copy of an item against its limit, whatever
--           their metadata, so a limit of 1 allows a single weapon of a model.
--   usable  1: using the item gives it a serial when it has none.
--
-- groupId 5 is the `weapons` group of `item_group`. `id` is left to
-- AUTO_INCREMENT.
--
-- An item already in the table keeps its label, description and weight; only
-- the three columns above are corrected, since the gunsmith breaks without them.

INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `useExpired`, `groupId`, `metadata`, `desc`, `degradation`, `weight`)
VALUES
    ('weapon_revolver_cattleman', 'Revolver Cattleman', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Cattleman revolver', 0, 0.25),
    ('weapon_revolver_cattleman_mexican', 'Revolver Cattleman Mexican', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Mexican Cattleman revolver', 0, 0.25),
    ('weapon_revolver_doubleaction', 'Revolver Double-Action', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A double-action revolver', 0, 0.25),
    ('weapon_revolver_doubleaction_gambler', 'Revolver High Roller', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A High Roller double-action revolver', 0, 0.25),
    ('weapon_revolver_lemat', 'Revolver LeMat', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A LeMat revolver', 0, 0.25),
    ('weapon_revolver_navy', 'Revolver Navy', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Navy revolver', 0, 0.25),
    ('weapon_revolver_navy_crossover', 'Revolver Navy Crossover', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Navy Crossover revolver', 0, 0.25),
    ('weapon_revolver_schofield', 'Revolver Schofield', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Schofield revolver', 0, 0.25),
    ('weapon_pistol_m1899', 'Pistol M1899', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An M1899 pistol', 0, 0.25),
    ('weapon_pistol_mauser', 'Pistol Mauser', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Mauser pistol', 0, 0.25),
    ('weapon_pistol_semiauto', 'Pistol Semi-Automatic', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A semi-automatic pistol', 0, 0.25),
    ('weapon_pistol_volcanic', 'Pistol Volcanic', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Volcanic pistol', 0, 0.25),
    ('weapon_repeater_carbine', 'Repeater Carbine', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A carbine repeater', 0, 0.25),
    ('weapon_repeater_evans', 'Repeater Evans', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An Evans repeater', 0, 0.25),
    ('weapon_repeater_henry', 'Repeater Litchfield', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Litchfield repeater', 0, 0.25),
    ('weapon_repeater_winchester', 'Repeater Lancaster', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Lancaster repeater', 0, 0.25),
    ('weapon_rifle_boltaction', 'Rifle Bolt Action', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A bolt action rifle', 0, 0.25),
    ('weapon_rifle_elephant', 'Rifle Elephant', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An elephant rifle', 0, 0.25),
    ('weapon_rifle_springfield', 'Rifle Springfield', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Springfield rifle', 0, 0.25),
    ('weapon_rifle_varmint', 'Rifle Varmint', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A varmint rifle', 0, 0.25),
    ('weapon_sniperrifle_carcano', 'Sniper Rifle Carcano', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Carcano sniper rifle', 0, 0.25),
    ('weapon_sniperrifle_rollingblock', 'Sniper Rifle Rolling Block', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Rolling Block sniper rifle', 0, 0.25),
    ('weapon_shotgun_doublebarrel', 'Shotgun Double-Barreled', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A double-barreled shotgun', 0, 0.25),
    ('weapon_shotgun_doublebarrel_exotic', 'Shotgun Double-Barreled Exotic', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An exotic double-barreled shotgun', 0, 0.25),
    ('weapon_shotgun_pump', 'Shotgun Pump-Action', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A pump-action shotgun', 0, 0.25),
    ('weapon_shotgun_repeating', 'Shotgun Repeating', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A repeating shotgun', 0, 0.25),
    ('weapon_shotgun_sawedoff', 'Shotgun Sawed-Off', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A sawed-off shotgun', 0, 0.25),
    ('weapon_shotgun_semiauto', 'Shotgun Semi-Automatic', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A semi-automatic shotgun', 0, 0.25),
    ('weapon_bow', 'Bow', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A hunting bow', 0, 0.25),
    ('weapon_bow_improved', 'Bow Improved', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An improved hunting bow', 0, 0.25),
    ('weapon_thrown_bolas', 'Bolas', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A bolas', 0, 0.25),
    ('weapon_thrown_bolas_hawkmoth', 'Bolas Hawkmoth', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Hawkmoth bolas', 0, 0.25),
    ('weapon_thrown_bolas_intertwined', 'Bolas Intertwined', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An intertwined bolas', 0, 0.25),
    ('weapon_thrown_bolas_ironspiked', 'Bolas Ironspiked', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An ironspiked bolas', 0, 0.25),
    ('weapon_thrown_dynamite', 'Dynamite', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A stick of dynamite', 0, 0.25),
    ('weapon_thrown_molotov', 'Fire Bottle', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A fire bottle', 0, 0.25),
    ('weapon_thrown_poisonbottle', 'Poison Bottle', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A poison bottle', 0, 0.25),
    ('weapon_thrown_throwing_knives', 'Throwing Knives', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A set of throwing knives', 0, 0.25),
    ('weapon_thrown_tomahawk', 'Tomahawk', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A tomahawk', 0, 0.25),
    ('weapon_thrown_tomahawk_ancient', 'Tomahawk Ancient', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An ancient tomahawk', 0, 0.25),
    ('weapon_melee_knife', 'Knife', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A hunting knife', 0, 0.25),
    ('weapon_melee_knife_civil_war', 'Knife Civil War', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Civil War knife', 0, 0.25),
    ('weapon_melee_knife_horror', 'Knife Horror', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A horror knife', 0, 0.25),
    ('weapon_melee_knife_jawbone', 'Knife Jawbone', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A jawbone knife', 0, 0.25),
    ('weapon_melee_knife_miner', 'Knife Miner', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A miner''s knife', 0, 0.25),
    ('weapon_melee_knife_rustic', 'Knife Rustic', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A rustic knife', 0, 0.25),
    ('weapon_melee_knife_trader', 'Knife Trader', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A trader''s knife', 0, 0.25),
    ('weapon_melee_knife_vampire', 'Knife Vampire', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A vampire knife', 0, 0.25),
    ('weapon_melee_hatchet', 'Hatchet', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A hatchet', 0, 0.25),
    ('weapon_melee_hatchet_double_bit', 'Hatchet Double Bit', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A double bit hatchet', 0, 0.25),
    ('weapon_melee_hatchet_hewing', 'Hatchet Hewing', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A hewing hatchet', 0, 0.25),
    ('weapon_melee_hatchet_hunter', 'Hatchet Hunter', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A hunter hatchet', 0, 0.25),
    ('weapon_melee_hatchet_viking', 'Hatchet Viking', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Viking hatchet', 0, 0.25),
    ('weapon_melee_machete', 'Machete', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A machete', 0, 0.25),
    ('weapon_melee_machete_collector', 'Machete Collector', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A collector''s machete', 0, 0.25),
    ('weapon_melee_machete_horror', 'Machete Horror', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A horror machete', 0, 0.25),
    ('weapon_melee_lantern', 'Lantern', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A lantern', 0, 0.25),
    ('weapon_melee_davy_lantern', 'Lantern Davy', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Davy lantern', 0, 0.25),
    ('weapon_melee_lantern_electric', 'Lantern Electric', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An electric lantern', 0, 0.25),
    ('weapon_melee_lantern_halloween', 'Lantern Halloween', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A Halloween lantern', 0, 0.25),
    ('weapon_melee_cleaver', 'Cleaver', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A cleaver', 0, 0.25),
    ('weapon_melee_hammer', 'Hammer', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A hammer', 0, 0.25),
    ('weapon_melee_torch', 'Torch', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A torch', 0, 0.25),
    ('weapon_lasso', 'Lasso', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A lasso', 0, 0.25),
    ('weapon_lasso_reinforced', 'Lasso Reinforced', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A reinforced lasso', 0, 0.25),
    ('weapon_kit_binoculars', 'Binoculars', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A pair of binoculars', 0, 0.25),
    ('weapon_kit_binoculars_improved', 'Binoculars Improved', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A pair of improved binoculars', 0, 0.25),
    ('weapon_kit_camera', 'Camera', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A camera', 0, 0.25),
    ('weapon_kit_camera_advanced', 'Camera Advanced', -1, 1, 'item_standard', 1, 0, 5, '{}', 'An advanced camera', 0, 0.25),
    ('weapon_kit_metal_detector', 'Metal Detector', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A metal detector', 0, 0.25),
    ('weapon_fishingrod', 'Fishing Rod', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A fishing rod', 0, 0.25),
    ('weapon_moonshinejug_mp', 'Moonshine Jug', -1, 1, 'item_standard', 1, 0, 5, '{}', 'A moonshine jug', 0, 0.25)
ON DUPLICATE KEY UPDATE
    `type` = VALUES(`type`),
    `limit` = VALUES(`limit`),
    `usable` = VALUES(`usable`);

-- * ================================================================
-- * AMMUNITION BOXES
-- * ================================================================
-- One inventory item per box of config/_default.lock/ammo.lua. Same rules as
-- the weapons above: item_standard, usable (using a box loads its rounds into
-- the weapon in hand), limit -1 so that several boxes stack.
--
-- groupId 6 is the `ammo` group of the default `item_group` of VORP: check it
-- in your table and change it if yours differs.

INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `useExpired`, `groupId`, `metadata`, `desc`, `degradation`, `weight`)
VALUES
    ('ammo_box_revolver', 'Revolver Cartridges - Regular', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of regular revolver cartridges', 0, 0.1),
    ('ammo_box_revolver_express', 'Revolver Cartridges - Express', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of express revolver cartridges', 0, 0.1),
    ('ammo_box_revolver_velocity', 'Revolver Cartridges - High Velocity', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of high velocity revolver cartridges', 0, 0.1),
    ('ammo_box_pistol', 'Pistol Cartridges - Regular', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of regular pistol cartridges', 0, 0.1),
    ('ammo_box_pistol_express', 'Pistol Cartridges - Express', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of express pistol cartridges', 0, 0.1),
    ('ammo_box_pistol_velocity', 'Pistol Cartridges - High Velocity', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of high velocity pistol cartridges', 0, 0.1),
    ('ammo_box_repeater', 'Repeater Cartridges - Regular', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of regular repeater cartridges', 0, 0.1),
    ('ammo_box_repeater_express', 'Repeater Cartridges - Express', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of express repeater cartridges', 0, 0.1),
    ('ammo_box_repeater_velocity', 'Repeater Cartridges - High Velocity', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of high velocity repeater cartridges', 0, 0.1),
    ('ammo_box_rifle', 'Rifle Cartridges - Regular', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of regular rifle cartridges', 0, 0.1),
    ('ammo_box_rifle_express', 'Rifle Cartridges - Express', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of express rifle cartridges', 0, 0.1),
    ('ammo_box_rifle_velocity', 'Rifle Cartridges - High Velocity', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of high velocity rifle cartridges', 0, 0.1),
    ('ammo_box_rifle_elephant', 'Rifle Cartridges - Nitro Express', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of cartridges for the elephant rifle', 0, 0.1),
    ('ammo_box_varmint', 'Rifle Cartridges - Varmint', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of cartridges for the varmint rifle', 0, 0.1),
    ('ammo_box_shotgun', 'Shotgun Shells - Buckshot', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of buckshot shells', 0, 0.1),
    ('ammo_box_shotgun_slug', 'Shotgun Shells - Slug', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A box of slug shells', 0, 0.1),
    ('ammo_arrow', 'Arrows', -1, 1, 'item_standard', 1, 0, 6, '{}', 'A bundle of arrows', 0, 0.1)
ON DUPLICATE KEY UPDATE
    `type` = VALUES(`type`),
    `limit` = VALUES(`limit`),
    `usable` = VALUES(`usable`);

-- * ================================================================
-- * GUN OIL
-- * ================================================================
-- Config.gunOilItem: using it cleans the weapon in hand. The gunsmith does not
-- sell it: put it in the shops of your other scripts. Usable, and stackable
-- up to its limit like any consumable.
--
-- groupId 1 is the default group of VORP: check it in your `item_group` table.
-- Image: vorp_inventory shows html/img/items/<item>.png. It already ships
-- kit_gun_oil.png, the vanilla gun oil: copy it as jo_gun_oil.png.

INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `useExpired`, `groupId`, `metadata`, `desc`, `degradation`, `weight`)
VALUES
    ('jo_gun_oil', 'Gun Oil', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Cleans the weapon in hand', 0, 0.2)
ON DUPLICATE KEY UPDATE
    `type` = VALUES(`type`),
    `usable` = VALUES(`usable`);
