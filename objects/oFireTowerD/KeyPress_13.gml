if (col == c_white) {
	instance_destroy();
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 15,-1,oFireTower);
	oCannotPlace.visible = false;
	audio_play_sound(summoning_wood_sound,1,0)
}