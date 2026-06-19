if (global.paused) return;

scDrawSet(1, c_white, SMALL, fa_left, fa_middle);
draw_sprite_ext(
	sprite_index, image_index, x, y, 0.8, 1,
	image_angle, image_blend, image_alpha
);
draw_text(x - (sprite_width / 2) + 20, y, titleWord);

// Coin
var _x = x + (sprite_width / 2);
draw_sprite(sCoin, 0, _x - 18, y - 8);
draw_set_halign(fa_right);
draw_text(_x - 36, y, "10");
