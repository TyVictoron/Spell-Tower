// finds the spawnable locations for enemys
for (var i = 0; i < array_length_1d(playerHearts); i += 1){
	instance_destroy(playerHearts[i]);
}

for (var i = 0; i < global.playerHealth; i += 1){
	playerHearts[i] = instance_create_depth(48*i,48,5,oPlayerHeart);
}
