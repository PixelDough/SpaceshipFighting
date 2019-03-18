
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
enum TITLE {
	START,
	OPTIONS,
	QUIT
}
MENU_SEL = TITLE.START;

MENU_VARS = [];

MENU_VARS[TITLE.START] = [
	"START",
	1,
	scr_title_start
];

MENU_VARS[TITLE.OPTIONS] = [
	"OPTIONS",
	1,
	noone
];

MENU_VARS[TITLE.QUIT] = [
	"QUIT",
	1, 
	scr_title_quit
]

audio_stop_all();
audio_play_sound(snd_ambience, 100, true)
audio_play_sound(mus_title_slow, 100, true)
