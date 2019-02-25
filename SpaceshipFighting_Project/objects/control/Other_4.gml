
if room == parent {
	room_goto_next();
}

instance_create_layer(0, 0, "META", obj_camera);

if instance_exists(obj_spawn_player) {
	//var _spawners = instance_nearest_list(x, y, obj_spawn_player);
	//for (var _i=0; _i<ds_list_size(_spawners); _i++) {
	//	with _spawners[|_i] {
	//		ship_type = global.ship_types[global.playerData[_p, PLAYER_DATA.SHIP]];
	//		event_user(0);
	//	}
	//}
	
	for (var _p=0; _p<global.playerCount; _p++) {
		var _spawners = instance_list_random(obj_spawn_player)
		
		with _spawners[| 0] {
			var _shipType = global.playerData[_p, PLAYER_DATA.SHIP];
			var _ship = instance_create_layer((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2, layer, _shipType)
			_ship.player_num = _p;
			instance_destroy();
		}
		
		ds_list_destroy(_spawners)
	}
	
}

display_set_gui_size(global.resolution[0], global.resolution[1]);
//display_set_gui_maximize(global.resolution[0], global.resolution[1]);
