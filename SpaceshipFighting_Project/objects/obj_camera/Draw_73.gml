
//draw_surface(application_surface, 0, 0)

//draw_surface_stretched(global.loopSurface, 0, 0, 768, 448)

var _w = 768*3
var _h = 448*3

draw_surface_stretched(global.loopSurface, -room_width*2, -room_height*2, _w, _h)
draw_surface_stretched(global.loopSurface, -room_width, -room_height*2, _w, _h)
draw_surface_stretched(global.loopSurface, 0, -room_height*2, _w, _h)
draw_surface_stretched(global.loopSurface, -room_width*2, -room_height, _w, _h)
draw_surface_stretched(global.loopSurface, -room_width, -room_height, _w, _h)
draw_surface_stretched(global.loopSurface, 0, -room_height, _w, _h)
draw_surface_stretched(global.loopSurface, -room_width*2, 0, _w, _h)
draw_surface_stretched(global.loopSurface, -room_width, 0, _w, _h)
draw_surface_stretched(global.loopSurface, 0, 0, _w, _h)
