
depth = -bbox_top;

if !instance_place_loop(x + lengthdir_x(16, dir) + hspeed, y, obj_wall) {
	//speed = clamp(speed+0.25, 0, 5);
	hspeed = clamp(hspeed+lengthdir_x(0.25, dir), -5, 5);
} else {
	hspeed = lerp(hspeed, 0, 0.01);
}

if !instance_place_loop(x, y + lengthdir_y(16, dir) + vspeed, obj_wall) {
	vspeed = clamp(vspeed+lengthdir_y(0.25, dir), -5, 5);
} else {
	vspeed = lerp(vspeed, 0, 0.01);
}

speed = clamp(speed, -5, 5);



var _player = [obj_ship.x, obj_ship.y];
var _player_u = [obj_ship.x, obj_ship.y-room_height];
var _player_d = [obj_ship.x, obj_ship.y+room_height];
var _player_l = [obj_ship.x-room_width, obj_ship.y];
var _player_r = [obj_ship.x+room_width, obj_ship.y];

var _player_dist = distance_to_point(_player[0], _player[1]);
var _player_dist_u = distance_to_point(_player_u[0], _player_u[1])
var _player_dist_d = distance_to_point(_player_d[0], _player_d[1])
var _player_dist_l = distance_to_point(_player_l[0], _player_l[1])
var _player_dist_r = distance_to_point(_player_r[0], _player_r[1])

var _shortest = min(_player_dist, _player_dist_u, _player_dist_d, _player_dist_l, _player_dist_r);

var _dir_to_player = point_direction(x, y, obj_ship.x, obj_ship.y);
switch(_shortest) {
	case _player_dist_u:
		_dir_to_player = point_direction(x, y, _player_u[0], _player_u[1]);
		break;
	case _player_dist_d:
		_dir_to_player = point_direction(x, y, _player_d[0], _player_d[1]);
		break;
	case _player_dist_l:
		_dir_to_player = point_direction(x, y, _player_l[0], _player_l[1]);
		break;
	case _player_dist_r:
		_dir_to_player = point_direction(x, y, _player_r[0], _player_r[1]);
		break;
}


var _buff = 15;
//if abs(angle_difference(dir, _dir_to_player)) > _buff
	dir = angle_approach(dir, _dir_to_player, 5);

////if input.action_one-input.action_two != 0 {
////	height = clamp(height+(input.action_one-input.action_two), 5, 64);
////}
//if input.action_two {
//	hasShield = true;
//	speed = lerp(speed, 0, 0.15);
//} else {
//	hasShield = false;
//	if input.action_one_pressed and alarm[0] <= 0 {
//		var _laser = instance_create_depth(x, y, depth+10, obj_laser);
//		_laser.height = height;
//		_laser.dir = dir;
//		alarm[0] = 15;
//	}
//}

self_loop();


if instance_place_loop(x+hspeed, y, obj_wall) {
	hspeed = 0;
}
if instance_place_loop(x, y+vspeed, obj_wall) {
	vspeed = 0;
}



