if (instance_exists(oPlayer) && oPlayer.state != scPlayerStateDead)
	oPlayer.state = scPlayerStateTransition;

if (leading == OUT){
	percent = min(1, percent + TRANSITION_SPEED);
	
	// If 100% or more
	if (percent >= 1){
		// Exception
		if (target == rMenu){
			game_restart();
			return;
		}

		// Go to the targeted room and set transition in to leading in mode
		room_goto(target);
		leading = IN;
	}
} else {
	percent = max(0, percent - TRANSITION_SPEED);
	
	// If 0% or less
	if (percent <= 0){
		if (instance_exists(oPlayer)) oPlayer.state = scPlayerStateFree;
		instance_destroy();
	}
}
