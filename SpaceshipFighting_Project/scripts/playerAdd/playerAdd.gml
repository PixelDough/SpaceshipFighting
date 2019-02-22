
///@arg INPUT_SOURCE

var _inputSource = argument0;

with obj_playerHandler {
	
	global.playerData[global.playerCount, PLAYER_DATA.INPUT_SOURCE] = _inputSource;
	global.playerData[global.playerCount, PLAYER_DATA.SHIP] = global.playerCount;
	
	global.playerCount++;
	
}
