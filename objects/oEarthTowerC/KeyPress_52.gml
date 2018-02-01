if (global.earthEssence >= cost) {
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 40,-9,oEarthTowerD);
	global.earthEssence -= cost;
}