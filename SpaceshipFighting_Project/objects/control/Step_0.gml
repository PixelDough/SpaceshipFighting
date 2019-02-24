
global.time++;

if keyboard_check_pressed(vk_escape) {
	game_end();
}

if keyboard_check_pressed(ord("R")) {
	if keyboard_check(vk_shift) 
		game_restart();
	else
		room_restart();
}
