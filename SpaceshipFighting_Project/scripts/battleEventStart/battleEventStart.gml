/// @arg MODE

var _mode = argument0;

switch (_mode) {
	
	default:
		
	exit;
	
	case MODES.ADWARE:
		repeat(5) {
			instance_create(random_range(0, room_width), random_range(0, room_height), obj_ad_annoying);
		}
	exit;
	
}
