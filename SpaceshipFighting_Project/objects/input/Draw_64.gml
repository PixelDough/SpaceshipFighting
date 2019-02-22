
if !global.debug 
	exit;

for (var _p=0; _p<array_length_1d(playerInputDevice); _p++) {
	
	checkInputDevice(_p);
	
	draw_set_halign(fa_left);
	
	//draw_text(32 + (128*_p), 32, "Device:" + string(playerInputDevice[_p]));
	//draw_text(32 + (128*_p), 64, "r:" + string(r[_p]));
	
	
}
