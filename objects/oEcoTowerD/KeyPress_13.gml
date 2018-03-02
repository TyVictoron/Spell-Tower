if (col == c_white) {
	instance_destroy();
	if (global.getHsp > 0) instance_create_depth(oPlayer.x + 50,oPlayer.y + 3,-1,oEcoTower);
	else if (global.getHsp < 0) instance_create_depth(oPlayer.x - 50,oPlayer.y + 3,-1,oEcoTower);
	oCannotPlace.visible = false;
	audio_play_sound(arcanesound,1,0)
	global.earthEssence -= cost;
	global.airEssence -= cost;
	global.waterEssence -= cost;
	global.fireEssence -= cost;
}