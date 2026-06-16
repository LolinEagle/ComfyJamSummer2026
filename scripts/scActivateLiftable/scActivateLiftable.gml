function scActivateLiftable(_id){
	if (global.iLifted == noone){
		if (global.debug)
			show_debug_message(_id);
		global.iLifted = _id;
		with (global.iLifted){
			lifted = true;
			persistent = true;
		}
	}
}
