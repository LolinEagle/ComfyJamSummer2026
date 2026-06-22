if (layer_exists("Col")) layer_set_visible("Col", false);

// Audio
switch (room){
	case rMenu: soundId = snForest; break;
	case rForest: soundId = snForest; break;
	case rBeach: soundId = snBeach; break;
	case rMansion: soundId = snMansion; break;
	case rMountain: soundId = snMountain; break;
	case rBadEnding: soundId = snEnding; break;
	case rGoodEnding: soundId = snEnding; break;
}
if (audio_is_playing(soundId) == false){
	audio_stop_all()
	audio_play_sound(soundId, 0, true, 0.2);
}
