draw_set_color(c_black); // color of text
draw_text(view_xport[0]+10,view_xport[0]+10,"Resorces: Fire " + string(global.fireEssence) + ",Water " + string(global.waterEssence) + ",Earth " + string(global.earthEssence) + ",Air " + string(global.airEssence));
//draw_text(10,30,"Wave: " + string(global.level));
//draw_text(10,50,"Tower Health: " + string(global.towerHealth));
draw_set_color(c_white); // ignore

for (var i = 0; i < global.towerHealth; i += 1) {
		baseHearts[i] = draw_sprite(Baseheart_full,0,view_xport[0]+(48*i),view_yport[0]+40);	
}

for (var i = 0; i < global.playerHealth; i += 1) {
		playerHearts[i] = draw_sprite(heart_full,0,view_xport[0]+(48*i),view_yport[0]+80);	
}