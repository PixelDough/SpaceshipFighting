/// @arg MODE

var _mode = argument0;

switch (_mode) {
	
	default:
		hspeed = clamp(hspeed+lengthdir_x(acceleration, dir), -speed_max, speed_max);
		vspeed = clamp(vspeed+lengthdir_y(acceleration, dir), -speed_max, speed_max);
	break;
	
	case MODES.TAG:
		if isIt {
			hspeed = clamp(hspeed+lengthdir_x(acceleration, dir), -speed_max-1, speed_max+1);
			vspeed = clamp(vspeed+lengthdir_y(acceleration, dir), -speed_max-1, speed_max+1);
		} else {
			hspeed = clamp(hspeed+lengthdir_x(acceleration, dir), -speed_max, speed_max);
			vspeed = clamp(vspeed+lengthdir_y(acceleration, dir), -speed_max, speed_max);
		}
	break;
	
}

//speed = clamp(speed+0.25, 0, 5);

		
//Ship trail
var _trail = instance_create(x-lengthdir_x(12, dir), y-lengthdir_y(12, dir), obj_part_shipThrust)
_trail.col = ship_color;
_trail.image_angle = dir;
