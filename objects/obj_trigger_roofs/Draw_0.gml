/// @description Darken Environment
if entered {
	var xx = camera_get_view_x(view_camera[0]);
	var yy = camera_get_view_y(view_camera[0]);
	var xw = camera_get_view_width(view_camera[0]);
	var yh = camera_get_view_height(view_camera[0]);
	
	draw_sprite_ext(spr_pixel, 0, xx, yy, xw, yh, 0, c_black, 0.5);
}