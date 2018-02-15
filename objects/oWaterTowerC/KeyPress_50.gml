if (global.waterEssence >= cost) {
	if (instance_exists(oTowerDParent)){
		instance_destroy(oTowerDParent);
	}
	instance_create_depth(oPlayer.x + 50,oPlayer.y + 40,-9,oWaterTowerD);
}