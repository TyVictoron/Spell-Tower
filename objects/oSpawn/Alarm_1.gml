if(instance_number(oEnemy) <= 0) {
	spawnCount = 0;
	spawnAmount++; // adds more enemys
	global.level++; // increments the wave
	global.hp += 4; // increases health 
	global.spd += 0.1; // increases enemy speed 
	spawnRate -= 2.5;
	alarm[0] = spawnRate;
}

if (global.level == 10 or global.playerHealth <= 0 or global.towerHealth <= 0) {
	exit; // stops waves
}


// random spawns for essence
Rnd_Number = irandom_range(0, array_length_1d(global.essenceSpawns)-1);
spawn = global.essenceSpawns[Rnd_Number]
num = irandom_range(0, array_length_1d(global.essence)-1);
instance_create_depth(spawn.x,spawn.y,-1,global.essence[num]);

alarm[1] = room_speed * 6; // seconds between spawning enemys and essence