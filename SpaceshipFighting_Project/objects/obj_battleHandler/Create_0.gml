
SCORE = []
SCORE_BOUNCE = [];
SCORE_SHIP_ROT = [];
SCORE_SHIP_SCALE = [];
for (var _i = 0; _i < ds_list_size(global.playerData); _i++) {
	SCORE[_i] = 0;
	SCORE_BOUNCE[_i] = 0;
	SCORE_SHIP_ROT[_i] = 90;
	SCORE_SHIP_SCALE[_i] = 0;
}

winner = noone;

enum MODES {
	NORMAL,
	RAPID_FIRE,
	SOUTHPAW,
	ADWARE
}
global.battleMode = MODES.NORMAL;


