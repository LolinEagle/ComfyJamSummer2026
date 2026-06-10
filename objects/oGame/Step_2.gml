///@desc Pause & Unpause
if (
	keyboard_check_pressed(vk_escape) &&
	// !instance_exists(oTransition) &&
	room != room_first &&
	!global.selected
){
	// Menu
	global.selected = false;
	
	// Core Pause
	global.paused = !global.paused;
	if (global.paused){
		// Pause
		with(all){
			gamePausedImageSpeed = image_speed;
			gamePausedSpeed = speed;
			image_speed = 0;
			speed = 0;
		}
		// var _yy = RES_H / 6;
		// instance_create_depth(144, _yy * 3, depth - 1, oMenuOption);
		// instance_create_depth(144, _yy * 4, depth - 1, oMenuMenu);
	} else {
		// Unpause
		with(all){
			image_speed = gamePausedImageSpeed;
			speed = gamePausedSpeed;
		}
	}
}
