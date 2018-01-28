// Player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// calculate movement ------------------------------------------------
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall) && (key_jump)) {
	vsp = -13;	// change for jump height
}

// horizontal collision
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

// game over via tower death
if (global.towerHealth <= 0) {	
	draw_set_color(c_red); // color of text
	draw_text(display_get_gui_width()/2,display_get_height()/2,"You Lose.");
	draw_set_color(c_white); // ignore
	exit;
}