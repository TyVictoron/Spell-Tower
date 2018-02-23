randnum = irandom_range(0,array_length_1d(global.enemySpawns)-1)
randnumE = irandom_range(0,2)
if (spawnCount < spawnAmount) {
	if (randnum == 0){
		instance_create_depth(global.enemySpawns[randnumE].x,global.enemySpawns[randnumE].y,-1,oEnemyBuilder);
	}
	else if (randnum == 1) {
		instance_create_depth(global.enemySpawns[randnumE].x,global.enemySpawns[randnumE].y,-1,oEnemyClimber);
	} else {
		instance_create_depth(global.enemySpawns[randnumE].x,global.enemySpawns[randnumE].y,-1,oEnemyCrawler);	
	}
	spawnCount++;
	alarm[0] = spawnRate;
}

randomize() // makes the random actualy random