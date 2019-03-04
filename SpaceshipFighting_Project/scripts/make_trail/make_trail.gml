///@arg time
///@arg trail_fade_time

var _time = argument0;
var _trail_fade_time = argument1;

if global.time % _time == 0 {
	var _trail = instance_create(x, y, obj_trail);
	_trail.die_timer = _trail_fade_time;
	_trail.sprite_index = sprite_index;
	_trail.image_index = image_index;
	_trail.image_angle = image_angle;
	_trail.image_xscale = image_xscale;
	_trail.image_yscale = image_yscale;
	_trail.image_alpha = image_alpha/2;
}
