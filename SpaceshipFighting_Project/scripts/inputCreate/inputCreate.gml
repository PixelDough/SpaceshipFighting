///@arg playerNum

var _playerNum = argument0;

var _inputArray = []

var _list = global.playerData[| _playerNum];

if !variable_global_exists("playerData")
	return false;

if ds_list_size(global.playerData) <= 0
	return false;

// Keyboard Input
if _list[PLAYER_DATA.INPUT_SOURCE] <= -1 {
	
	_inputArray[INPUT.LEFT] = vk_left;
	_inputArray[INPUT.RIGHT] = vk_right;
	_inputArray[INPUT.UP] = vk_up;
	_inputArray[INPUT.DOWN] = vk_down;
	
	_inputArray[INPUT.A] = ord("X");
	_inputArray[INPUT.B] = ord("Z");
	_inputArray[INPUT.X] = ord("S");
	_inputArray[INPUT.Y] = ord("A");
	
	_inputArray[INPUT.L] = ord("Q");
	_inputArray[INPUT.R] = ord("W");
	
	_inputArray[INPUT.ZL] = ord("E");
	_inputArray[INPUT.ZR] = ord("D");
	
	_inputArray[INPUT.START] = vk_enter;
	_inputArray[INPUT.SELECT] = vk_rshift;
	
}



// Controller Input
if _list[PLAYER_DATA.INPUT_SOURCE] >= 0 {
	
	_inputArray[INPUT.LEFT] = gp_padl;
	_inputArray[INPUT.RIGHT] = gp_padr;
	_inputArray[INPUT.UP] = gp_padu;
	_inputArray[INPUT.DOWN] = gp_padd;
	
	_inputArray[INPUT.A] = gp_face1;
	_inputArray[INPUT.B] = gp_face2;
	_inputArray[INPUT.X] = gp_face3;
	_inputArray[INPUT.Y] = gp_face4;
	
	_inputArray[INPUT.L] = gp_shoulderl;
	_inputArray[INPUT.R] = gp_shoulderr;
	
	_inputArray[INPUT.ZL] = gp_shoulderlb;
	_inputArray[INPUT.ZR] = gp_shoulderrb;
	
	_inputArray[INPUT.START] = gp_start;
	_inputArray[INPUT.SELECT] = gp_select;
	
}

return _inputArray;
