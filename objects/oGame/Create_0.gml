randomize();
surface_resize(application_surface, RES_W, RES_H);
// audio_group_load(OST);
// audio_group_load(SFX);

// Game
global.debug = true;
global.paused = false;
global.pausedBattle = false;
global.selected = false;
global.cutscenes = 0;
global.cutscenesEnd[CUTSCENES.TYPE_COUNT - 1] = false;

enum CUTSCENES{
	INTRO,
	TYPE_COUNT
}

// Option
global.ost = 0.5;
global.sfx = 0.5;
global.up = ord("Z");
global.left = ord("Q");
global.down = ord("S");
global.right = ord("D");

// Text
global.questStatus = ds_map_create();
global.textSpeed = 0.5;

// Room Transition
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.targetSprite = sPlayerIdle;
global.targetSpriteRun = sPlayerRun;

// Other Instance
global.iLifted = noone;
instance_create_layer(0, 0, layer, oCamera);

// Player
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerMoney = 0;

#region Item
global.playerHasItems = false;
global.playerItem = ITEM.NONE;
global.playerItemEquipt = 0;
global.playerItemEquiptArray = array_create(3, ITEM.NONE);
global.playerItemUnlocked = array_create(ITEM.TYPE_COUNT, false);
global.playerItemUnlocked[ITEM.NONE] = true;
	
//Ammo
global.playerItemsAmmo = array_create(ITEM.TYPE_COUNT, 0);
global.playerItemsAmmo[ITEM.HOOK] = -1;
	
//Item
global.itemText = [
	"-",
	"Dash",
	"Hook",
	"Speed",
	"Medishot",
];
global.itemCollect = [];
#endregion

pauseState = 0;
