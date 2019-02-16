
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
	MISSION,
	OPTIONS
}
MENU_SEL = MENU.BATTLE;

MENU_VARS = [];

MENU_VARS[MENU.BATTLE] = [
	"BATTLE",
	room_width/4,
	room_height/2 + 128,
	1,
	spr_menuIcon_battle
];

MENU_VARS[MENU.MISSION] = [
	"MISSION",
	room_width-(room_width/4),
	room_height/2 + 128,
	1,
	spr_menuIcon_mission
];

MENU_VARS[MENU.OPTIONS] = [
	"OPTIONS",
	64,
	room_height-64,
	1, 
	spr_laser
]

audio_stop_all();
audio_play_sound(mus_title, 100, true)