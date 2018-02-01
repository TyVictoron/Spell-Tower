if (global.airEssence >= cost) {
	instance_create_depth(oPlayer.x + 100,oPlayer.y + 40,-9,oAirTowerD);
	global.airEssence -= cost;
}