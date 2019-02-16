/// @description draw_text_outlined(x, y, string, colour, outline_colour)
/// @param x
/// @param  y
/// @param  string
/// @param  colour
/// @param  outline_colour
/// @param	xscale
/// @param	yscale
/// @param	angle
var xx = argument0;
var yy = argument1;
var str = argument2;
var _xscale = argument5;
var _yscale = argument6;
var _angle = argument7;
draw_set_colour(argument4);
draw_text_transformed(xx-1, yy, string_hash_to_newline(str), _xscale, _yscale, _angle);
draw_text_transformed(xx+1, yy, string_hash_to_newline(str), _xscale, _yscale, _angle);
draw_text_transformed(xx, yy-1, string_hash_to_newline(str), _xscale, _yscale, _angle);
draw_text_transformed(xx, yy+1, string_hash_to_newline(str), _xscale, _yscale, _angle);
draw_set_colour(argument3);
draw_text_transformed(xx, yy, string_hash_to_newline(str), _xscale, _yscale, _angle);
draw_set_colour(c_white);
