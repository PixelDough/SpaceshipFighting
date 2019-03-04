/// @description SPAWN

if instance_exists(obj_playerHandler) {
	
	var _shipType = global.playerData[instance_number(obj_ship), PLAYER_DATA.SHIP]
	
	var _ship = instance_create_layer((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2, "Instances", _shipType);
	
	instance_destroy();
	
}

