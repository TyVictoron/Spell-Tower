if (col == c_white) {
	instance_destroy();
	if (global.hsp > 0) instance_create_depth(oPlayer.x + 50,oPlayer.y + 3,-1,oAirTower);
	else if (global.hsp < 0) instance_create_depth(oPlayer.x - 50,oPlayer.y + 3,-1,oAirTower);
	else instance_create_depth(oPlayer.x + 50,oPlayer.y + 3,-1,oAirTower);
	oCannotPlace.visible = false;
	audio_play_sound(summoning_wind_sound,1,0)
}