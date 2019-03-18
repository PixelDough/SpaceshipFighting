
var _percentMusic = audio_group_load_progress(audiogroup_music)
var _percentSound = audio_group_load_progress(audiogroup_sound)

draw_set_halign(fa_center);
if !LOADED_MUSIC {
	draw_text_outlined(room_width/2, room_height/2, "LOADING MUSIC", c_white, c_black, 2, 2, 0)
} else if !LOADED_SOUND {
	draw_text_outlined(room_width/2, room_height/2, "LOADING SOUND", c_white, c_black, 2, 2, 0)
} else {
	
}
