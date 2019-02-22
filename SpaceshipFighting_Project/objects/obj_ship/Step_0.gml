
depth = -bbox_top;

if inputCheck(player_num, INPUT.B, INPUT_STATE.HELD) {
	//speed = clamp(speed+0.25, 0, 5);
	hspeed = clamp(hspeed+lengthdir_x(0.25, dir), -speed_max, speed_max);
	vspeed = clamp(vspeed+lengthdir_y(0.25, dir), -speed_max, speed_max);
} else {
	hspeed = lerp(hspeed, 0, 0.01);
	vspeed = lerp(vspeed, 0, 0.01);
}
if inputCheck(player_num, INPUT.DOWN, INPUT_STATE.HELD) {
	speed = lerp(speed, 0, 0.1);
}
speed = clamp(speed, -speed_max, speed_max);

if inputCheck(player_num, INPUT.RIGHT, INPUT_STATE.HELD) - inputCheck(player_num, INPUT.LEFT, INPUT_STATE.HELD) != 0 {
	dir -= (inputCheck(player_num, INPUT.RIGHT, INPUT_STATE.HELD) - inputCheck(player_num, INPUT.LEFT, INPUT_STATE.HELD)) * turn_speed;
}

//if input.action_one-input.action_two != 0 {
//	height = clamp(height+(input.action_one-input.action_two), 5, 64);
//}
if inputCheck(player_num, INPUT.X, INPUT_STATE.HELD) {
	if !shield {
		shield = instance_create_depth(x, y, depth, obj_shield);
	}
	speed = lerp(speed, 0, 0.15);
} else {
	if shield {
		instance_destroy(shield);
	}
	shield = noone;
	if inputCheck(player_num, INPUT.A, INPUT_STATE.HELD) and alarm[0] <= 0 {
		var _laser = instance_create_depth(x, y, depth+10, laser_type);
		_laser.height = height;
		_laser.dir = dir;
		alarm[0] = 15;
	}
}

self_loop();


if instance_place_loop(x+hspeed, y, obj_wall) {
	hspeed = 0;
}
if instance_place_loop(x, y+vspeed, obj_wall) {
	vspeed = 0;
}

