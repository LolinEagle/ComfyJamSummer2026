// Player
oPlayer.state = scPlayerStateLock;

// NPC
startY = 384;
endY = 176;
npc = instance_create_layer(400, startY, "Instances", oNpc);
with (npc){
	direction = 90;
	sprite_index = sNpcRun;
}

// Init cutscenes
x = -99;
y = -99;
global.cutscenes = 1;
isPlaying = true;
