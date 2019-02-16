
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
	MENU_SEL = clamp(MENU_SEL + input.r_p - input.l_p, 0, array_length_1d(MENU_VARS)-1);
	
	for (var _i=0; _i<array_length_1d(MENU_VARS); _i++) {
		var _vars = MENU_VARS[_i];
		
		var _float = sin((global.time/10)+_vars[1]);
		draw_sprite_ext(_vars[4], 0, _vars[1], _vars[2]-64, _vars[3], _vars[3], sin(global.time/20)*2, c_white, 1)
		
		//draw_sprite_stretched(_vars[4], 0, _vars[1]-64, _vars[2] - 64 + 80 + _float, 128, 128);
		draw_text_outlined(_vars[1], _vars[2] + _float, _vars[0], c_white, c_black, _vars[3], _vars[3], 0)
		//draw_text_transformed(_vars[1], _vars[2] + _float, _vars[0], _vars[3], _vars[3], 0)
		if _i == MENU_SEL {
			_vars[3] = lerp(_vars[3], 1.5, 0.25);
			if MENU_SEL != _current_sel {
				
			}
			//draw_sprite(spr_menuBanner, _i, room_width/2, room_height/1.5);
		} else {
			_vars[3] = lerp(_vars[3], 1, 0.25);
		}
		
		MENU_VARS[_i] = _vars;
	}
	//draw_text(room_width/4, room_height/2, "BATTLE");
	//draw_text(room_width-(room_width/4), room_height/2, "MISSION");
}
