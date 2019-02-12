///@description MOVE EVENT

if !instance_place_loop(x + lengthdir_x(16, dir) + hspeed, y, obj_wall) {
	//speed = clamp(speed+0.25, 0, 5);
	hspeed = clamp(hspeed+lengthdir_x(0.25, dir), -2, 2);
}

if !instance_place_loop(x, y + lengthdir_y(16, dir) + vspeed, obj_wall) {
	vspeed = clamp(vspeed+lengthdir_y(0.25, dir), -2, 2);
}

if distance_to_object(obj_wall) < 8 {
	ACTION = ENEMY.TURN;
	exit;
}
if alarm[1] <= 0 {
	ACTION = ENEMY.WAIT;
	alarm[1] = 15
}
