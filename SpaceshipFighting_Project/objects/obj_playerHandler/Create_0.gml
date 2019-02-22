
if !singleton()
	exit;


global.playerCount = 0;

enum PLAYER_DATA {
	INPUT_SOURCE,
	SHIP,
}

global.ships = [
	obj_ship,
	obj_ship2,
	obj_ship3,
	obj_ship4,
	obj_ship5,
	obj_ship6,
	obj_ship_neonx,
	obj_ship_parasite
]

global.playerData = [];
//global.playerData[0, PLAYER_DATA.SHIP] = global.ships[irandom(array_length_1d(global.ships)-1)];
//global.playerData[1, PLAYER_DATA.SHIP] = global.ships[irandom(array_length_1d(global.ships)-1)];
