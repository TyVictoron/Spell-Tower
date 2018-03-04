if (col == c_white) {
	instance_destroy();
	if (global.getHsp > 0) instance_create_depth(oPlayer.x + 50,oPlayer.y + 3,-1,oWaterTower);
	else if (global.getHsp < 0) instance_create_depth(oPlayer.x - 50,oPlayer.y + 3,-1,oWaterTower);
	oCannotPlace.visible = false;
	audio_play_sound(watersound,1,0)
	global.waterEssence -= cost;
}