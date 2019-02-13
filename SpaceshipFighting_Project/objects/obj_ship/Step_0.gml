
depth = -bbox_top;

if input.u {
	//speed = clamp(speed+0.25, 0, 5);
	hspeed = clamp(hspeed+lengthdir_x(0.25, dir), -5, 5);
	vspeed = clamp(vspeed+lengthdir_y(0.25, dir), -5, 5);
} else {
	hspeed = lerp(hspeed, 0, 0.01);
	vspeed = lerp(vspeed, 0, 0.01);
}
if input.d {
	speed = lerp(speed, 0, 0.1);
}
speed = clamp(speed, -5, 5);

if input.r - input.l != 0 {
	dir -= (input.r-input.l) * 5;
}

//if input.action_one-input.action_two != 0 {
//	height = clamp(height+(input.action_one-input.action_two), 5, 64);
//}
if input.action_two {
	if !shield {
		shield = instance_create_depth(x, y, depth, obj_shield);
	}
	speed = lerp(speed, 0, 0.15);
} else {
	if shield {
		instance_destroy(shield);
	}
	shield = noone;
	if input.action_one and alarm[0] <= 0 {
		var _laser = instance_create_depth(x, y, depth+10, obj_laser);
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

