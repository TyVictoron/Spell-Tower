if (global.earthEssence >= cost or global.airEssence >= cost or global.fireEssence >= cost or global.waterEssence >= cost) {
	if (instance_exists(oTowerDParent)){
		instance_destroy(oTowerDParent);
	}
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 40,-9,oEcoTowerD);
}