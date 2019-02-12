
//image_angle = direction;

draw_sprite_loop()

draw_self_shadow(sprite_index, image_index, x, y, 1, 1, dir, c_white, 1, height, 0.5);

if hasShield {
	draw_self_shadow(spr_shield, 0, x, y, 1, 1, dir, c_white, 1, height, 0);
	//draw_sprite(spr_shield, 0, x, y-height);
}

draw_path(path, x, y, true);
