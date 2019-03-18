
LOADED_MUSIC = audio_group_is_loaded(audiogroup_music)
LOADED_SOUND = audio_group_is_loaded(audiogroup_sound)

if LOADED_MUSIC and LOADED_SOUND {
	room_goto_next();
}
