///@desc Core Game Logic

// Full Screen
if (keyboard_check_pressed(vk_f1))
	window_set_fullscreen(!window_get_fullscreen());

#region Player
// Player Health & Mana
global.playerHealth = min(global.playerHealthMax, global.playerHealth);

// Player number of objects
var _numberOfObjects = 0;
for (var _i = 0; _i < 4; _i++){
	if (global.playerItemEquiptArray[_i] != ITEM.NONE) _numberOfObjects++;
}
if (global.playerNumberOfObjects != _numberOfObjects)
	global.playerNumberOfObjects = _numberOfObjects;
#endregion

if (global.debug){
	if (keyboard_check_pressed(vk_numpad0)) game_restart();

	if (keyboard_check_pressed(vk_numpad1))
		layer_set_visible("Col", !layer_get_visible("Col"));

	if (keyboard_check_pressed(vk_numpad2)){
		global.skipCutscenes = !global.skipCutscenes;
		if (instance_exists(oPlayer)) oPlayer.state = scPlayerStateFree;
	}

	if (keyboard_check_pressed(vk_up)) global.playerHealth += 0.25;
	if (keyboard_check_pressed(vk_down)) global.playerHealth -= 0.25;
}
