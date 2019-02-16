/// @description SPAWN

var _ship = instance_create_layer((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2, layer, ship_type);
//_ship.y+=_ship.height;
instance_destroy();

