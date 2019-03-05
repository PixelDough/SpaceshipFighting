
audio_play_sound(snd_explosion, 100, false)
audio_play_sound(snd_explosion2, 100, false)

var _starNum = 20;
for (var _i = 0; _i < _starNum; _i++) {
	var _star = instance_create(x, y, obj_part_star);
	_star.direction = (360/_starNum) * _i
}
