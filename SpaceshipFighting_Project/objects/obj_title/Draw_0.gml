
draw_sprite_ext(spr_planet1_big, 0, room_width/2, room_height+256, 1, 1, global.time/30, c_white, 1);

draw_set_font(global.font_big);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_outlined(room_width/2, room_height/4, "SPACE OUT", c_white, c_black, 4, 4, sin(global.time/15)*1);

if TITLE_STATE == TITLE_STATES.TITLE {
	if input.action_one_pressed {
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
	MENU_SEL = clamp(MENU_SEL + input.d_p - input.u_p, 0, array_length_1d(MENU_VARS)-1);
	
	for (var _i=0; _i<array_length_1d(MENU_VARS); _i++) {
		var _vars = MENU_VARS[_i];
		
		var _col = c_teal;
		if _i == MENU_SEL {
			_vars[1] = lerp(_vars[1], 1.5, 0.25);
			
			_col = c_aqua
			
			if input.action_one_pressed and _vars[2] != noone {
				script_execute(_vars[2]);
			}
			
		} else {
			_vars[1] = lerp(_vars[1], 1, 0.25);
		}
		
		var _float = sin((global.time/10));
		
		draw_text_outlined(room_width/2, room_height/2 + _i*(string_height(_vars[0])*2) + _float, _vars[0], _col, c_black, _vars[1], _vars[1], 0)
		
		MENU_VARS[_i] = _vars;
	}
}
