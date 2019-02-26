///@arg device

var _player = argument0;

var _list = global.playerData[| _player];

if !is_array(_list)
	return false;

var _device = _list[PLAYER_DATA.INPUT_SOURCE];

if _device >= 0 {
	
	r_p[_player] = gamepad_button_check_pressed(_device, gp_padr)
	l_p[_player] = gamepad_button_check_pressed(_device, gp_padl)
	u_p[_player] = gamepad_button_check_pressed(_device, gp_padu)
	d_p[_player] = gamepad_button_check_pressed(_device, gp_padd)
			
	r[_player] = gamepad_button_check(_device, gp_padr)
	l[_player] = gamepad_button_check(_device, gp_padl)
	u[_player] = gamepad_button_check(_device, gp_padu)
	d[_player] = gamepad_button_check(_device, gp_padd)

	r_released[_player] = gamepad_button_check_released(_device, gp_padr)
	l_released[_player] = gamepad_button_check_released(_device, gp_padl)
	u_released[_player] = gamepad_button_check_released(_device, gp_padu)
	d_released[_player] = gamepad_button_check_released(_device, gp_padd)

	action_two[_player] = gamepad_button_check(_device, gp_face1)
	action_one[_player] = gamepad_button_check(_device, gp_face2)

	action_two_pressed[_player] = gamepad_button_check_pressed(_device, gp_face1)
	action_one_pressed[_player] = gamepad_button_check_pressed(_device, gp_face2)

	action_two_released[_player] = gamepad_button_check_released(_device, gp_face1)
	action_one_released[_player] = gamepad_button_check_released(_device, gp_face2)
	
	pause_pressed[_player] = gamepad_button_check_pressed(_device, gp_start)
	select_pressed[_player] = gamepad_button_check_pressed(_device, gp_select)
	
}
if _device == -1 {
	
	r_p[_player] = keyboard_check_pressed(vk_right)
	l_p[_player] = keyboard_check_pressed(vk_left)
	u_p[_player] = keyboard_check_pressed(vk_up)
	d_p[_player] = keyboard_check_pressed(vk_down)
	
	r[_player] = keyboard_check(vk_right)
	l[_player] = keyboard_check(vk_left)
	u[_player] = keyboard_check(vk_up)
	d[_player] = keyboard_check(vk_down)

	r_released[_player] = keyboard_check_released(vk_right)
	l_released[_player] = keyboard_check_released(vk_left)
	u_released[_player] = keyboard_check_released(vk_up)
	d_released[_player] = keyboard_check_released(vk_down)

	action_one[_player] = keyboard_check(ord("X"))
	action_two[_player] = keyboard_check(ord("Z"))
	
	action_one_pressed[_player] = keyboard_check_pressed(ord("X"))
	action_two_pressed[_player] = keyboard_check_pressed(ord("Z"))
	
	action_one_released[_player] = keyboard_check_released(ord("X"))
	action_two_released[_player] = keyboard_check_released(ord("Z"))
	
	pause_pressed[_player] = keyboard_check_pressed(vk_enter)
	select_pressed[_player] = keyboard_check_pressed(vk_rshift)
	
}

