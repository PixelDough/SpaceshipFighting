/// @arg MODE

var _mode = argument0;

switch (_mode) {
	
	default:
		dir -= (inputCheck(player_num, INPUT.RIGHT, inputCreate(player_num)) - inputCheck(player_num, INPUT.LEFT, inputCreate(player_num))) * turn_speed;
	break;
	
	case MODES.SOUTHPAW:
		dir += (inputCheck(player_num, INPUT.RIGHT, inputCreate(player_num)) - inputCheck(player_num, INPUT.LEFT, inputCreate(player_num))) * turn_speed;
	break;
	
}
