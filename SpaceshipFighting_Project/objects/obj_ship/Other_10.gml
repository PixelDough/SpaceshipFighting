/// @description LOSE LIFE

life--;

if life <= 0 {
	instance_destroy();
}
