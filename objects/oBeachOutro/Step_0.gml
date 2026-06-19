if (scCutsceneStep()) return;

switch (global.cutscenes){
	case 1:
		if (npc.y > endY){
			npc.y -= 2;
		} else {
			with (npc){
				sprite_index = sNpc;
				localFrame = 0;
				scAnimateSprite();
			}
		
			// TextBox
			scNewTextBox("I know you've decided not to listen to me, but you shouldn't go in there.", 1, true);

			global.cutscenes = 2;
		}
	break;
	case 2: break;
	case 3:
		oPlayer.state = scPlayerStateLock;
		with (npc){
			direction = 270;
			sprite_index = sNpcRun;
		}
		if (npc.y < startY){
			npc.y += 2;
		} else {
			oPlayer.state = scPlayerStateFree;
			global.cutscenesEnd[CUTSCENES.BEACH_OUTRO] = true;
			global.cutscenes = 0;
			with (npc) instance_destroy();
			instance_destroy();
		}
	break;
}
