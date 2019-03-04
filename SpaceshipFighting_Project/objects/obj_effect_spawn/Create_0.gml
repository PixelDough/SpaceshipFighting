
var _starNum = 20;
for (var _i = 0; _i < _starNum; _i++) {
	var _star = instance_create(x, y, obj_part_spawn);
	var _dir = (360/_starNum)*_i;
	TweenFire(_star, EaseInQuad, 0, false, 0, 60, "x", _star.x+lengthdir_x(96, _dir), x, "y", _star.y+lengthdir_y(96, _dir), y, "image_xscale", 1, 0, "image_yscale", 1, 0);
}
