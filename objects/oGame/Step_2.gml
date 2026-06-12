///@desc Pause & Unpause
if (
	keyboard_check_pressed(vk_escape) &&
	!instance_exists(oTransition) &&
	!global.selected &&
	room != room_first
){
	// Menu
	global.selected = false;
	
	// Core Pause
	global.paused = !global.paused;
	if (global.paused){
		// Pause
		with (all){
			pauseImageSpeed = image_speed;
			pauseSpeed = speed;
			image_speed = 0;
			speed = 0;
		}
		pauseState = 0;
	} else {
		// Unpause
		with (all){
			if (variable_instance_exists(id, "pauseImageSpeed"))
				image_speed = pauseImageSpeed;
			if (variable_instance_exists(id, "pauseSpeed"))
				speed = pauseSpeed;
		}
	}
}

if (global.paused){
	keyUp	= keyboard_check_pressed(global.up) || keyboard_check_pressed(vk_up);
	keyDown = keyboard_check_pressed(global.down) || keyboard_check_pressed(vk_down);
	pauseState += keyDown - keyUp;
	if (pauseState > 1) pauseState = 0;
	if (pauseState < 0) pauseState = 1;
	
	if (keyboard_check_pressed(vk_enter)){
		switch (pauseState){
			case 0:
				global.selected = false;
				global.paused = false;
				with (all){
					if (variable_instance_exists(id, "pauseImageSpeed"))
						image_speed = pauseImageSpeed;
					if (variable_instance_exists(id, "pauseSpeed"))
						speed = pauseSpeed;
				}
			break;
			case 1:
				global.paused = false;
				room_goto(rMenu);
			break;
		}
	}
}
