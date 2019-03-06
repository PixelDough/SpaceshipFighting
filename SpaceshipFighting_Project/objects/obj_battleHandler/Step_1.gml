

if waitTime > 0 {
	global.inputEnabled = false;
	
	if waitTime == 140 {
		audio_play_sound(snd_voice_ready, 100, false)
	}
	//if waitTime == 60 {
	//	audio_play_sound(snd_voice_set, 100, false)
	//}
	if waitTime == 1 {
		audio_play_sound(snd_voice_battle, 100, false)
	}
	
} else {
	global.inputEnabled = true;
}

waitTime--;

if instance_number(obj_ship) < 2 and alarm[0] <= 0 and !global.debug {
	alarm[0] = 120;
}
