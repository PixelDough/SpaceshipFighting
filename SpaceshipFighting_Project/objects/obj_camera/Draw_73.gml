
//draw_surface(application_surface, 0, 0)

//draw_surface_stretched(global.loopSurface, 0, 0, 768, 448)

var _x=x;
var _y=y;

var _list = instance_list_random(obj_ship)

ds_list_sort(_list, true)

var _thisDistance = 1;

//with obj_ship {
//	if x < other.x+64 or y < other.y+64 or x > other.x+other.camW-64 or y > other.y+other.camH-64 {
//		if other.camW < room_width and other.camH < room_height {
//			other.camW = clamp(other.camW+2, 384, room_width);
//			other.camH = clamp(other.camH+2, 224, room_height);
//		}
//	}
//}


for (var _i=0; _i<ds_list_size(_list); _i++) {
	
	if _i == 0 {
		_x=_list[| _i].x;
		_y=_list[| _i].y;
	} else {
		
		
		_x = mean(_x, _list[| _i].x);
		_y = mean(_y, _list[| _i].y);
	}
}

var _w = camW*_thisDistance;
var _h = camH*_thisDistance;


camera_set_view_size(global.cam, _w, _h)

_x = clamp(_x, _w/2, room_width-_w/2);
_y = clamp(_y, _h/2, room_height-_h/2);

camera_set_view_pos(global.cam, _x-_w/2, _y-_h/2);


ds_list_destroy(_list)

//draw_surface_stretched(global.loopSurface, -room_width*2, -room_height*2, _w, _h)
//draw_surface_stretched(global.loopSurface, -room_width, -room_height*2, _w, _h)
//draw_surface_stretched(global.loopSurface, 0, -room_height*2, _w, _h)
//draw_surface_stretched(global.loopSurface, -room_width*2, -room_height, _w, _h)
//draw_surface_stretched(global.loopSurface, -room_width, -room_height, _w, _h)
//draw_surface_stretched(global.loopSurface, 0, -room_height, _w, _h)
//draw_surface_stretched(global.loopSurface, -room_width*2, 0, _w, _h)
//draw_surface_stretched(global.loopSurface, -room_width, 0, _w, _h)
//draw_surface_stretched(global.loopSurface, 0, 0, _w, _h)
