// Player inputs
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// calculate movement ------------------------------------------------
var move = key_right - key_left;

global.hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall) && (key_jump)) {
	vsp = -13;	// change for jump height
	audio_play_sound(Jump_up_sound,1,0)
}

// horizontal collision ------------------------------------------------
if (place_meeting(x+global.hsp,y,oWall)) {
	while (!place_meeting(x+sign(global.hsp),y,oWall)) {
		x = x + sign(global.hsp);
	}
	global.hsp = 0;	
}

if (place_meeting(x+global.hsp,y,oPlayerBaseDoor)) {
	while (!place_meeting(x+sign(global.hsp),y,oPlayerBaseDoor)) {
		x = x + sign(global.hsp);
	}
	global.hsp = 0;	
}

x = x + global.hsp;
if global.hsp != 0 {
	global.getHsp = global.hsp;
}

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
	if (global.hsp == 0) {
		sprite_index = sPlayerIdle // sprite for player Idle
	}
	else {
		sprite_index = sPlayerWalk // sprite for player Walk
	}
}

if (global.hsp != 0) image_xscale = sign(global.hsp); // flips sprite

// game over via tower death -------------------------------------------
if (global.towerHealth <= 0) {	
	draw_set_color(c_red); // color of text
	draw_text(display_get_width()/2,display_get_height()/2,"You Lose.");
	draw_set_color(c_white); // ignore
	//audio_play_sound(Defeat_sound,1,0)
	exit;
}

// upgrading ------------------------------------------------------------
var towerid;

if (keyboard_check(ord("E"))) {
	towerid = collision_point(oPlayer.x,oPlayer.y,oTowerParent,true,true)
	if (towerid) {
		if (towerid.object_index == oFireTower) {
			if (towerid.lvl < 2) {
				if (global.fireEssence >= 2) {
					towerid.lvl += 1;
					global.fireEssence -= 2
				}
			}
		}
		
		if (towerid.object_index == oWaterTower) {
			if (towerid.lvl < 2) {
				if (global.waterEssence >= 2) {
					towerid.lvl += 1;
					global.waterEssence -= 2
				}
			}
		}
		
		if (towerid.object_index == oEarthTower) {
			if (towerid.lvl < 2) {
				if (global.earthEssence >= 2) {
					towerid.lvl += 1;
					global.earthEssence -= 2
				}
			}
		}
		
		if (towerid.object_index == oAirTower) {
			if (towerid.lvl < 2) {
				if (global.airEssence >= 2) {
					towerid.lvl += 1;
					global.airEssence -= 2
				}
			}
		}
	}
}