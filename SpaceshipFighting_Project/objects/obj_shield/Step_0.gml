
depth = -y - 10

if !instance_exists(obj_ship)
	instance_destroy();

dir = image_angle;
stick_to_angle(obj_ship, 0, 0, obj_ship.dir)
