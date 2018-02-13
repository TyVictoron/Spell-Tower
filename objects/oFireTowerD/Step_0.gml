// where the tower is drawn
if (global.hsp >= 0) {
	x = oPlayer.x + 50;
} else {
	x = oPlayer.x - 50;
}
y = oPlayer.y + 15;

if (place_meeting(x,y,oTowerParent) or place_meeting(x,y,oCannotPlace)) {
	col = c_red; // things that stop towers from being placed
}
else col = c_white;