```lua:line-numbers=403 [vorp_character/client/client.lua]
	LoadCharacterSelect(playerPed, value.skin, value.components)
	CachedSkin = value.skin
	canContinue = false
	ApplyFaceOverlays(value.skin)
	canContinue = true
	FaceOverlay("grime", value.skin.grime_visibility, value.skin.grime_tx_id, 0, 0, 0, 1.0, 0, 1, 0, 0, 0, 1, value.skin.grime_opacity)
	Wait(500)

	TriggerServerEvent("jo_libs:server:vorp:applySkinAndClothes", value.charIdentifier, playerPed) -- [!code ++]
	Wait(2000) -- [!code ++]
	IsPedReadyToRender(playerPed) -- [!code ++]

	data.PedHandler = ClonePed(playerPed, false, false, false, false)
```