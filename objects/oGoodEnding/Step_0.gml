if (scCutsceneStep()) return;

oPlayer.state = scPlayerStateLock;

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
			scNewTextBox("Yum!", 1, true);

			global.cutscenes = 2;
		}
	break;
	case 2:
		// Wait
	break;
	case 3:
		scNewTextBox("After all your efforts, you are finally rewarded with all these delicious treats.", 3);
		scNewTextBox("...", 3);
		scNewTextBox("You ate so much that you ended up falling asleep.", 3, true);
		global.cutscenes = 4;
	break;
	case 4:
		// Wait
	break;
	case 5:
		oPlayer.sprite_index = sPlayerSleep;
		scRoomTransition(TRANS_TYPE.SLIDE, rMenu);
	break;
}
