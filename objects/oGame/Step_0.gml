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
	global.playerItemEquiptArray[2] = ITEM.NONE &&
	global.playerItemEquiptArray[3] = ITEM.NONE
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
		layer_set_visible("Col", !layer_get_visible("Col"));

	if (keyboard_check_pressed(vk_numpad2)){
		global.skipCutscenes = !global.skipCutscenes;
		if (instance_exists(oPlayer)) oPlayer.state = scPlayerStateFree;
	}
}
