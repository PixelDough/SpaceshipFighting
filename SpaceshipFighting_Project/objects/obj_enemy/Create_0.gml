
dir = 0;
hspeed = 0;
vspeed = 0;

targetX = x;
targetY = y

height = 24;

hasShield = false;

path = path_add();
path_set_kind(path, 1);
path_set_precision(path, 8);
grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
mp_grid_add_instances(grid, obj_wall, true);

enum ENEMY {
	WAIT,
	MOVE,
	TURN,
	DODGE,
	ATTACK
}
ACTION = ENEMY.WAIT;
