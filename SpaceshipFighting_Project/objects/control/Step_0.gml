
global.time++;

if global.musicEnabled
	audio_group_set_gain(audiogroup_music, 1, 0);
else
	audio_group_set_gain(audiogroup_music, 0, 0);

if keyboard_check_pressed(vk_escape) {
	game_end();
}

if keyboard_check_pressed(ord("R")) {
	if keyboard_check(vk_shift) 
		game_restart();
	else
		room_restart();
}

if keyboard_check_pressed(ord("F"))
	window_set_fullscreen(!window_get_fullscreen());

if keyboard_check(vk_shift) and keyboard_check_pressed(ord("D"))
	global.debug = !global.debug

