///@desc Variable
z = 0;
invulnerable = 0;
flash = 0;
clock = 0;

flashShader = shWhiteFlash;
animationEndScript = -1;
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

// State
state = scPlayerStateFree;
lastState = state

// Sprite
localFrame = 0;
sprite = sPlayerIdle;
spriteRun = sPlayerRun;

#region Speed
hSpeed = 0;
vSpeed = 0;
speedWalk = 5;
originalSpeedWalk = speedWalk;
speedTimer = 0;

// Dash
speedDash = 6;
distanceDash = 256;

// Hook
speedHook = 6;
distanceHook = TILE_SIZE * 6;
hook = 0;
hookX = 0;
hookY = 0;
hookSize = sprite_get_width(sHookChain);

// Bonk
speedBonk = 2;
distanceBonk = 80;
distanceBonkHeight = 24;
#endregion

#region Transition
if (global.targetX != -1){
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
	sprite = global.targetSprite;
	spriteRun = global.targetSpriteRun;
	sprite_index = sprite;
}
#endregion
