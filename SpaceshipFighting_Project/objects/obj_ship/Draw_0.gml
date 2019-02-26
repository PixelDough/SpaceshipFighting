
//image_angle = direction;

if gloveDistance > 0 {
	
	var _x = x+lengthdir_x(gloveDistance, dir)
	var _y = y+lengthdir_y(gloveDistance, dir)
	
	//draw_sprite_ext(spr_boxingGlove, 0, _x+lengthdir_x(gloveDistance-32, dir),_y+lengthdir_y(gloveDistance-32, dir), 1, 1, dir, c_white, 1)
	
	draw_sprite_ext(spr_boxingGlove, 0, x, y, gloveDistance/32, 1, dir, c_white, 1)
	
	draw_sprite_ext(spr_boxingGlove, 1, _x, _y, gloveDistance/64, gloveDistance/64, dir, c_white, 1);
	
}

draw_sprite_loop()

draw_self_shadow(sprite_index, image_index, x, y, 1, 1, dir, c_white, 1, height, 0.5);

//if hasShield {
//	draw_sprite_ext(spr_shield, 0, x, y-height, 1, 1, dir, c_white, 1);
//	//draw_sprite(spr_shield, 0, x, y-height);
//}
