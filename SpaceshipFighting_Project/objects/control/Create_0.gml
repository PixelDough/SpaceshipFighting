
if !singleton() 
	exit;

global.time = 0;
global.resolution = [768, 448];

global.ship_types = [obj_ship, obj_ship_neonx];

global.font_big = font_add("GravityBold8.ttf", 12, false, false, 32, 128);
global.font_small = font_add("GravityRegular5.ttf", 4, false, false, 32, 128);
draw_set_font(global.font_big);
draw_set_color(c_white);

global.inputEnabled = true;

global.surfScale = 1;

global.scoreToWin = 3;


// Settings setup
load_settings();




//global.loopSurface = surface_create((room_width*3)*global.surfScale, (room_height*3)*global.surfScale);