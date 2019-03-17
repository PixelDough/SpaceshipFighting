
dir = 0;
spd = 12;

height = 24;

//alarm[0] = die_timer;

enum LASER {
	MOVE,
	DIE
}
ACTION = LASER.MOVE;

col = c_white;
creator = noone;

audio_stop_sound(snd_shoot)
audio_play_sound(snd_shoot, 100, false)
