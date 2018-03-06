if (col == c_white) {
	instance_destroy();
	if (global.getHsp > 0) instance_create_depth(oPlayer.x + 50,oPlayer.y + 3,-1,oEarthTower);
	else if (global.getHsp < 0) instance_create_depth(oPlayer.x - 50,oPlayer.y + 3,-1,oEarthTower);
	oCannotPlace.visible = false;
	audio_play_sound(woodsound,1,0)
	global.earthEssence -= cost;
}