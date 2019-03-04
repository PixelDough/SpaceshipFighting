///@arg sprite
///@arg subimg
///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg rotation
///@arg color
///@arg alpha


//draw_self_shadow(sprite_index, image_index, x-room_width, y, image_xscale, image_yscale, dir, c_white, image_alpha, height, 0.5);
//draw_self_shadow(sprite_index, image_index, x+room_width, y, image_xscale, image_yscale, dir, c_white, image_alpha, height, 0.5);
//draw_self_shadow(sprite_index, image_index, x, y-room_height, image_xscale, image_yscale, dir, c_white, image_alpha, height, image_alpha - 0.5);
//draw_self_shadow(sprite_index, image_index, x, y+room_height, image_xscale, image_yscale, dir, c_white, image_alpha, height, image_alpha - 0.5);



//draw_sprite_ext(sprite_index, image_index, x-room_width, y, image_xscale, image_yscale, dir, c_white, image_alpha);
//draw_sprite_ext(sprite_index, image_index, x-room_width, y-room_height, image_xscale, image_yscale, dir, c_white, image_alpha);
//draw_sprite_ext(sprite_index, image_index, x-room_width, y+room_height, image_xscale, image_yscale, dir, c_white, image_alpha);

//draw_sprite_ext(sprite_index, image_index, x+room_width, y, image_xscale, image_yscale, dir, c_white, image_alpha);
//draw_sprite_ext(sprite_index, image_index, x+room_width, y-room_height, image_xscale, image_yscale, dir, c_white, image_alpha);
//draw_sprite_ext(sprite_index, image_index, x+room_width, y+room_height, image_xscale, image_yscale, dir, c_white, image_alpha);

//draw_sprite_ext(sprite_index, image_index, x, y-room_height, image_xscale, image_yscale, dir, c_white, image_alpha);

//draw_sprite_ext(sprite_index, image_index, x, y+room_height, image_xscale, image_yscale, dir, c_white, image_alpha);

surface_set_target(global.loopSurface);
	
	draw_sprite_ext(argument0, argument1, (4*argument2)+(4*room_width), (4*argument3)+(4*room_height), argument4*4, argument5*4, argument6, argument7, argument8);
	
surface_reset_target();
