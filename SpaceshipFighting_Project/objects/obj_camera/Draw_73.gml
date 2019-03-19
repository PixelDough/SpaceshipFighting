
//draw_surface(application_surface, 0, 0)

//draw_surface_stretched(global.loopSurface, 0, 0, 768, 448)

var _x=0;
var _y=0;

var _list = instance_list_random(obj_ship)

ds_list_sort(_list, true)

var _thisDistance = 0;

if !instance_exists(obj_ship) {
	_thisDistance = room_height;
}

with obj_ship {
	if instance_number(obj_ship) > 1 {
		if _x == 0 and _y == 0 {
			_x = x;
			_y = y;
		} else {
			_x = mean(_x, x);
			_y = mean(_y, y);
		}
	
		for (var _i=0; _i<ds_list_size(_list); _i++) {
			_thisDistance = max(_thisDistance, distance_to_object(_list[| _i]))
		}
	}
}


//for (var _i=0; _i<ds_list_size(_list); _i++) {
	
//	if _i == 0 {
//		_x=_list[| _i].x;
//		_y=_list[| _i].y;
//	} else {
		
		
//		_x = mean(_x, _list[| _i].x);
//		_y = mean(_y, _list[| _i].y);
//	}
//}

_thisDistance = clamp(_thisDistance, height, room_width)

//var _h = _thisDistance;
//var _w = _thisDistance * width/height;

//camera_set_view_size(global.cam, _w, _h)

//_x = clamp(_x, _w/2, room_width-_w/2);
//_y = clamp(_y, _h/2, room_height-_h/2);



//track_object_type(global.cam, obj_ship, width)

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
