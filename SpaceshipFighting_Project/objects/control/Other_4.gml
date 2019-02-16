
if room == parent {
	room_goto_next();
}

instance_create_layer(0, 0, "META", obj_camera);

if instance_exists(obj_spawn_player) {
	var _spawners = instance_nearest_list(x, y, obj_spawn_player);
	for (var _i=0; _i<ds_list_size(_spawners); _i++) {
		with _spawners[|_i] {
			ship_type = global.ship_types[irandom(array_length_1d(global.ship_types)-1)];
			event_user(0);
		}
	}
}

display_set_gui_size(global.resolution[0], global.resolution[1]);
//display_set_gui_maximize(global.resolution[0], global.resolution[1]);
