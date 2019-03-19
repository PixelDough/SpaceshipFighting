
if waitTime > 0 {
	
	
	with obj_ship {
		
		
		
		draw_text_outlined(x + (sign((room_width/2)-x) * 64), y, "P" + string(player_num+1), ship_color, c_black, 2, 2, sin(global.time/10)*3)
	}
}
