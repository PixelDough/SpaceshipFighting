
//image_angle = direction;

if gloveDistance > 0 {
	
	var _x = x+lengthdir_x(gloveDistance, dir)
	var _y = y+lengthdir_y(gloveDistance, dir)
	
	//draw_sprite_ext(spr_boxingGlove, 0, _x+lengthdir_x(gloveDistance-32, dir),_y+lengthdir_y(gloveDistance-32, dir), 1, 1, dir, c_white, 1)
	
	draw_sprite_ext(spr_boxingGlove, 0, x, y, gloveDistance/32, 1, dir, c_white, 1)
	
	draw_sprite_ext(spr_boxingGlove, 1, _x, _y, gloveDistance/64, gloveDistance/64, dir, c_white, 1);
	
}

draw_self_shadow(sprite_index, image_index, x, y, 1, 1, dir, c_black, 1, height, 0.75);

if life <= 2 {
	//instance_create_layer(x-lengthdir_x(12, dir), y-lengthdir_y(12, dir), "Instances", obj_dust)
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_top, bbox_bottom), "Instances", obj_dust)
}
if life == 1 {
	if global.time%30 < 5
		gpu_set_fog(true, c_red, 0, 1)
}

if hitInvinTime > 0 and hitInvinTime%4 < 2 {
	gpu_set_fog(true, c_white, 0, 1)
}

//image_angle = dir;

draw_sprite_loop(sprite_index, image_index, x, y + (sin(global.time/5)), image_xscale, image_yscale, dir, c_white, image_alpha)


//draw_sprite_float(sprite_index, image_index, x, y, 1, 1, dir, c_white, 1);

gpu_set_fog(false, c_red, 0, 1)

//if hasShield {
//	draw_sprite_ext(spr_shield, 0, x, y-height, 1, 1, dir, c_white, 1);
//	//draw_sprite(spr_shield, 0, x, y-height);
//}
