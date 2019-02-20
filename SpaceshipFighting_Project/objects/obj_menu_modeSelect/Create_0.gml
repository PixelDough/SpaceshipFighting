
SEL = 0;

MENU_MODES = [];

enum MODES_ARR {
	STRING,
	SCALE,
	SPRITE,
	SUBTITLE,
	SCRIPT
}

MENU_MODES[0] = [
	"BATTLE",
	1,
	spr_menuIcon_battle,
	"2-4 PLAYERS",
	scr_modeSelect_battle
]
MENU_MODES[1] = [
	"MISSION",
	1,
	spr_menuIcon_mission,
	"1 PLAYER",
	scr_modeSelect_battle
]
