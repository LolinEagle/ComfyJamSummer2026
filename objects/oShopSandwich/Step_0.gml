var _gui_x = device_mouse_x_to_gui(0);
var _gui_y = device_mouse_y_to_gui(0);
var _x1 = x - sprite_get_xoffset(sprite_index);
var _y1 = y - sprite_get_yoffset(sprite_index);
var _x2 = _x1 + sprite_width;
var _y2 = _y1 + sprite_height;

if (
    point_in_rectangle(_gui_x, _gui_y, _x1, _y1, _x2, _y2) &&
    image_index != 2
){
    image_index = 1;
    selected = true;
} else {
    image_index = 0;
    selected = false;
}

// Buy
if (selected && mouse_check_button_pressed(mb_left) && global.playerMoney > 9){
	global.playerMoney -= 10;
	global.playerItemsAmmo[4]++;
}
