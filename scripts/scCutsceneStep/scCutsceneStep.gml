function scCutsceneStep(){
	if (global.paused) return true;

	event_inherited();

	if (global.skipCutscenes){
		if (variable_instance_exists(id, "npc")) instance_destroy(npc);
		instance_destroy();
		return true;
	}
	
	return false;
}
