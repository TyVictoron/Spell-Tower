if (paused) {
	draw_set_color(c_black);
	draw_rectangle(view_xport[0]+0,view_xport[0]+0,room_width,room_height,0);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(view_xport[0]/2,view_xport[0]/2,"Game Paused");
	draw_set_color(c_black);
	
}