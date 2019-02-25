
singleton();

enabled = true;

enum INPUT {
	LEFT,
	RIGHT,
	UP,
	DOWN,
	
	A,
	B,
	X,
	Y,
	
	L,
	R,
	
	ZL,
	ZR,
	
	START,
	SELECT,
}

enum INPUT_STATE {
	PRESSED,
	HELD,
	RELEASED
}

playerInputDevice = [];

playerInputDevice[3] = noone; // represents NULL/NONE
playerInputDevice[2] = noone; // represents NULL/NONE
playerInputDevice[1] = noone; // represents NULL/NONE
playerInputDevice[0] = noone; // represents NULL/NONE

r_p = array_create(4, false)
l_p = array_create(4, false)
u_p = array_create(4, false)
d_p = array_create(4, false)
			
r = array_create(4, false)
l = array_create(4, false)
u = array_create(4, false)
d = array_create(4, false)

r_released = array_create(4, false)
l_released = array_create(4, false)
u_released = array_create(4, false)
d_released = array_create(4, false)

action_two = array_create(4, false)
action_one = array_create(4, false)

action_two_pressed = array_create(4, false)
action_one_pressed = array_create(4, false)

action_two_released = array_create(4, false)
action_one_released = array_create(4, false)
	
pause_pressed =  array_create(4, false)
select_pressed = array_create(4, false)

//keyboard_set_map(ord("D"), vk_right);
//keyboard_set_map(ord("A"), vk_left);
//keyboard_set_map(ord("W"), vk_up);
//keyboard_set_map(ord("S"), vk_down);

//keyboard_set_map(ord("N"), ord("X"));
//keyboard_set_map(ord("M"), ord("Z"));


