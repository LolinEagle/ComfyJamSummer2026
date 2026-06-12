if (global.paused) return;
event_inherited();

switch (global.cutscenes){
	case 1:
		if (npc.x > 1056){
			npc.x -= 2;
		} else {
			with (npc){
				sprite_index = sNpcIdle;
				localFrame = 0;
				scAnimateSprite();
			}
		
			// TextBox
			scNewTextBox("You are awake, you should\ngo back to sleep.", 1);
			scNewTextBox("You shouldn't press WASD\nto move.", 1);

			global.cutscenes = 2;
		}
	break;
	case 2:
		if (
			oPlayer.x <= playerX - 64 || oPlayer.x >= playerX + 64 ||
			oPlayer.y <= playerY - 64 || oPlayer.y >= playerY + 64
		){
			oPlayer.state = scPlayerStateLock;
			global.cutscenes = 3;
		}
	break;
	case 3:
		scNewTextBox("Whatever...", 1);
		scNewTextBox("Just don't go to the east.", 1, true);
		global.cutscenes = 4;
	break;
	case 4:
		// Wait
	break;
	case 5:
		oPlayer.state = scPlayerStateLock;
		with (npc){
			direction = 0
			sprite_index = sNpcRun;
		}
		if (npc.x < 1376){
			npc.x += 2;
		} else {
			oPlayer.state = scPlayerStateFree;
			global.cutscenesEnd[CUTSCENES.INTRO] = true;
			global.cutscenes = 0;
			with (npc) instance_destroy();
			instance_destroy()
		}
	break;
}
