// Player
oPlayer.state = scPlayerStateLock;

// NPC
startX = 672;
endX = 320;
npc = instance_create_depth(startX, oPlayer.y, 0, oNpc);
with (npc){
	direction = 180;
	sprite_index = sNpcRun;
}

// Init cutscenes
x = -99;
y = -99;
global.cutscenes = 1;
isPlaying = true;
