if (entityChestOpen && --entityChestDraw > 0){
	scDrawSet(SMALL, fa_middle, fa_center);
	draw_sprite(sHudItem, entityActivateArgs[0], x - 2, y - 24);
}
