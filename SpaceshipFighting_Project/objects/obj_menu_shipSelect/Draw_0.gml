
var _shipCount = array_length_1d(global.ships);

for (var _i=0; _i<_shipCount; _i++) {
	draw_sprite(spr_menu_ships, _i, 48 + (_i*48), 64);
}

//if keyboard_check_pressed(vk_enter) {
//	playerAdd();
//}

for (var _r=0; _r<4; _r++) {
	draw_set_color(c_white);
	
	var _x = 96 + (_r*room_width/4);
	var _y = 256;
	
	//draw_roundrect(_r*(room_width/4), 128, (_r+1)*(room_width/4), room_height-128, false)
	//nineSlice(spr_menuBox_9slice, _r*(room_width/4), 128, (_r+1)*room_width/4, room_height-32, true)
	
	draw_sprite(spr_menuBox_shipSelect, 0, _x, _y);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	if global.playerCount <= _r {
		draw_text_outlined(_x, _y, "PRESS\nSTART", c_white, c_black, 1, 1, 0)
	} else {
		var _dir = inputCheck(-1, INPUT.RIGHT, INPUT_STATE.PRESSED) - inputCheck(-1, INPUT.LEFT, INPUT_STATE.PRESSED);
		if _dir != 0 {
			global.playerData[_r, PLAYER_DATA.SHIP] += _dir;
			if global.playerData[_r, PLAYER_DATA.SHIP] < 0
				global.playerData[_r, PLAYER_DATA.SHIP] = array_length_1d(global.ships)-1
			if global.playerData[_r, PLAYER_DATA.SHIP] > array_length_1d(global.ships)-1
				global.playerData[_r, PLAYER_DATA.SHIP] = 0;
			
		}
		draw_sprite_ext(object_get_sprite(global.ships[global.playerData[_r, PLAYER_DATA.SHIP]]), 0, _x, _y, 2, 2, global.time/2, c_white, 1)
	}
	
}
