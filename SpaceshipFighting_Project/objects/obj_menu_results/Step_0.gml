
if inputCheckPressed(0, INPUT.A, inputCreate(0)) {
	room_change_swipe(rm_shipSelection)
}

if global.inputEnabled {
	scoreChangeSpeed += 0.001

	winnerFound = true;
	for (var _i=0; _i<array_length_1d(SCORE); _i++) {
		var _score = floor(SCORE_FINAL[_i]);
		if SCORE_FINAL[_i] < SCORE[_i] {
			SCORE_FINAL[_i] += scoreChangeSpeed;
			winnerFound = false;
		} else {
			SCORE_FINAL[_i] = SCORE[_i];
		}
		if _score != floor(SCORE_FINAL[_i]) {
			var _s = audio_play_sound(snd_laser_hit, 100, false);
			audio_sound_pitch(_s, 0+scoreChangeSpeed*10)
		}
	}
	if winnerFound and !audio_is_playing(mus_win) {
		audio_play_sound(mus_win, 100, true);
		audio_play_sound(snd_yeah, 100, false);
	}
}
