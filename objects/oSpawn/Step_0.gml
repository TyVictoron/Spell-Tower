// finds the spawnable locations for enemys
for (var i = 0; i < array_length_1d(playerHearts); i += 1){
	instance_destroy(playerHearts[i]);
}

for (var i = 0; i < global.playerHealth; i += 1){
	playerHearts[i] = instance_create_depth(48*i,48,5,oPlayerHeart);
}

if (global.level == 10 and instance_number(oEnemy) <= 0) {
	//audio_play_sound(Victory_sound,1,0); does not play correctly
	room_goto_next();
}

if (global.playerHealth <= 0 or global.towerHealth <= 0) {
	//audio_play_sound(Defeat_sound,1,0); does not play correctly
	room_goto(5);
}