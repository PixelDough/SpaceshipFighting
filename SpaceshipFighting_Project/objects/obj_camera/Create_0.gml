
if !singleton()
	exit;

view_enabled = true;
view_visible[0] = true;

width = global.resolution[0];
height = global.resolution[1];

//application_surface_draw_enable(false)
surface_resize(application_surface, width*4, height*4);
//surface_resize(global.loopSurface, (width*3)*4, (height*3)*4);

global.cam = camera_create();
camera_set_view_size(global.cam, width, height);
camera_set_view_pos(global.cam, 0, 0);

camW = width;
camH = height;

view_set_camera(view_camera[0], global.cam);


