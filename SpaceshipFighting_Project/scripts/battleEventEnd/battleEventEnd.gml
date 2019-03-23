/// @arg MODE

var _mode = argument0;

switch (_mode) {
	
	default:
		
	break;
	
	case MODES.ADWARE:
		with obj_ad_annoying {
			instance_destroy();
		}
	break;
	
	case MODES.TAG:
		with obj_ship {
			if isIt {
				life = 0;
				event_user(0);
			}
		}
	break;
	
}
