
var _l = distance_to_point(room_width, y);
var _r = distance_to_point(0, y);
var _d = distance_to_point(x, 0);
var _u = distance_to_point(x, room_height);

var _shortest = min(_r, _l, _u, _d);

switch _shortest {
	case _r:
		image_angle = 0;
		x = 0;
	break;
	case _u:
		image_angle = 90;
		y = room_height;
	break
	case _l:
		image_angle = 180;
		x = room_width;
		y+=sprite_height;
	break;
	case _d:
		image_angle = 270;
		y = 0;
		x+=sprite_width;
	break;
}

depth = -9999
