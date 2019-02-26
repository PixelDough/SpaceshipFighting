
///@arg INPUT_SOURCE

var _inputSource = argument0;



with obj_playerHandler {
	
	var _newPlayerArray = []
	
	var _height = ds_list_size(global.playerData)
	
	_newPlayerArray[PLAYER_DATA.INPUT_SOURCE] = _inputSource;
	_newPlayerArray[PLAYER_DATA.SHIP] = _height;
	_newPlayerArray[PLAYER_DATA.SCORE] = 0;
	
	ds_list_add(global.playerData, _newPlayerArray)
	
	
}
