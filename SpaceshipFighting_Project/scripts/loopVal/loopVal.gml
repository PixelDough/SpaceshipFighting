///@arg num
///@arg min
///@arg max

var _num = argument0;
var _min = argument1;
var _max = argument2;

if _num < _min {_num = _max;}
if _num > _max {_num = _min;}

return _num;
