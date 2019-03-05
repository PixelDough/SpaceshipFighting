
direction = random(360);
image_angle = random(360);
//speed = 5;

audio_stop_sound(snd_ship_spawn);
audio_play_sound(snd_ship_spawn, 100, false);

TweenFire(id, EaseLinear, 0, false, 0, 15, "image_alpha", 0, 1)