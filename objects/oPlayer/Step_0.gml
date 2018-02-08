// Player inputs
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// calculate movement ------------------------------------------------
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall) && (key_jump)) {
	vsp = -13;	// change for jump height
	audio_play_sound(Jump_up_sound,1,0)
}

// horizontal collision ------------------------------------------------
if (place_meeting(x+hsp,y,oWall)) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
		x = x + sign(hsp);
	}
	hsp = 0;	
}

if (place_meeting(x+hsp,y,oPlayerBaseDoor)) {
	while (!place_meeting(x+sign(hsp),y,oPlayerBaseDoor)) {
		x = x + sign(hsp);
	}
	hsp = 0;	
}

if (place_meeting(x+hsp,y,oEnemySpawnDoor)) {
	while (!place_meeting(x+sign(hsp),y,oEnemySpawnDoor)) {
		x = x + sign(hsp);
	}
	hsp = 0;	
}

x = x + hsp;

// virtical collision ------------------------------------------------
if (place_meeting(x,y+vsp,oWall)) {
	while (!place_meeting(x,y+sign(vsp),oWall)) {
		y = y + sign(vsp);
	}
	vsp = 0;	
}

y = y + vsp;

// Player animations --------------------------------------------------
if (!place_meeting(x,y+1,oWall)) {
	sprite_index = sPlayerJump // sprite for player jumping
	image_speed = 0
}
else {
	image_speed = 1
	if (hsp == 0) {
		sprite_index = sPlayerIdle // sprite for player Idle
	}
	else {
		sprite_index = sPlayerWalk // sprite for player Walk
	}
}

// game over via tower death -------------------------------------------
if (global.towerHealth <= 0) {	
	draw_set_color(c_red); // color of text
	draw_text(display_get_width()/2,display_get_height()/2,"You Lose.");
	draw_set_color(c_white); // ignore
	//audio_play_sound(Defeat_sound,1,0)
	exit;
}