// adds ability
if (lvl == 2) {
	var bullet2 = instance_create_depth(x,y,-9,oAbilityFire);
	bullet2.speed = 8;
	bullet2.direction = point_direction(x,y,x,y);
}

alarm[1] = room_speed * 10; // seconds until ability activated