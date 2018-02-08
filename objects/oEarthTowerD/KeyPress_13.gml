if (col == c_white) {
	instance_destroy();
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 45,-1,oEarthTower);
	oCannotPlace.visible = false;
	audio_play_sound(summoning_wood_sound,1,0)
}