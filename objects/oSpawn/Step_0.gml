// Base and player hearts


if (global.level == 10 and instance_number(oEnemy) <= 0) {
	//audio_play_sound(Victory_sound,1,0); does not play correctly
	room_goto_next();
}

if (global.playerHealth <= 0 or global.towerHealth <= 0) {
	//audio_play_sound(Defeat_sound,1,0); does not play correctly
	room_goto(5);
}