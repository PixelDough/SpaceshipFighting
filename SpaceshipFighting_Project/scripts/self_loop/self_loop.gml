var _buff = 0;

if x < 0 - _buff {
	var _off = x
	x = room_width + _buff + _off;
}

if x > room_width + _buff {
	var _off = x-room_width;
	x = 0 - _buff + _off;
}

if y < 0 - _buff {
	var _off = y;
	y = room_height + _buff + _off;
}

if y > room_height + _buff {
	var _off = y-room_height;
	y = 0 - _buff + _off; 
}
