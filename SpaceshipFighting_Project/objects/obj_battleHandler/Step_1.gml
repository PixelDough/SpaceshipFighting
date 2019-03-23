

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
		
		if global.randomBattleEvents {
			alarm[2] = 60*10;
		}
		event_user(0);
		
	}
	
} else {
	global.inputEnabled = true;
}

waitTime--;

if instance_number(obj_ship) <= 1 and !scoreTextShow and !global.debug {
	winner = obj_ship.player_num;
	scoreTextTweenIn = TweenFire(id, EaseOutCubic, 0, false, 30, 60, "scoreTextX", -room_width, 0)
	alarm[0] = 90;
	scoreTextShow = true;
}

if scoreTextX >= room_width and !instance_exists(obj_roomChange_swipe) {
	room_change_swipe(room)
}
