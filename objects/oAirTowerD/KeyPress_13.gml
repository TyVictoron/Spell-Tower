if (col == c_white) {
	instance_destroy();
	if (global.getHsp > 0) instance_create_depth(oPlayer.x + 50,oPlayer.y + 3,-1,oAirTower);
	else if (global.getHsp < 0) instance_create_depth(oPlayer.x - 50,oPlayer.y + 3,-1,oAirTower);
	oCannotPlace.visible = false;
	audio_play_sound(windsound,1,0)
	global.airEssence -= cost;
}