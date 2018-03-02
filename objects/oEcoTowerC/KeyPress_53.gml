if (global.earthEssence >= cost and global.airEssence >= cost and global.fireEssence >= cost and global.waterEssence >= cost) {
	if (instance_exists(oTowerDParent)){
		instance_destroy(oTowerDParent);
	}
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 40,-9,oEcoTowerD);
}