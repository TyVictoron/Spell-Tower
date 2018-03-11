for (var i = 0; i < array_length_1d(playerHearts); i += 1){
	instance_destroy(playerHearts[i]);
}

for (var i = 0; i < global.playerHealth; i += 1){
	playerHearts[i] = instance_create_depth(view_xport[0]+(48*i),view_yport[0]+96,5,oPlayerHeart);
}

for (var i = 0; i < array_length_1d(baseHearts); i += 1){
	instance_destroy(baseHearts[i]);
}

for (var i = 0; i < global.towerHealth; i += 1){
	baseHearts[i] = instance_create_depth(view_xport[0]+(48*i),view_yport[0]+48,5,oBaseHeart);
}