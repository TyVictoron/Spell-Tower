// Enemy/wave spawner
spawnAmount = 5; // amount of emenys to spawn
spawnCount = 0;
spawnRate = 1 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

// All global Variables here

////// Resources
global.fireEssence = 50;
global.earthEssence = 50;
global.waterEssence = 50;
global.airEssence = 50;
//////

global.playerHealth = 12; // player health
global.towerHealth = 50; // tower / base health
global.hp = 3; // enemy health
global.spd = 1; // enemy speed
global.level = 1; // wave count
global.essenceSpawns = [] //empty array for essence spawn locations 
global.essence = [oFireEssence,oWaterEssence,oEarthEssence,oAirEssence] // essences
global.enemySpawns = []

// finds the spawnable locations 
for (var i = 0; i < instance_number(oEssenceSpawn); i += 1){
	global.essenceSpawns[i] = instance_find(oEssenceSpawn,i);
}

// finds the spawnable locations 
for (var i = 0; i < instance_number(oEnemySpawn); i += 1){
	global.enemySpawns[i] = instance_find(oEnemySpawn,i);
}

randomize() // makes the random actualy random