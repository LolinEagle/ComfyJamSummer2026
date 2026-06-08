event_inherited();

// Cutscenes
if (global.gameCutscenes == 1){
	if (oNpc.x > 1056){
		oNpc.x -= 2;
	} else {
		with (oNpc){
			sprite_index = sNpcIdle;
			localFrame = 0;
			scAnimateSprite();
		}
		
		// TextBox
		scNewTextBox("1", 1);
		scNewTextBox("2", 1);
		scNewTextBox("3", 1);
	
		global.gameCutscenes++;	
	}
}

if (global.gameCutscenes == 2) instance_destroy();
