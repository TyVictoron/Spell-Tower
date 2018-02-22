if (col == c_white) {
	instance_destroy();
	if (global.hsp > 0) instance_create_depth(oPlayer.x + 50,oPlayer.y + 3,-1,oEcoTower);
	else if (global.hsp < 0) instance_create_depth(oPlayer.x - 50,oPlayer.y + 3,-1,oEcoTower);
	else instance_create_depth(oPlayer.x + 50,oPlayer.y -1,-1,oEcoTower);
	oCannotPlace.visible = false;
	audio_play_sound(summoning_wood_sound,1,0)
	global.earthEssence -= cost;
}