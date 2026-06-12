// Player
playerX = oPlayer.x;
playerY = oPlayer.y;
oPlayer.state = scPlayerStateLock;

// NPC
startX = 672;
endX = 320;
npc = instance_create_layer(startX, 1664, "Instances", oNpc);
with (npc){
	direction = 180
	sprite_index = sNpcRun;
}

// Init cutscenes
global.cutscenes = 1;
x = 0;
y = 0;
