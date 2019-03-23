


if (x < 0 and hspeed < 0) or (x+sprite_width > room_width and hspeed > 0) {
	hspeed = -hspeed;
}
if (y < 0 and vspeed < 0) or (y+sprite_height > room_height and vspeed > 0) {
	vspeed = -vspeed;
}
