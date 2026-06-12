///@desc Core Game Logic

// Full Screen
if (keyboard_check_pressed(vk_f1))
	window_set_fullscreen(!window_get_fullscreen());

#region Player
// Player Health & Mana
global.playerHealth = min(global.playerHealthMax, global.playerHealth);

// Player Has Any Items
if (
	global.playerItemEquiptArray[0] = ITEM.NONE &&
	global.playerItemEquiptArray[1] = ITEM.NONE &&
	global.playerItemEquiptArray[2] = ITEM.NONE
){
	global.playerHasItems = false;
} else {
	global.playerHasItems = true;
}
#endregion

// Debug
if (global.debug){
	if (keyboard_check_pressed(vk_numpad0)) game_restart();
	if (keyboard_check_pressed(vk_numpad1))
		layer_set_visible("tsCol", !layer_get_visible("tsCol"));
}
