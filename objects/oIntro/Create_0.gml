if (global.cutscenesEnd[CUTSCENES.INTRO] = true){
	with (oNpc) instance_destroy();
	instance_destroy();
}

playerX = oPlayer.x;
playerY = oPlayer.y;
oPlayer.state = scPlayerStateLock;

with (oNpc){
	direction = 180
	sprite_index = sNpcRun;
}

global.cutscenes = 1;
