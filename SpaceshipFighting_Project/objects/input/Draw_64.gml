
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

var _grid = ds_grid_create(3, 4);
	
for (var _y=0; _y<ds_grid_height(_grid); _y++) {
	ds_grid_add(_grid, PLAYER_DATA.INPUT_SOURCE, _y, _y)
	ds_grid_add(_grid, PLAYER_DATA.SHIP, _y, 1)
	ds_grid_add(_grid, PLAYER_DATA.SCORE, _y, 0)
}

if keyboard_check(vk_tab) {
	ds_grid_delete_row(_grid, 0)
}
	
for (var _y=0; _y<ds_grid_height(_grid); _y++) {
	draw_text(16, _y*48, _grid[# 0, _y])
	draw_text(48, _y*48, _grid[# 1, _y])
}
	
ds_grid_destroy(_grid)
