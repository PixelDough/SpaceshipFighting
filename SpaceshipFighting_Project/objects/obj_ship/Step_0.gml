
depth = -bbox_top;



if inputCheck(player_num, INPUT.A, inputCreate(player_num)) {
	//speed = clamp(speed+0.25, 0, 5);
	hspeed = clamp(hspeed+lengthdir_x(acceleration, dir), -speed_max, speed_max);
	vspeed = clamp(vspeed+lengthdir_y(acceleration, dir), -speed_max, speed_max);
	
	//Ship trail
	var _trail = instance_create(x-lengthdir_x(12, dir), y-lengthdir_y(12, dir), obj_part_shipThrust)
	_trail.col = ship_color;
	_trail.image_angle = dir;
	
} else {
	hspeed = lerp(hspeed, 0, FRICTION);
	vspeed = lerp(vspeed, 0, FRICTION);
}
if inputCheck(player_num, INPUT.DOWN, inputCreate(player_num)) {
	speed = lerp(speed, 0, 0.1);
}
// Slow down to max speed
speed = clamp(speed, -speed_max, speed_max);

if inputCheck(player_num, INPUT.RIGHT, inputCreate(player_num)) - inputCheck(player_num, INPUT.LEFT, inputCreate(player_num)) != 0 {
	dir -= (inputCheck(player_num, INPUT.RIGHT, inputCreate(player_num)) - inputCheck(player_num, INPUT.LEFT, inputCreate(player_num))) * turn_speed;
}

//if input.action_one-input.action_two != 0 {
//	height = clamp(height+(input.action_one-input.action_two), 5, 64);
//}
if inputCheck(player_num, INPUT.B, inputCreate(player_num)) {
	if !shield {
		shield = instance_create_depth(x, y, depth, obj_shield);
	}
	speed = lerp(speed, 0, 0.15);
} else {
	if shield {
		instance_destroy(shield);
	}
	shield = noone;
	
	// Shoot Laser
	if inputCheck(player_num, INPUT.X, inputCreate(player_num)) and alarm[0] <= 0 {
		var _laser = instance_create_depth(x, y, depth+10, obj_laser);
		_laser.creator = id;
		_laser.height = height;
		_laser.dir = dir;
		_laser.sprite_index = laser_type;
		alarm[0] = 45;
	}
	
	// Punch
	//if inputCheckPressed(player_num, INPUT.X, inputCreate(player_num)) and gloveDistance <= 0 {
	//	gloveState = 1;
	//	TweenFire(id, EaseOutBack, 1, false, 0, 15, "gloveDistance", 0, 128);
	//	var _laser = instance_create_depth(x, y, depth, laser_type);
	//	_laser.image_xscale = 3;
	//	_laser.image_yscale = 3;
	//	_laser.dir = dir;
	//}
	
}

if inputCheckPressed(player_num, INPUT.ZR, inputCreate(player_num)) {
	//speed *
}

self_loop();


if instance_place_loop(x+hspeed, y, obj_wall) {
	hspeed = 0;
}
if instance_place_loop(x, y+vspeed, obj_wall) {
	vspeed = 0;
}

hitInvinTime--;

