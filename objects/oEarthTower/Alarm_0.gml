if (instance_exists(objectToShoot)) {
	var bullet = instance_create_depth(x,y,-9,oEarthProjectile);
	bullet.speed = 10;
	bullet.direction = point_direction(x,y,x,y); // change to have forward directional fire
	alarm[0] = fire_rate
} else {
	shooting = false;	
}

if (lvl == 2){
	fire_rate = room_speed / 1.5;
}