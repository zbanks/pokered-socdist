Route15GateLeftBinoculars:
	ld a, [wSpriteStateData1 + 9]
	cp SPRITE_FACING_UP
	ret nz
	call EnableAutoTextBoxDrawing
	tx_pre Route15UpstairsBinocularsText
	ld a, ARTICUNO
	ld [wcf91], a
	call PlayCry
	jp DisplayMonFrontSpriteInBox

Route15UpstairsBinocularsText::
	text_far _Route15UpstairsBinocularsText
	text_end
