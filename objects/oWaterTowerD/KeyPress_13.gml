if (col == c_white) {
	instance_destroy();
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 45,-1,oWaterTower);
	oCannotPlace.visible = false;
}