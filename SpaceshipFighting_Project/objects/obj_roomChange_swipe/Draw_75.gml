
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);

if x1 <= 0 and !roomHasChanged {
	room_goto(target);
	roomHasChanged = true;
}
if x2 <= 0 {
	input.enabled = true;
	global.inputEnabled = true;
	//TweenStop(TweensAll())
	instance_destroy();
}
