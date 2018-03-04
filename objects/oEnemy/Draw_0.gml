draw_self();

if flash > 0 {
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

var en = instance_nearest(x,y,oTowerParent);
if (en != noone) {
	if (point_distance(x,y,en.x,en.y) <= range) {
		if (!shooting) {
			alarm[0] = 1;
			shooting = true;
		}
		
		objectToShoot = en;
		
	} else {
		shooting = false;
		objectToShoot = noone;
	}
}