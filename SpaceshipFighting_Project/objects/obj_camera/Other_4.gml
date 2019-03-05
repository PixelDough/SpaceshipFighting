
view_enabled = true;
view_visible[0] = true;

x=0;
y=0;

camera_set_view_size(global.cam, width, height);
camera_set_view_pos(global.cam, 0, 0);

view_set_camera(view_camera[0], global.cam);
