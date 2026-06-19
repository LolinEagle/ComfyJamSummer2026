// Inherit the parent event
event_inherited();

entityChestOpen = entityActivateArgs[0] == -1 ? false :
	global.playerItemEquiptArray[entityActivateArgs[0]] != ITEM.NONE;
entityChestDraw = entityChestOpen ? 0 : 180;

image_index = entityChestOpen;
