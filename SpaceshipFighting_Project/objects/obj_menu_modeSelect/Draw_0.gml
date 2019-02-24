
var _size = array_length_1d(MENU_MODES);

SEL = clamp(SEL + (inputCheckPressed(0, INPUT.DOWN, inputCreate(0)) - inputCheckPressed(0, INPUT.UP, inputCreate(0))), 0, _size-1);

for (var _i=0; _i<_size; _i++) {
	var _this = MENU_MODES[_i];
	
	var _y = (room_height/2) + (((_i*2)-1)*80)
	
	draw_set_halign(fa_center);
	
	var _col = c_black
	var _col2 = c_dkgray
	
	var _spriteColor = c_black;
	if _i == SEL {
		_spriteColor = c_white;
		_this[MODES_ARR.SCALE] = lerp(_this[MODES_ARR.SCALE], 1.5, 0.25);
			
		_col = c_white
		_col2 = c_black
		
		draw_text_outlined((room_width/2)-128, _y+32, _this[MODES_ARR.SUBTITLE], _col, _col2, _this[MODES_ARR.SCALE]/2, _this[MODES_ARR.SCALE]/2, 0);
		
		if inputCheckPressed(0, INPUT.A, inputCreate(0)) and _this[2] != noone {
			script_execute(_this[MODES_ARR.SCRIPT]);
		}
			
	} else {
		_this[MODES_ARR.SCALE] = lerp(_this[MODES_ARR.SCALE], 1, 0.25);
	}
	var _size2 = _size+1;
	var _i2 = _i+1;
	
	// Draw menu sprite
	draw_sprite_ext(_this[MODES_ARR.SPRITE], 0, (room_width/2)+128, _y, _this[MODES_ARR.SCALE], _this[MODES_ARR.SCALE], 0, _spriteColor, 1)
	
	// Draw menu text
	draw_set_valign(fa_center);
	draw_text_outlined((room_width/2)-128, _y, _this[MODES_ARR.STRING], _col, _col2, _this[MODES_ARR.SCALE]+1, _this[MODES_ARR.SCALE]+1, 0);
	
	MENU_MODES[_i] = _this;
	
}
