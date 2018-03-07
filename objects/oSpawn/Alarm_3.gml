// random spawns for wind tunnels
Rnd_Number = irandom_range(0, array_length_1d(global.tunnelSpawns)-1);
spawn = global.essenceSpawns[Rnd_Number]
instance_create_depth(spawn.x,spawn.y,-1,oLadder);

alarm[2] = room_speed * 30;