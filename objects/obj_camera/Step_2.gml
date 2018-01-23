/// @description Clamp Camera
camera_set_view_pos(view_camera[0], 
	clamp(camera_get_view_x(view_camera[0]), 0, room_width - camera_get_view_width(view_camera[0])), 
	clamp(camera_get_view_y(view_camera[0]), 0, room_height - camera_get_view_height(view_camera[0])));