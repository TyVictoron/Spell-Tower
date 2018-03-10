if (!paused) {
	paused = 1;
	instance_deactivate_all(true);
	global.obj = instance_create_depth(camera_get_view_width(camera_get_active())/2,camera_get_view_height(camera_get_active())/2,10,oHelp);
} else {
	paused = 0;
	instance_activate_all();
	instance_destroy(global.obj);
}