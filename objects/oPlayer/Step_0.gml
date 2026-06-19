if (global.paused) return;

// Input
keyLeft			= keyboard_check(global.left);
keyRight		= keyboard_check(global.right);
keyUp			= keyboard_check(global.up);
keyDown			= keyboard_check(global.down);
keyUse			= KEY_USE;
keyItem			= KEY_ITEM;
keyItemSelect	= KEY_ITEM_SELECT;
keyItemShop		= KEY_ITEM_SHOP;

// Direction
inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

// State
script_execute(state);
invulnerable = max(invulnerable - 1, 0);
flash = max(flash - 0.05, 0);

// Clock
if (++clock >= FPS){
	if (global.playerItemsAmmo[ITEM.DASH] > 0)
		global.playerItemsAmmo[ITEM.DASH]--;
	if (global.playerItemsAmmo[ITEM.SPEED] > 0)
		global.playerItemsAmmo[ITEM.SPEED]--;
	clock = 0;
}

if (speedWalk != originalSpeedWalk && --speedTimer <= 0){
	speedWalk = originalSpeedWalk;
	global.playerItemsAmmo[ITEM.SPEED] = 15;
}

// Depth
depth = -y - 1;
