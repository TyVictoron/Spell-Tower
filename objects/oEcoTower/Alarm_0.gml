n = irandom_range(0,4)
if (instance_exists(objectToShoot)) {
	instance_create_depth(x-20,y-25,-9,global.essence[n]);
	alarm[0] = fire_rate
} else {
	shooting = false;	
}