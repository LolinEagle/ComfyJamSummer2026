///@desc Core Game Logic

// Full Screen
if (keyboard_check_pressed(vk_f1))
	window_set_fullscreen(!window_get_fullscreen());

#region Player
// Player Health & Mana
global.playerHealth = min(global.playerHealthMax, global.playerHealth);
global.playerMana = min(global.playerManaMax, global.playerMana);

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

// Player Has Any Weapon
if (
	global.playerWeaponEquiptArray[0] = WEAPON.NONE &&
	global.playerWeaponEquiptArray[1] = WEAPON.NONE &&
	global.playerWeaponEquiptArray[2] = WEAPON.NONE
){
	global.playerHasWeapon = false;
} else {
	global.playerHasWeapon = true;
}
#endregion

// Debug
if (global.gameDebug){
	if (keyboard_check_pressed(vk_numpad0)) game_restart();
}
