random_set_seed(date_current_datetime());
surface_resize(application_surface, RES_W, RES_H);

#region Global
global.debug = false;
global.skipCutscenes = false;
global.paused = false;
global.selected = false;
global.cutscenes = 0;
global.cutscenesEnd = array_create(CUTSCENES.TYPE_COUNT, false);

// Option
if (os_get_language() == "fr"){
	global.up = ord("Z");
	global.left = ord("Q");
} else {
	global.up = ord("W");
	global.left = ord("A");
}
global.down = ord("S");
global.right = ord("D");

// Room Transition
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.targetSprite = sPlayer;
global.targetSpriteRun = sPlayerRun;

// Other Instance
global.iLifted = noone;

// Player
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerMoney = 0;
#endregion

#region Item
global.playerNumberOfObjects = 0;
global.playerItem = ITEM.NONE;
global.playerItemEquipt = 0;
global.playerItemEquiptArray = array_create(4, ITEM.NONE);

// Ammo
global.playerItemsAmmo = array_create(ITEM.TYPE_COUNT, 0);
global.playerItemsAmmo[ITEM.HOOK] = -1;
#endregion

pauseState = 0;
soundId = snForest;

// Persistent instance
instance_create_depth(0, 0, 0, oCamera);
instance_create_depth(0, 0, 0, oHud);
