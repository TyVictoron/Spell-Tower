if (col == c_white) {
	instance_destroy();
	if (global.hsp > 0) instance_create_depth(oPlayer.x + 50,oPlayer.y + 3,-1,oFireTower);
	else if (global.hsp < 0) instance_create_depth(oPlayer.x - 50,oPlayer.y + 3,-1,oFireTower);
	else instance_create_depth(global.hsp * 1.1,oPlayer.y + 3,-1,oFireTower);
	oCannotPlace.visible = false;
	audio_play_sound(summoning_wood_sound,1,0)
}