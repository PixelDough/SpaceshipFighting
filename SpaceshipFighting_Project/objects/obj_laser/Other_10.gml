/// @description MOVE

x += lengthdir_x(spd, dir)
y += lengthdir_y(spd, dir)

if instance_place_loop(x, y, obj_wall)
	alarm[0] = 1;

self_loop();