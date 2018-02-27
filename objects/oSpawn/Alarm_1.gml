if(instance_number(oEnemy) <= 0) {
	spawnCount = 0;
	spawnAmount+=2; // adds more enemys
	global.level++; // increments the wave
	global.spd += 0.1; // increases enemy speed 
	spawnRate -= 2.5;
	alarm[0] = spawnRate;
}

if (global.level == 10 or global.playerHealth <= 0 or global.towerHealth <= 0) {
	exit; // stops waves
}

alarm[1] = room_speed * 6; // seconds between spawning enemys