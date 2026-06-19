if !(entityChestOpen && --entityChestDraw > 0) return;

scDrawSet(1, c_white, SMALL, fa_middle, fa_center);

if (entityActivateArgs[0] == 3){
	// Exception
	draw_sprite_ext(
		sPhone, 0, x + 7, y - 32, 0.5, 0.5,
		image_angle, image_blend, image_alpha
	);
} else {
	draw_sprite(sHudItem, entityActivateArgs[0], x - 2, y - 24);
}
