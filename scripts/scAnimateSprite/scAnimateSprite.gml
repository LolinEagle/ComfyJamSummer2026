function scAnimateSprite(){
	var _totalFrames = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + (CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FPS;

	// Check if animation is ended
	if (localFrame >= _totalFrames){
		animationEnd = true;
		localFrame = 0;
	} else {
		animationEnd = false;
	}
}
