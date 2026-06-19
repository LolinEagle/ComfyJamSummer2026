// If cutscenes have already play
if (global.cutscenesEnd[CUTSCENES.MANSION_INTRO] = true){
	instance_destroy();
	return;
}

with (oTransition) instance_destroy();

// Player
with (oPlayer){
	x = 592;
	y = 384;
	state = scPlayerStateLock;
	direction = 90;
	sprite_index = sPlayerRun;
}

// Init cutscenes
global.cutscenes = 1;
isPlaying = true;
