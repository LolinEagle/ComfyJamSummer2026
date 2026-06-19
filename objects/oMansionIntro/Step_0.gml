if (scCutsceneStep()) return;

switch (global.cutscenes){
	case 1:
		if (oPlayer.y > 112){
			oPlayer.y -= 2;
		} else {
			with (oPlayer){
				sprite_index = sPlayer;
				scAnimateSprite();
			}
		
			// TextBox
			with (oChest) image_index = 1;
			scNewTextBox("Empty.", 1, true);

			global.cutscenes = 2;
		}
	break;
	case 2:
		// Wait
		oPlayer.state = scPlayerStateLock;
	break;
	case 3:
		enemy = instance_create_depth(592, 384, 0, oEnemy);
		with (enemy){
			direction = 90;
			sprite_index = sEnemyRun;
		}
		global.cutscenes = 4;
	break;
	case 4:
		if (enemy.y > 192){
			enemy.y -= 2;
		} else {
			with (enemy){
				direction = 90;
				sprite_index = sEnemy;
				localFrame = 0;
				scAnimateSprite();
			}
		
			scNewTextBox("I'm going to eat you alive MUHAHAHA !", 1, true);

			global.cutscenes = 5;
		}
	break;
	case 5:
		// Wait
	break;
	case 6:
		oPlayer.state = scPlayerStateFree;
		global.cutscenesEnd[CUTSCENES.MANSION_INTRO] = true;
		global.cutscenes = 0;
		instance_destroy()
	break;
}
