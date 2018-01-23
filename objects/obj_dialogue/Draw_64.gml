/// @description Draw Dialogue
text_count = clamp(text_count + spd, 0, string_length(text[text_page])); // increase text_count and cap max value to length of the string
text_visible = string_copy(text[text_page], 0, text_count); // create copy of string from 0 to text_count

var xx = (x - camera_get_view_x(view_camera[0])) * display_scale;
var yy = (y - camera_get_view_y(view_camera[0])) * display_scale;

draw_text_ext(xx + margin, yy + margin, text_visible, -1, width - (margin * 2));