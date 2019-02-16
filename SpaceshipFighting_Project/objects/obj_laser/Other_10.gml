/// @description MOVE

x += lengthdir_x(speed_max, dir)
y += lengthdir_y(speed_max, dir)

if instance_place_loop(x, y, obj_wall)
	alarm[0] = 1;

self_loop();