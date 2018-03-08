draw_set_color(c_black); // color of text
draw_text(10,10,"Resorces: Fire " + string(global.fireEssence) + ",Water " + string(global.waterEssence) + ",Earth " + string(global.earthEssence) + ",Air " + string(global.airEssence));
draw_text(10,30,"Wave: " + string(global.level));
draw_text(10,50,"Tower Health: " + string(global.towerHealth));
draw_set_color(c_white); // ignore

if (global.level == 10 and instance_number(oEnemy) <= 0 and won == false) {
	draw_set_color(c_green); // color of text
	draw_text(window_get_width()/2,window_get_height()/2,"You Win!");
	draw_set_color(c_white); // ignore
	//audio_play_sound(Victory_sound,1,0); does not play correctly
	//won = true;
	room_goto_next();
}

if (global.playerHealth <= 0 or global.towerHealth <= 0 and lost == false) {
	draw_set_color(c_red); // color of text
	draw_text(window_get_width()/2,window_get_height()/2,"You lose.");
	draw_set_color(c_white); // ignore
	//audio_play_sound(Defeat_sound,1,0); does not play correctly
	//lost = true;
}