// Win / lose checks
if (global.level == 10 and instance_number(oEnemy) <= 0) {
	room_goto_next();
}

if (global.playerHealth <= 0 or global.towerHealth <= 0) {
	audio_play_sound(GameOver,1,0);
	room_goto(7);
}