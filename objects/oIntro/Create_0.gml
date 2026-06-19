// If cutscenes have already play
if (global.cutscenesEnd[CUTSCENES.INTRO] = true){
	instance_destroy();
	return;
}

// Player
playerX = oPlayer.x;
playerY = oPlayer.y;
oPlayer.state = scPlayerStateLock;

// NPC
npc = instance_create_layer(1312, 864, "Instances", oNpc);
with (npc){
	direction = 180;
	sprite_index = sNpcRun;
}

// Init cutscenes
global.cutscenes = 1;
isPlaying = true;
