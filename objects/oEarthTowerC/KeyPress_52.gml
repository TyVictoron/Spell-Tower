if (global.earthEssence >= cost) {
	if (instance_exists(oTowerDParent)){
		instance_destroy(oTowerDParent);
	}
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 40,-9,oEarthTowerD);
}