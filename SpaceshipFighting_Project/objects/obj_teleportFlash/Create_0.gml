
var _r = distance_to_point(room_width, y);
var _l = distance_to_point(0, y);
var _u = distance_to_point(x, 0);
var _d = distance_to_point(x, room_height);

var _shortest = min(_r, _l, _u, _d);

switch _shortest {
	case _r:
		image_angle = 180;
		x = room_width;
	break;
	case _u:
		image_angle = 270;
		y = 0
	break
	case _l:
		image_angle = 0;
		x=0
	break;
	case _d:
		image_angle = 90;
		y=room_height
	break;
}

audio_stop_sound(snd_teleport);
audio_play_sound(snd_teleport, 100, false);

//repeat(50) {
//	var _p = instance_create_layer(x, y, "Instances", obj_part_teleport);
//	_p.direction = image_angle + random_range(-30, 30);
	
//}

//instance_destroy()

//image_xscale = 2;
//image_yscale = 2;

depth = -9999

var _glow = instance_place(x, y, obj_teleportGlow)
if _glow
	depth = _glow.depth+10
