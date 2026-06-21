if (scCutsceneStep()) return;

switch (global.cutscenes){
	case 1:
		if (npc.x > endX){
			npc.x -= 2;
		} else {
			with (npc){
				sprite_index = sNpc;
				localFrame = 0;
				scAnimateSprite();
			}

			// TextBox
			scNewTextBox("You don't know your cardinal\ndirections or what?", 1);
			scNewTextBox("Don't go to the right.", 1);
			scNewTextBox("Stop following me.", 1, true);

			global.cutscenes = 2;
		}
	break;
	case 2: break;
	case 3:
		oPlayer.state = scPlayerStateLock;
		with (npc){
			direction = 0;
			sprite_index = sNpcRun;
		}
		if (npc.x < startX){
			npc.x += 2;
		} else {
			oPlayer.state = scPlayerStateFree;
			global.cutscenesEnd[CUTSCENES.BEACH_INTRO] = true;
			global.cutscenes = 0;
			with (npc) instance_destroy();
			instance_destroy();
		}
	break;
}
