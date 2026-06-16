if (room == room_first || oPlayer.state == scPlayerStateLock) return;

scDrawSet(LARGE);

// Player health
var _x = 8;
for (var _i = global.playerHealth; _i > 0; _i--){
	draw_sprite_ext(
		sHudHealth, 0, _x, 8, 2, 2, image_angle, image_blend, image_alpha
	);
	_x += 32;
}
for (var _i = global.playerHealthMax - global.playerHealth; _i > 0; _i--){
	draw_sprite_ext(
		sHudHealth, 4, _x, 8, 2, 2, image_angle, image_blend, image_alpha
	);
	_x += 32;
}

// Item box
if (global.playerHasItems){
	draw_sprite(sHudItemBox, 0, 8, 40);
	if (global.playerItemEquiptArray[global.playerItemEquipt] != ITEM.NONE)
		draw_sprite(sHudItem, global.playerItemEquipt, 8, 40);
	var _tmp = global.playerItemsAmmo[global.playerItemEquipt + 1];
	if (_tmp > 0){
		draw_set_colour(c_black);
		draw_text(30, 60, _tmp);
		draw_set_colour(c_white);
		draw_text(29, 59, _tmp);
	}
	draw_text(28, 96, "F")
}
