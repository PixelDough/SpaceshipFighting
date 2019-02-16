
/// TITLE VARIABLES
enum TITLE_STATES {
	TITLE,
	MENU
}
TITLE_STATE = TITLE_STATES.TITLE;

title_press_scale = 1;
title_press = false;

title_to_menu_time = 60;


/// MENU VARIABLES
enum MENU {
	BATTLE,
	MISSION
}
MENU_SEL = MENU.BATTLE;

MENU_VARS = [];

MENU_VARS[MENU.BATTLE] = [
	"BATTLE",
	room_width/4,
	room_height/2,
	1,
	spr_ship1
];

MENU_VARS[MENU.MISSION] =[
	"MISSION",
	room_width-(room_width/4),
	room_height/2,
	1,
	spr_ring_up
];

audio_play_sound(mus_title, 100, true)