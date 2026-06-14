if (entityChestOpen && --entityChestDraw > 0){
	scDrawSet(fRoboto12, fa_middle, fa_center);
	
	// Draw item
	var _x = x - 2;
	var _y = y - 24;
	draw_sprite(sHudItem, entityActivateArgs[0] + 1, _x, _y);

	// Text
	/*draw_set_color(c_black);
	draw_text(_x + 1, _y + 1, "1");
	draw_set_color(c_white);
	draw_text(_x, _y, "1");*/
}
