// adds ability
if (lvl == 2) {
	var bullet2 = instance_create_depth(x+20,y-10,-9,oAbilityWater);
	bullet2.speed = 8;
	bullet2.direction = point_direction(x,y,x,y);
}

alarm[1] = room_speed * 20; // seconds until ability activated