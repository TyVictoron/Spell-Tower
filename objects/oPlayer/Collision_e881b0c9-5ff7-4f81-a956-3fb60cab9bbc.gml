audio_play_sound(enemy_hit_sound,1,0)
if (global.playerHealth <= 1) {
	instance_destroy(); // kills player if health is below or at 0	
	draw_set_color(c_red); // color of text
	draw_text(display_get_gui_width()/2,display_get_height()/2,"You Win!");
	draw_set_color(c_white); // ignore
	exit;
}