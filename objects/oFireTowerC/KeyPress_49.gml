if (global.fireEssence >= cost) {
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 40,-9,oFireTowerD);
	global.fireEssence -= cost;
}