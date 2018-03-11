if (!paused and (room_get_name(room) != "MainMenu" or room_get_name(room) != "Lose" or room_get_name(room) != "Win")) {
	paused = 1;
	instance_deactivate_all(true);
	global.obj = instance_create_depth(view_xport[0]/2,view_xport[0]/2,10,oHelp);
} else {
	paused = 0;
	instance_activate_all();
	instance_destroy(global.obj);
}