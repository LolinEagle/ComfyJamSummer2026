if (instance_position(mouse_x, mouse_y, id) && image_index != 2){
	image_index = 1;
	selected = true;
} else {
	image_index = 0;
	selected = false;
}
