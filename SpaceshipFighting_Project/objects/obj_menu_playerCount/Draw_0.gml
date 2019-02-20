
var _size = array_length_1d(MENU_PLAYERCOUNT);

SEL = clamp(SEL + (input.d_p - input.u_p), 0, _size-1);

for (var _i=0; _i<_size; _i++) {
	var _this = MENU_PLAYERCOUNT[_i];
	
	// Draw ships for player counts
	//for (var _s=_i; _s>=0; _s--) {
	//	//draw_sprite(spr_menu_ships, _s, 16+(_s*16), 64*(_i+1));
	//	draw_sprite_ext(spr_menu_ships, _s, (room_width/2) + 16+(_s*32), 64*(_i+1), 2, 2, 0, c_white, 1);
	//}
	
	var _spriteColor = c_black
	if SEL == _i {
		_spriteColor = c_white
		if input.action_one_pressed {
			room_change_swipe(title)
		}
	}
	var _size2 = _size+1;
	var _i2 = _i+1;
	draw_sprite_ext(spr_menu_playerCount, _i, room_width/2, (room_height/2) + ((_i2-_size2/2)*(room_height/_size2)), 1, 1, 0, _spriteColor, 1)
	
	// Draw menu text
	draw_set_valign(fa_center);
	//draw_text_outlined(96, 64*(_i+1), _this[0], c_white, c_black, _this[1], _this[1], 0);
}
