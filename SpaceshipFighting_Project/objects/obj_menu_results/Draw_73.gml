
var _scoreCount = array_length_1d(SCORE);
var _width = (_scoreCount*128)/2;



//gpu_set_blendenable(false)
//gpu_set_colorwriteenable(false,false,false,true);
//draw_set_alpha(0);
//draw_rectangle(0,0, room_width,room_height, false);

//draw_set_alpha(1);
//draw_set_color(c_white);
//draw_rectangle((room_width/2)-64, 0, (room_width/2)+64, room_height, false);
//gpu_set_blendenable(true);
//gpu_set_colorwriteenable(true,true,true,true);

//gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
//gpu_set_alphatestenable(true);
//draw_sprite_tiled_ext(spr_checker_pattern, 0, room_width/2 + global.time/2, room_height/2 + global.time, 2, 2, c_white, 1);
//gpu_set_alphatestenable(false);
//gpu_set_blendmode(bm_normal);


for (var _i=0; _i<_scoreCount; _i++) {
	
	var _player = global.playerData[| _i];
	
	var _x = (room_width/2) + ( (_i-((_scoreCount-1)/2))*128);
	var _y = room_height-128 - (((floor(SCORE_FINAL[_i])/scoreToWin) * 256));
	
	
	if _i == winner and winnerFound {
		checkerY = lerp(checkerY, room_height/2, 0.1);
		gpu_set_blendenable(false)
		gpu_set_colorwriteenable(false,false,false,true);
		draw_set_alpha(0);
		draw_rectangle(0,0, room_width,room_height, false);

		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_rectangle((_x)-64, room_height/2 - checkerY, (_x)+64, room_height/2 + checkerY, false);
		gpu_set_blendenable(true);
		gpu_set_colorwriteenable(true,true,true,true);

		gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
		gpu_set_alphatestenable(true);
		draw_sprite_tiled_ext(spr_checker_pattern, 0, _x + global.time/2, _y + global.time, 2, 2, c_white, 1);
		gpu_set_alphatestenable(false);
		gpu_set_blendmode(bm_normal);
	}
	
	//draw_text(10, 10, winner)
	
	
	draw_sprite_ext(object_get_sprite(_player[PLAYER_DATA.SHIP]), 0, _x, _y, 2, 2, 90, c_white, 1)
	
	var _textY = room_height-64
	draw_text_outlined(_x, _textY, floor(SCORE_FINAL[_i]), c_white, c_black, 2, 2, 0);
}


