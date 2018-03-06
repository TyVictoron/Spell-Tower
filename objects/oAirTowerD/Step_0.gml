//x = mouse_x;
//y = mouse_y;

x = oPlayer.x + 50;
if (global.getHsp < 0) x = oPlayer.x - 50;
y = oPlayer.y -1 ;

if (place_meeting(x,y,oTowerParent) or place_meeting(x,y,oCannotPlace)) {
	col = c_red; // things that stop towers from being placed
}
else col = c_white;