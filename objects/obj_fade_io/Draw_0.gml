/// @description Draw Rectangle
a = clamp(a + (fade * 0.05), 0, 1);

// go to next room when screen is completely black
if a == 1 {
	room_goto(new_room);
	
	// check if player exists in case they died mid-transition
	if instance_exists(obj_player) {
		obj_player.x = new_x;
		obj_player.y = new_y;		
	}
	
	obj_camera.x = new_x;
	obj_camera.y = new_y;
	
	fade = -1;
}

if a == 0 && fade == -1
	instance_destroy();
	
draw_sprite_ext(spr_pixel, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),
	camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), image_angle, c_black, a);