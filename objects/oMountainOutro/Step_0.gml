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
			scNewTextBox("You finally decided to listen to what I say.", 1);
			scNewTextBox("Thank you.", 1);
			scNewTextBox("Your reward awaits you a little further on.", 1, true);

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
			global.cutscenesEnd[CUTSCENES.MOUNTAIN_OUTRO] = true;
			global.cutscenes = 0;
			with (npc) instance_destroy();
			instance_destroy();
		}
	break;
}
