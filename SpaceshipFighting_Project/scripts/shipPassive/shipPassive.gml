/// @arg MODE

var _mode = argument0;

switch (_mode) {
	
	default:
		
	break;
	
	case MODES.TAG:
		if (isIt) {
			var _hit = instance_place(x, y, obj_ship);
			if _hit {
				if _hit.id != id {
					if _hit.hitInvinTime <= 0 {
						_hit.isIt = true;
						hitInvinTime = hitInvinTimeMax;
						isIt = false;
					}
				}
			}
		}
	break;
	
}