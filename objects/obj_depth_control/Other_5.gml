/// @description Destroy Grid if it Exists
if ds_exists(ds_depth_grid, ds_type_grid)
	ds_grid_destroy(ds_depth_grid);