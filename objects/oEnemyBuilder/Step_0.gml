if (hp <= 0) instance_destroy();
hsp = dir * movespeed;
vsp += grav;

// horizontal collision ------------------------------------------------
if (place_meeting(x+hsp,y,oWall)) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
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
	if !position_meeting(x+(sprite_width/2)*dir,y+(sprite_height/2)+8, oWall) {
		instance_create_depth(x+(sprite_width-5)*dir,y+(sprite_height/2)+21,-1,oShadowWall)
	}
}

y = y + vsp;
