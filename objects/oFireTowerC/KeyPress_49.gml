if (global.resorces >= cost) {
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 45,-9,oFireTowerD);
	global.resorces -= cost;
}