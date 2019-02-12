///@description WAIT EVENT

hspeed = lerp(hspeed, 0, 0.1);
vspeed = lerp(vspeed, 0, 0.1);

if alarm[1] <= 0 {
	ACTION = ENEMY.TURN;
}