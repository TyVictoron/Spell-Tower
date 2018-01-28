if (spawnCount < spawnAmount) {
	instance_create_depth(x,y,-1,oEnemy);
	spawnCount++; 
	alarm[0] = spawnRate;
}