if (
	global.paused || instance_exists(oPlayer) == false ||
	isShopping == false && oPlayer.state == scPlayerStateLock
) return;

scDrawSet(1, c_white, LARGE);

#region Player health
var _x = 8;
for (var _i = 0; _i < global.playerHealthMax; _i++){
	var _subimg = min(max((global.playerHealth - _i) * 4, 0), 4);
	draw_sprite_ext(
		sHudHealth, _subimg, _x, 8, 2, 2, image_angle, image_blend, image_alpha
	);
	_x += 32;
}
#endregion

#region Item box
var _y = 40;
draw_sprite(sHudItemBox, global.playerNumberOfObjects > 1, 8, _y);
if (global.playerNumberOfObjects > 1){
	draw_set_font(MEDIUM);
	draw_text(69, _y + 19, "G");
}
if (global.playerItemEquiptArray[global.playerItemEquipt] != ITEM.NONE)
	draw_sprite(sHudItem, global.playerItemEquipt, 8, _y);
var _tmp = global.playerItemsAmmo[global.playerItemEquipt + 1];
if (_tmp > 0){
	draw_set_font(LARGE);
	draw_set_colour(c_black);
	draw_text(30, _y + 20, _tmp);
	draw_set_colour(c_white);
	draw_text(29, _y + 19, _tmp);
}
if (global.playerNumberOfObjects > 0){
	draw_set_font(LARGE);
	draw_text(29, _y + 53, "F");
}
#endregion

#region Top right
_x = 0;
if (global.playerItemEquiptArray[ITEM.MEDISHOT - 1] != ITEM.NONE){
	_x = 26;
	draw_sprite_ext(
		sPhone, 0, RES_W - 26, 10, 0.5, 0.5,
		image_angle, image_blend, image_alpha
	);
	draw_set_font(LARGE);
	draw_text(RES_W - 15, 55, "R");
}

// Money
draw_set_font(LARGE);
draw_set_halign(fa_right);
draw_sprite(sCoin, 0, RES_W - 8 - _x, 12);
draw_text(RES_W - 25 - _x, 19, global.playerMoney);
#endregion

#region Bottom left
draw_set_font(SMALL);
draw_set_halign(fa_left);
draw_text(8, RES_H - 12, "E : interact");
#endregion

#region Middle
var _scale = 5;
if (isShopping){
	draw_sprite_ext(
		sPhone, 0, RES_W_HALF - (18 * _scale), RES_H_HALF - (32 * _scale),
		_scale, _scale, image_angle, image_blend, image_alpha
	);
}
#endregion
