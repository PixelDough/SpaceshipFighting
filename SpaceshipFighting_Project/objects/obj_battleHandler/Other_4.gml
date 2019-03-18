
if !singleton()
	exit;

waitTime = 150;

introTextScale = 0;
introTextAngle = 0;
introText = "READY";


scoreTextFade = 0;
scoreTextX = -room_width;
scoreTextShow = false;

winner = noone;

audio_stop_all();
audio_play_sound(choose(mus_battle1, mus_battle2, mus_battle3), 100, true);
