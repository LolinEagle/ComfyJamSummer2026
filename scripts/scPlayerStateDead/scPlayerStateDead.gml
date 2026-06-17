function scPlayerStateDead(){
	hSpeed = 0;
	vSpeed = 0;
	
	// If just arriving in this state
	if (sprite_index != sPlayerSleep){
		sprite_index = sPlayerSleep;
		image_index = 0;
		image_speed = 0;
		scRoomTransition(TRANS_TYPE.SLIDE, rMenu);
	}
}
