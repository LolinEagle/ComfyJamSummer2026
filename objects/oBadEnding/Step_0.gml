if (scCutsceneStep()) return;

switch (global.cutscenes){
	case 1:
		scNewTextBox("You should have listened to me. Now you are dead.", 1);
		scNewTextBox("...", 1);
		scNewTextBox("Try to listen to me next time.", 1, true);
		global.cutscenes = 2;
	break;
	case 2:
		// Wait
	break;
	case 3:
		scRoomTransition(TRANS_TYPE.SLIDE, rMenu);
		instance_destroy();
	break;
}
