///@arg sprite
///@arg subimg
///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg rotation
///@arg color
///@arg alpha
///@arg shadow_distance
///@arg shadow_alpha

var _sprite = argument0;
var _subimg = argument1;
var _x = argument2;
var _y = argument3;
var _xscale = argument4;
var _yscale = argument5;
var _rotation = argument6;
var _color = argument7;
var _alpha = argument8;
var _shadow_distance = argument9;
var _shadow_alpha = argument10;

gpu_set_fog(true, c_black, 0, 1)
draw_sprite_loop(_sprite, _subimg, _x, _y + _shadow_distance, _xscale, _yscale, _rotation, c_black, image_alpha-(1-_shadow_alpha));
gpu_set_fog(false, c_black, 0, 1)
//draw_sprite_ext(_sprite, _subimg, _x, _y, _xscale, _yscale, _rotation, _color, _alpha);
