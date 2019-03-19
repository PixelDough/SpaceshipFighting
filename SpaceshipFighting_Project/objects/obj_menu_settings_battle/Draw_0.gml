
var _size = array_height_2d(MENU_SETTINGS);

SEL = clamp(SEL + (inputCheckPressed(0, INPUT.DOWN, inputCreate(0)) - inputCheckPressed(0, INPUT.UP, inputCreate(0))), 0, _size-1);

for (var _i=0; _i<_size; _i++) {
	
	var _x = room_width/2;
	var _y = (room_height/2) + ((_i-((_size-1)/2))*128);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	var _c1 = c_black;
	var _c2 = c_gray;
	
	if (_i == SEL) {
		
		// Change Button Value
		var _min = MENU_SETTINGS[_i, SETTINGS_ARR.MIN];
		var _max = MENU_SETTINGS[_i, SETTINGS_ARR.MAX];
		var _input = inputCheckPressed(0, INPUT.RIGHT, inputCreate(0)) - inputCheckPressed(0, INPUT.LEFT, inputCreate(0));
		
		if _input != 0 {
			if is_bool(MENU_SETTINGS[_i, SETTINGS_ARR.VAL]) {
				MENU_SETTINGS[_i, SETTINGS_ARR.VAL] = !MENU_SETTINGS[_i, SETTINGS_ARR.VAL];
			} else {
				MENU_SETTINGS[_i, SETTINGS_ARR.VAL] += _input;
				MENU_SETTINGS[_i, SETTINGS_ARR.VAL] = clamp(MENU_SETTINGS[_i, SETTINGS_ARR.VAL], _min, _max);
			}
		}
		
		// Draw Button as Selected
		_c1 = c_white;
		_c2 = c_black;
		
		MENU_SETTINGS[_i, SETTINGS_ARR.SCALE] = lerp(MENU_SETTINGS[_i, SETTINGS_ARR.SCALE], 2, 0.25);
		
	} else {
		
		MENU_SETTINGS[_i, SETTINGS_ARR.SCALE] = lerp(MENU_SETTINGS[_i, SETTINGS_ARR.SCALE], 1, 0.25);
		
	}
	
	var _scale = MENU_SETTINGS[_i, SETTINGS_ARR.SCALE];
	
	var _string = MENU_SETTINGS[_i, SETTINGS_ARR.STRING] + ": ";
	if (is_bool(MENU_SETTINGS[_i, SETTINGS_ARR.VAL])) {
		_string += string(MENU_SETTINGS[_i, SETTINGS_ARR.VAL] == true ? "YES" : "NO");
	} else {
		_string += string(MENU_SETTINGS[_i, SETTINGS_ARR.VAL]);
	}
	
	draw_text_outlined(_x, _y, _string, _c1, _c2, _scale, _scale, 0)
	
}

// Go back to ship select
if inputCheckPressed(0, INPUT.B, inputCreate(0)) {
	room_change_swipe(rm_shipSelection);
}


