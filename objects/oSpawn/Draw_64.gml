draw_set_color(c_black); // color of text
draw_text(view_xport[0]+10,view_xport[0]+10,"Resources: Fire " + string(global.fireEssence) + ",Water " + string(global.waterEssence) + ",Earth " + string(global.earthEssence) + ",Air " + string(global.airEssence));
//draw_text(10,30,"Wave: " + string(global.level));
draw_set_color(c_white); // ignore

for (var i = 0; i < global.towerHealth; i += 5) {
		baseHearts[i] = draw_sprite(Baseheart_full,0,view_xport[0]+(10*i),view_yport[0]+40);	
}

for (var i = 0; i < global.playerHealth; i += 1) {
		playerHearts[i] = draw_sprite(heart_full,0,view_xport[0]+(48*i),view_yport[0]+80);	
}

//draw_sprite(ArcaneTower,0,view_xport[0]+1250,view_yport[0]+760);
//draw_sprite(TowerEarth,0,view_xport[0]+1150,view_yport[0]+760);
//draw_sprite(airtower,0,view_xport[0]+1050,view_yport[0]+760);
//draw_sprite(TowerWater,0,view_xport[0]+950,view_yport[0]+760);
//draw_sprite(TowerFire,0,view_xport[0]+850,view_yport[0]+760);