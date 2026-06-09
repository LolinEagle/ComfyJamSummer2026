playerX = oPlayer.x;
playerY = oPlayer.y;
oPlayer.state = scPlayerStateLock;

with (oNpc){
	direction = 180
	sprite_index = sNpcRun;
}

global.gameCutscenes = 1;
