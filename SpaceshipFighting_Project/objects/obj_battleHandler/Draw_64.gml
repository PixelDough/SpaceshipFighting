
if waitTime == 140 {
	TweenFire(id, EaseOutElastic, 0, 0, 0, 30, "introTextScale", 0, 4);
}

if waitTime == 1 {
	var _t = TweenFire(id, EaseOutElastic, 0, 0, 0, 30, "introTextScale", 0, 4);
	TweenMore(_t, id, EaseInBack, 0, 0, 0, 60, "introTextScale", 4, 0, "introTextAngle", 0, 180);
	introText = "BATTLE";
	
}

if waitTime == -30 {
	//TweenFire(id, EaseInBack, 0, 0, 0, 60, "introTextScale", introTextScale, 0, "introTextAngle", 0, 180);
}




if scoreTextShow {
	
	// Score Box
	draw_set_color(c_black)
	var _scoreCount = array_length_1d(SCORE);
	
	var _width = (_scoreCount*128)/2;
	var _height = 256/2;
	
	draw_roundrect(width/2-_width + scoreTextX, height/2-_height, width/2+_width + scoreTextX, height/2+_height, false)
	draw_set_color(c_white)
	draw_roundrect(width/2-_width + scoreTextX, height/2-_height, width/2+_width + scoreTextX, height/2+_height, true)
	
	// Ships in Score Box
	draw_set_halign(fa_center)
	
	for (var _i=0; _i<_scoreCount; _i++) {
		var _player = global.playerData[| _i];
		
		var _x = (width/2) + ( (_i-((_scoreCount-1)/2))*128) + scoreTextX;
		var _y = height/2 - _height/2;
		draw_sprite_outlined(object_get_sprite(_player[PLAYER_DATA.SHIP]), 0, _x, _y, 2+SCORE_SHIP_SCALE[_i], 2+SCORE_SHIP_SCALE[_i], SCORE_SHIP_ROT[_i], c_white, c_white)
		
		var _textY = height/2 + _height/2
		draw_text_outlined(_x, _textY + SCORE_BOUNCE[_i], SCORE[_i], c_white, c_gray, 2, 2, 0);
	}
	
}

//draw_text_outlined(10, 10, modeList[| modeCurrent], c_white, c_black, 1, 1, 0)

draw_text_outlined(width/2, height/2, introText, c_white, c_black, introTextScale, introTextScale, introTextAngle)
