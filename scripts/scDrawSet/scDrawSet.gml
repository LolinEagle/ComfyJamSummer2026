function scDrawSet(_font, _halign, _valign){
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}

function scDrawSetDefault(){
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fRoboto12);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
}
