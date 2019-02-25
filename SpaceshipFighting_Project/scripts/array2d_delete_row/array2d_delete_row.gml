
//Returns a copy of the array with the given row removed.  Destroys the original arr.  So stop using it.

///@arg array
///@arg rowIndex

var arr = argument[0];
var row = argument[1];
var grid_width=array_length_1d(arr);
var grid_height=array_height_2d(arr);

if(row>array_height_2d(arr)-1)
{
    return(arr);
    show_debug_message("You tried to delete a row from a arr that didn't exist");
}
    
var tempgrid = [];
array_copy(tempgrid, 0, arr, 0, row-1);
array_copy(tempgrid, row, arr, row+1, array_height_2d(arr)-1);
	
return(tempgrid);

