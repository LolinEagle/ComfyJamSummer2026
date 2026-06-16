// Inherit the parent event
event_inherited();

entityChestOpen =
	global.playerItemEquiptArray[entityActivateArgs[0]] != ITEM.NONE;
entityChestDraw = entityChestOpen ? 0 : 180;

image_index = entityChestOpen;
