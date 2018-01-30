// Dont touch please :)
num = irandom_range(0,3);
path = path0;

if (num == 0) {
	path = path0;
} else if (num == 1) {
	path = path1;
} else if (num == 2){
	path = path2;
}

path_start(path,global.spd,0,1);
hp = global.hp;