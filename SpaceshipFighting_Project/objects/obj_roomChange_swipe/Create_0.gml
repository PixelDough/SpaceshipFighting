
x1 = room_width;
y1 = 0;
x2 = room_width;
y2 = room_height;

target = room;

audio_stop_all();

TweenFire(id, EaseOutCubic, 0, false, 0, 30, "x1", room_width, -1)

input.enabled = false;
global.inputEnabled = false;
