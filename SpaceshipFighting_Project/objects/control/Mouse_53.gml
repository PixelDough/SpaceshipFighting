
if global.debug {
	var _starNum = 20;
	for (var _i = 0; _i < _starNum; _i++) {
		var _star = instance_create(mouse_x, mouse_y, obj_part_star);
		_star.direction = (360/_starNum) * _i
	}
}
