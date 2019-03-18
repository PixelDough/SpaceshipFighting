
if !singleton()
	exit;

waitTime = 150;

introTextScale = 0;
introTextAngle = 0;
introText = "READY";


scoreTextFade = 0;
scoreTextX = -room_width;
scoreTextShow = false;

if room == rm_results {
	var _results = instance_create_layer(0, 0, "META", obj_menu_results);
	_results.SCORE = SCORE;
	_results.winner = winner;
	instance_destroy();
	exit;
}

audio_stop_all();
audio_play_sound(choose(mus_battle1, mus_battle2, mus_battle3), 100, true);
