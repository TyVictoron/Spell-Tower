if (col == c_white) {
	instance_destroy();
	if (global.getHsp > 0) instance_create_depth(oPlayer.x + 50,oPlayer.y + 3,-1,oFireTower);
	else if (global.getHsp < 0) instance_create_depth(oPlayer.x - 50,oPlayer.y + 3,-1,oFireTower);
	oCannotPlace.visible = false;
	audio_play_sound(firesound,1,0)
	global.fireEssence -= cost;
}