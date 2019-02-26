
if !global.debug 
	exit;

for (var _p=0; _p<ds_list_size(global.playerData); _p++) {
	
	checkInputDevice(_p);
	
	draw_set_halign(fa_left);
	
	//draw_text(32 + (128*_p), 32, "Device:" + string(playerInputDevice[_p]));
	
	//draw_text(32 + (128*_p), 64, "r:" + string(r[_p]));
	var _list = global.playerData[| _p];
	
	draw_text(32 + (128*_p), 32, string(_list[0]));
	draw_text(32 + (128*_p), 128, string(ds_list_size(global.playerData)));
	
}
