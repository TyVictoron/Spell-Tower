randnum = irandom_range(0,array_length_1d(global.enemySpawns)-1);
randnumE = irandom_range(0,3);
if (spawnCount < spawnAmount) {
	if (randnum == 0){
		instance_create_depth(global.enemySpawns[randnumE].x,global.enemySpawns[randnumE].y,-1,oEnemyBuilder);
	}else if (randnum == 1) {
		instance_create_depth(global.enemySpawns[randnumE].x,global.enemySpawns[randnumE].y,-1,oEnemyClimber);
	} else if (randnum == 2) {
		instance_create_depth(global.enemySpawns[randnumE].x,global.enemySpawns[randnumE].y,-1,oEnemyCrawler);	
	} else {
		instance_create_depth(global.enemySpawns[randnumE].x,global.enemySpawns[randnumE].y,-1,oEnemyClimber2);	
	}
	spawnCount++;
	alarm[0] = spawnRate;
}

randomize(); // makes the random actualy random