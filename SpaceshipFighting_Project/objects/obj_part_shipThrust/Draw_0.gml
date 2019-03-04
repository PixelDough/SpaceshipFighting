
gpu_set_fog(true, col, 0, 1)
draw_sprite_loop(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
gpu_set_fog(false, col, 0, 1)

if image_alpha <= 0 
	instance_destroy()
