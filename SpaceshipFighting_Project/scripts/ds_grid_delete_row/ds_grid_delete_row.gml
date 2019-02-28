///@desc ds_grid_delete_row(grid, row)
 ///@arg grid
 ///@arg row
 
var grid = argument0;
var row = argument1;
var w = ds_grid_width(grid);
var h = ds_grid_height(grid);



for(var i = row; i < h-1; i++)
{
        for(var j = 0; j < w; j++)
        {
            //show_message("THIS VALUE IS: " + string(ds_grid_get(grid, j, i+1)) +" TO THIS: " + string(ds_grid_get(grid, j, i))) 
            ds_grid_set(grid, j, i, ds_grid_get(grid, j, i+1));        
        }
}
ds_grid_resize(grid, w, h-1); // not sure if this is needed    