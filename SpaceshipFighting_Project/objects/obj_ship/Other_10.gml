/// @description LOSE LIFE

if hitInvinTime > 0
	exit;

life--;
hitInvinTime = 120;

if life <= 0 {
	instance_create_layer(x, y, "META", obj_explosion0)
	instance_destroy();
}
