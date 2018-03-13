// Win / lose checks
if (global.level == 8 and instance_number(oEnemy) <= 0) {
	audio_stop_sound(BGM_1);
	room_goto_next();
}

if (global.playerHealth <= 0 or global.towerHealth <= 0) {
	audio_play_sound(GameOver,1,0);
	audio_stop_sound(BGM_1);
	room_goto(7);
}