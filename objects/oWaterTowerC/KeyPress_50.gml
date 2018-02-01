if (global.waterEssence >= cost) {
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 40,-9,oWaterTowerD);
	global.waterEssence -= cost;
}