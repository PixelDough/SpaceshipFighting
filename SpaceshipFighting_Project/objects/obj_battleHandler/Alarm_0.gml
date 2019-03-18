/// @description RESTART MATCH

SCORE[winner]++
	
TweenFire(id, EaseInOutSine, TWEEN_MODE_BOUNCE, false, 0, 10, TPArray(SCORE_SHIP_SCALE, winner), 0, 1);
	
if SCORE[winner] >= scoreToWin {
	audio_stop_all();
	TweenFire(id, EaseInOutSine, TWEEN_MODE_PATROL, false, 0, 30, TPArray(SCORE_BOUNCE, winner), -16, 16)
	alarm[1] = 120;
} else {
	TweenFire(id, EaseOutElastic, 0, false, 0, 30, TPArray(SCORE_BOUNCE, winner), -16, 0)
	scoreTextTweenOut = TweenFire(id, EaseInCubic, 0, false, 60, 60, "scoreTextX", 0, room_width)
}

audio_play_sound(snd_pointGet, 100, false)

