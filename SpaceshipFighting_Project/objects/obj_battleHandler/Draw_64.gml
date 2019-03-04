
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

if waitTime > 0 {
	with obj_ship {
		draw_text_outlined(x + (sign((room_width/2)-x) * 64), y, "P" + string(player_num+1), ship_color, c_black, 2, 2, sin(global.time/10)*3)
	}
}

draw_text_outlined(room_width/2, room_height/2, introText, c_white, c_black, introTextScale, introTextScale, introTextAngle)
