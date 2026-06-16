function scPlayerThrow(){
	if (global.debug) show_debug_message("scPlayerThrow() called");
	with (global.iLifted){
		// Other
		lifted = false;
		thrown = true;
		z = 42;
	
		// Throw
		throwPeakHeight = z + 16;
		throwDistance = entityThrowDistance;
		throwDistanceTravelled = 0;
		throwStartPercent = (13 / throwPeakHeight) * 0.5;
		throwPercent = throwStartPercent;
	
		// Built in variable
		persistent = false;
		direction = other.direction;
		xstart = x;
		ystart = y;
	}
	global.iLifted = noone;
	sprite = sPlayerIdle;
	spriteRun = sPlayerRun;
}
