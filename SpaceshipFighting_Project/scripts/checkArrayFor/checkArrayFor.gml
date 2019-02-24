///@arg array
///@arg value

var _array = argument0;
var _value = argument1;

for (var _i = 0; _i<array_length_1d(_array); _i++) {
	if _array[_i] == _value {
		return true;
	}
}

return false;
