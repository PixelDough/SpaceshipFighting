
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);

if x1 <= 0 and room != target {
	room_goto(target);
	TweenFire(id, EaseOutCubic, 0, false, 0, 30, "x2", room_width, -1)
}
if x2 <= 0 {
	input.enabled = true;
	global.inputEnabled = true;
	instance_destroy();
}
