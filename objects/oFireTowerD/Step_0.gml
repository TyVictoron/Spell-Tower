//x = mouse_x;
//y = mouse_y;

x = oPlayer.x + 100;
y = oPlayer.y + 45;

if (place_meeting(x,y,oTowerParent) or place_meeting(x,y,oCannotPlace)) {
	col = c_red; // things that stop towers from being placed
}
else col = c_white;