with (oTransition) instance_destroy();

// Player
with (oPlayer){
	x = 320;
	y = 384;
	direction = 90;
	sprite_index = sPlayerRun;
}

// Init cutscenes
global.cutscenes = 1;
isPlaying = true;
