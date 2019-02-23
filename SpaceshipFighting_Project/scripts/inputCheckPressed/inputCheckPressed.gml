///@arg playerNum
///@arg INPUT
///@arg CONTROL_ARRAY

var _playerNum = argument0;
var _input = argument1;
var _controlArray = argument2;

if _playerNum == -1 {
	
	// Check for input from any source
	
	return false;
	
}

// Keyboard Input
if global.playerData[_playerNum, PLAYER_DATA.INPUT_SOURCE] <= -1 {
	
	return keyboard_check_pressed(_controlArray[_input])
	
}



// Controller Input
if global.playerData[_playerNum, PLAYER_DATA.INPUT_SOURCE] >= 0 {
	
	return gamepad_button_check_pressed(global.playerData[_playerNum, PLAYER_DATA.INPUT_SOURCE], _controlArray[_input])
	
}

