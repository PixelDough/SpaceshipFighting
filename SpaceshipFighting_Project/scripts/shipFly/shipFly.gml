/// @arg MODE

var _mode = argument0;

switch (_mode) {
	
	default:
		//speed = clamp(speed+0.25, 0, 5);
		hspeed = clamp(hspeed+lengthdir_x(acceleration, dir), -speed_max, speed_max);
		vspeed = clamp(vspeed+lengthdir_y(acceleration, dir), -speed_max, speed_max);
		
		//Ship trail
		var _trail = instance_create(x-lengthdir_x(12, dir), y-lengthdir_y(12, dir), obj_part_shipThrust)
		_trail.col = ship_color;
		_trail.image_angle = dir;
	exit;
	
}
