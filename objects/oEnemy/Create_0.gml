// Dont touch please :)

num = irandom_range(0,2);
path = path0;

flash = 0;
range = 100;
shooting = false;
objectToShoot = noone;


if (num == 0) {
	path = path0;
} else if (num == 1) {
	path = path1;
}

path_start(path,global.spd,0,1);

hp = global.hp;