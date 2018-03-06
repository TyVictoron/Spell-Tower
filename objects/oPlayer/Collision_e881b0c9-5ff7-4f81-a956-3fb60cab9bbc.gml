audio_play_sound(wizardhit,1,0)
if (global.playerHealth <= 1) {
	audio_play_sound(GameOver,1,0)
	draw_set_color(c_red); // color of text
	draw_text(display_get_gui_width()/2,display_get_height()/2,"You Lose.");
	draw_set_color(c_white); // ignore
	instance_destroy(); // kills player if health is below or at 0	
	exit;
}
flash = 3;