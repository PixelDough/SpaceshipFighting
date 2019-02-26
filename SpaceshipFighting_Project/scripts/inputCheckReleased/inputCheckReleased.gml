///@arg playerNum
///@arg INPUT
///@arg CONTROL_ARRAY

var _playerNum = argument0;
var _input = argument1;
var _controlArray = argument2;

var _list = global.playerData[| _playerNum];

if ds_list_empty(global.playerData)
	return false;

// Keyboard Input
if _list[PLAYER_DATA.INPUT_SOURCE] <= -1 {
	
	return keyboard_check_released(_controlArray[_input]);
	
}



// Controller Input
if _list[PLAYER_DATA.INPUT_SOURCE] >= 0 {
	
	return gamepad_button_check_released(_list[PLAYER_DATA.INPUT_SOURCE], _controlArray[_input]);
	
}

