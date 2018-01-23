/// @description Lower Box from Top to Bottom of the Screen
if end_y >= window_get_height()
	end_y = window_get_height();

draw_sprite_ext(spr_pixel, 0, 0, 0, window_get_width(), end_y, 0, c_black, 1);

end_y += 2;