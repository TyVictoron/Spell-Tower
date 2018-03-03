with (other) {
	tHealth -= 1; // amount of damage given
	flash = 3;
	if (tHealth <= 0) {
		audio_play_sound(tower_destroyed_sound,1,0);
		instance_destroy();	
	}
}

instance_destroy();