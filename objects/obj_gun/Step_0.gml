/// @description Follow Mouse
x = obj_player.x - 4 * scr_get_flipped();
y = obj_player.y + 0.5; // needs to be at an offset from the player 
						// otherwise it'll cause an issue with the depth system
image_yscale = scr_get_flipped();
image_angle = point_direction(x, y, mouse_x, mouse_y);