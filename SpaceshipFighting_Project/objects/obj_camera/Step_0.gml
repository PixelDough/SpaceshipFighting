
//if instance_exists(obj_ship) {
//	x = obj_ship.x;
//	y = obj_ship.y;

//	camera_set_view_pos(cam, x-width/2, y-height/2);
//}


if global.inputEnabled {
	//x = loopVal(x+1, 0, room_width)
	//y = loopVal(y+1, 0, room_height)
	camera_set_view_pos(cam, x, y);
}
