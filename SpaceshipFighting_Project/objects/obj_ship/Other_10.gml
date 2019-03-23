/// @description LOSE LIFE

if hitInvinTime > 0
	exit;

life--;
hitInvinTime = hitInvinTimeMax;

if life == 2 {
	audio_play_sound(snd_ship_hit, 100, false);
}

if life == 1 {
	audio_play_sound(snd_ship_warning, 100, false);
}

if life <= 0 {
	instance_create_layer(x, y, "META", obj_explosion0)
	instance_destroy();
}
