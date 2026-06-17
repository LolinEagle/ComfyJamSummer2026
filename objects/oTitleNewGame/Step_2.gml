if (selected && mouse_check_button_pressed(mb_left)){
	if (instance_exists(oTransition)) instance_destroy(oTransition);
	room_goto_next();
}
