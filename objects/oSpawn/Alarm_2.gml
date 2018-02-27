// random spawns for essence
Rnd_Number = irandom_range(0, array_length_1d(global.essenceSpawns)-1);
spawn = global.essenceSpawns[Rnd_Number]
num = irandom_range(0, array_length_1d(global.essence)-2);
instance_create_depth(spawn.x,spawn.y,-1,global.essence[num]);

alarm[2] = room_speed * 10;