
draw_self_shadow(sprite_index, image_index, x-room_width, y, image_xscale, image_yscale, dir, c_white, image_alpha, height, 0.5);
draw_self_shadow(sprite_index, image_index, x+room_width, y, image_xscale, image_yscale, dir, c_white, image_alpha, height, 0.5);
draw_self_shadow(sprite_index, image_index, x, y-room_height, image_xscale, image_yscale, dir, c_white, image_alpha, height, image_alpha - 0.5);
draw_self_shadow(sprite_index, image_index, x, y+room_height, image_xscale, image_yscale, dir, c_white, image_alpha, height, image_alpha - 0.5);
