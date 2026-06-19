function scCutsceneStep(){
	if (global.paused || isPlaying == false) return true;

	// Debug
	if (global.skipCutscenes){
		if (instance_exists(oPlayer)) oPlayer.state = scPlayerStateFree;
		if (variable_instance_exists(id, "npc")) instance_destroy(npc);
		instance_destroy();
		return true;
	}

	event_inherited();
	return false;
}
