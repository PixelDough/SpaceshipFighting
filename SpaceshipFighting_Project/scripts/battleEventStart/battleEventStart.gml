/// @arg MODE

var _mode = argument0;

switch (_mode) {
	
	default:
		
	break;
	
	case MODES.ADWARE:
		//repeat(3) {
			instance_create(random_range(0, room_width), random_range(0, room_height), obj_ad_annoying);
		//}
	break;
	
	case MODES.TAG:
		var _shipNum = irandom(instance_number(obj_ship)-1);
		with obj_ship {
			if player_num == _shipNum {
				isIt = true;
				exit;
			}
		}
	break
	
}
