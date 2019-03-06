
newInputListen();

draw_sprite_ext(spr_planet1_big, 0, room_width/2, room_height+256, 1, 1, global.time/30, c_white, 1);

draw_set_font(global.font_big);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_outlined(room_width/2, room_height/4, "SPACE OUT", c_white, c_black, 4, 4, sin(global.time/15)*1);
//draw_text_color(room_width/2, room_height/4, "SPACE OUT", c_white, c_white, c_yellow, c_yellow, 1);

if TITLE_STATE == TITLE_STATES.TITLE {
	if inputCheckPressed(0, INPUT.A, inputCreate(0)) {
		audio_play_sound(snd_ui_select, 100, false)
		global.inputEnabled = false;
		alarm[0] = title_to_menu_time;
		TweenFire(id, EaseOutElastic, 0, false, 0, title_to_menu_time, "title_press_scale", 0.5, 1.0);
	}
		
	if alarm[0] > 0 {
		draw_set_alpha(sign(sin(global.time)));
	}
	
	draw_text_outlined(room_width/2, room_height/2 + sin(global.time/10), "Press X", c_white, c_black, title_press_scale, title_press_scale, 0);
	draw_set_alpha(1);
}

if TITLE_STATE == TITLE_STATES.MENU {
	var _current_sel = MENU_SEL;
	var _input = inputCheckPressed(0, INPUT.DOWN, inputCreate(0)) - inputCheckPressed(0, INPUT.UP, inputCreate(0));
	MENU_SEL = clamp(MENU_SEL + _input, 0, array_length_1d(MENU_VARS)-1);
	
	if MENU_SEL != _current_sel {
		audio_play_sound(snd_ui_change, 100, false)
	}
	
	for (var _i=0; _i<array_length_1d(MENU_VARS); _i++) {
		var _vars = MENU_VARS[_i];
		
		var _col = c_black;
		var _col2 = c_dkgray;
		if _i == MENU_SEL {
			_vars[1] = lerp(_vars[1], 1.5, 0.25);
			
			_col = c_white
			_col2 = c_black
			
			if inputCheckPressed(0, INPUT.A, inputCreate(0)) and _vars[2] != noone {
				script_execute(_vars[2]);
			}
			
		} else {
			_vars[1] = lerp(_vars[1], 1, 0.25);
		}
		
		var _float = sin((global.time/10));
		
		draw_text_outlined(room_width/2, room_height/2 + _i*(string_height(_vars[0])*2) + _float, _vars[0], _col, _col2, _vars[1], _vars[1], 0)
		
		MENU_VARS[_i] = _vars;
	}
}
