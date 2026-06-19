// Player
oPlayer.state = scPlayerStateLock;

// NPC
startY = 768;
endY = 672;
npc = instance_create_layer(992, startY, "Instances", oNpc);
with (npc){
	direction = 90;
	sprite_index = sNpcRun;
}

// Init cutscenes
x = -99;
y = -99;
global.cutscenes = 1;
isPlaying = true;
