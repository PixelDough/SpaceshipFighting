/// @description RESTART MATCH

if instance_number(obj_ship) > 0 {
	SCORE[obj_ship.player_num]++
	audio_play_sound(snd_ui_select, 100, false)
	
	TweenFire(id, EaseInOutSine, TWEEN_MODE_BOUNCE, false, 0, 10, TPArray(SCORE_SHIP_SCALE, obj_ship.player_num), 0, 1);
	
	if SCORE[obj_ship.player_num] >= scoreToWin {
		TweenFire(id, EaseInOutSine, TWEEN_MODE_PATROL, false, 0, 30, TPArray(SCORE_BOUNCE, obj_ship.player_num), -16, 16)
	} else {
		TweenFire(id, EaseOutElastic, 0, false, 0, 30, TPArray(SCORE_BOUNCE, obj_ship.player_num), -16, 0)
	}
	
}

scoreTextTweenOut = TweenFire(id, EaseInCubic, 0, false, 60, 60, "scoreTextX", 0, room_width)

