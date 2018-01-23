/// @description Mouse Follow
if instance_exists(obj_player) {
	var xTo, yTo;
	
	//move_towards_point(mouse_x, mouse_y, 0);
	direction = point_direction(x, y, mouse_x, mouse_y);

	xTo = obj_player.x + lengthdir_x(min(96, distance_to_point(mouse_x, mouse_y)), direction);
	yTo = obj_player.y + lengthdir_y(min(96, distance_to_point(mouse_x, mouse_y)), direction);

	x += (xTo - x) / 25;
	y += (yTo - y) / 25;

	camera_set_view_pos(view_camera[0], -camera_get_view_width(view_camera[0]) / 2 + x, -camera_get_view_height(view_camera[0]) / 2 + y);
}