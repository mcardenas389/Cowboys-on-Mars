/// @description Draw Order
if ds_exists(ds_depth_grid, ds_type_grid) {
	var depth_grid = ds_depth_grid; // store grid id as local variable
	var inst_num = instance_number(obj_parent_depth); // get number of instances
	
	ds_grid_resize(depth_grid, 2, inst_num); // resize grid with a height of number of instances
	
	var yy = 0; // local variable that increments each time a parent object calls the event
	
	// get id and y value from all objects
	with obj_parent_depth {
		depth_grid[# 0, yy] = id;
		depth_grid[# 1, yy] = y;
		yy++;
	}
	
	ds_grid_sort(ds_depth_grid, 1, true); // sort by y value
	
	yy = 0; 
	
	// draw each object
	repeat inst_num {
		var inst_id = ds_depth_grid[# 0, yy];
		
		with inst_id
			event_perform(ev_other, ev_user0);
		
		yy++;
	}
	
	ds_grid_clear(ds_depth_grid, 0); // clear grid before updating
}