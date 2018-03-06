draw_self();

if flash > 0 {
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

if (mouseOver(x,y,sprite_width,sprite_height))
	draw_circle(x,y,range,true);


var en = instance_nearest(x,y,oEnemy);
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