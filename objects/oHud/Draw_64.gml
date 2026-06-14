if (room == room_first || oPlayer.state == scPlayerStateLock) return;

scDrawSet(fRoboto18);

// Player health
var _x = 8;
for (var _i = global.playerHealth; _i > 0; _i--){
	draw_sprite(sHudHealth, 0, _x, 8);
	_x += 16;
}
for (var _i = global.playerHealthMax - global.playerHealth; _i > 0; _i--){
	draw_sprite(sHudHealth, 4, _x, 8);
	_x += 16;
}

// Item box
if (global.playerHasItems){
	draw_sprite(sHudItemBox, 0, 8, 24);
	if (global.playerItemEquiptArray[global.playerItemEquipt] != ITEM.NONE)
		draw_sprite(sHudItem, global.playerItemEquipt + 1, 8, 24);
	var _tmp = global.playerItemsAmmo[global.playerItemEquipt + 1];
	if (_tmp > 0){
		draw_set_colour(c_black);
		draw_text(29, 45, _tmp);
		draw_set_colour(c_white);
		draw_text(28, 44, _tmp);
	}
	draw_text(28, 76, "F")
}
