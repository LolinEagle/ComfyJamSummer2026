///@desc Initialise & Globals
randomize();
surface_resize(application_surface, RES_W, RES_H);
// audio_group_load(OST);
// audio_group_load(SFX);

// Game
global.debug = false;
global.saveSlot = 0;
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
global.questStatus[? "TheFuelQuest"] = 0;
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
// instance_create_layer(0, 0, layer, oHud);

// Player
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerManaMax = 100;
global.playerMana = global.playerManaMax;
global.playerMoney = 0;
global.playerExp = 0;
global.playerExpNeed = 0;
global.playerLevel = 0;
global.playerSkillPoint = 0;

// Item & Weapon
scGameItemWeapon();
