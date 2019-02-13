
view_enabled = true;
view_visible[0] = true;


width = global.resolution[0];
height = global.resolution[1];

cam = camera_create();
camera_set_view_size(cam, width, height);
camera_set_view_pos(cam, x, y);

cam_l = camera_create();
camera_set_view_size(cam_l, width, height);
camera_set_view_pos(cam_l, x, y);

cam_r = camera_create();
camera_set_view_size(cam_r, width, height);
camera_set_view_pos(cam_r, x, y);

cam_u = camera_create();
camera_set_view_size(cam_u, width, height);
camera_set_view_pos(cam_u, x, y);

cam_d = camera_create();
camera_set_view_size(cam_d, width, height);
camera_set_view_pos(cam_d, x, y);

view_set_camera(view_camera[0], cam);
view_set_camera(view_camera[1], cam_l);
view_set_camera(view_camera[2], cam_r);
view_set_camera(view_camera[3], cam_u);
view_set_camera(view_camera[4], cam_d);

