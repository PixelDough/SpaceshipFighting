///@arg x
///@arg y
///@arg object

var _x = argument0;
var _y = argument1;
var _obj = argument2;

var _return = false;

_return = 
	instance_place(_x, _y, _obj) || 
	instance_place(_x-room_width, _y, _obj) || instance_place(_x+room_width, _y, _obj) ||
	instance_place(_x, _y-room_height, _obj) || instance_place(_x, _y+room_height, _obj);
	

return _return;
