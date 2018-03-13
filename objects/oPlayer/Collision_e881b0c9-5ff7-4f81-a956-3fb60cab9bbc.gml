audio_play_sound(wizardhit,1,0)
if (global.playerHealth <= 1) {
	instance_destroy(); // kills player if health is below or at 0	
	exit;
}
flash = 3;