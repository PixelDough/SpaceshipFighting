
LOADED_MUSIC = false;
LOADED_SOUND = false;

if !audio_group_is_loaded(audiogroup_music)
	audio_group_load(audiogroup_music);
if !audio_group_is_loaded(audiogroup_music)
	audio_group_load(audiogroup_sound);

if audio_group_is_loaded(audiogroup_music) and audio_group_is_loaded(audiogroup_music) {
	room_goto_next();
}
