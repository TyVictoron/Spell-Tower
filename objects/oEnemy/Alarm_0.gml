if (instance_exists(objectToShoot)) {
	instance_create_depth(x-50,y-20,2,oEnemyAttack);
	alarm[0] = fire_rate
} else {
	shooting = false;	
}