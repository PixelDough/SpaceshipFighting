///@description TURN EVENT


mp_grid_path(grid, path, x+hspeed, y+vspeed, obj_ship.x, obj_ship.y, false);
mp_linear_path_object(path, obj_ship.x, obj_ship.y, ((hspeed > vspeed) ? hspeed : vspeed), obj_wall)
targetX = lerp(targetX, path_get_x(path, 0.1), 0.1);
targetY = lerp(targetY, path_get_y(path, 0.1), 0.1);

dir = angle_approach(dir, point_direction(x, y, targetX, targetY), 5);
