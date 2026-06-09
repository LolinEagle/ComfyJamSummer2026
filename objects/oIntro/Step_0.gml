event_inherited();

switch (global.gameCutscenes){
	case 1:
		if (oNpc.x > 1056){
			oNpc.x -= 2;
		} else {
			with (oNpc){
				sprite_index = sNpcIdle;
				localFrame = 0;
				scAnimateSprite();
			}
		
			// TextBox
			scNewTextBox("You are awake, you should\ngo back to sleep.", 1);
			scNewTextBox("You shouldn't press WASD\nto move.", 1);

			global.gameCutscenes = 2;
		}
	break;
	case 2:
		if (
			oPlayer.x <= playerX - 64 || oPlayer.x >= playerX + 64 ||
			oPlayer.y <= playerY - 64 || oPlayer.y >= playerY + 64
		){
			oPlayer.state = scPlayerStateLock;
			global.gameCutscenes = 3;
		}
	break;
	case 3:
		scNewTextBox("Whatever...", 1);
		scNewTextBox("Just don't go to the east.", 1, true);
		global.gameCutscenes = 4;
	break;
	case 4:
		// Wait
	break;
	case 5:
		oPlayer.state = scPlayerStateLock;
		with (oNpc){
			direction = 0
			sprite_index = sNpcRun;
		}
		if (oNpc.x < 1376){
			oNpc.x += 2;
		} else {
			oPlayer.state = scPlayerStateFree;
			with (oNpc) instance_destroy();
			instance_destroy()
		}
	break;
}
