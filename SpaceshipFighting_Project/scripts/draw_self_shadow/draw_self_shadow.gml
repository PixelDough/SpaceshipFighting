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

draw_sprite_ext(_sprite, _subimg, _x, _y + _shadow_distance, _xscale, _yscale, _rotation, c_black, image_alpha-(1-_shadow_alpha));
draw_sprite_ext(_sprite, _subimg, _x, _y + (sin(global.time/5)), _xscale, _yscale, _rotation, _color, _alpha);
