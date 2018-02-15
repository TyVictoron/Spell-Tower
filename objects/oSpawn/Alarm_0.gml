randnum = irandom_range(0,2)
if (spawnCount < spawnAmount) {		
	instance_create_depth(global.enemySpawns[randnum].x,global.enemySpawns[randnum].y,-1,oEnemyBuilder);
	spawnCount++;
	alarm[0] = spawnRate;
}