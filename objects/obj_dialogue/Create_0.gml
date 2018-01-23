/// @description Initialize Variables
text = noone;
text_visible = ""; // current string being displayed
text_page = 0; // iterator for text array
text_count = 0; // count of the number of characters being displayed
spd = 0.5; // speed that the text is displayed
display_scale = display_get_gui_width() / camera_get_view_width(view_camera[0]);
width = sprite_width * display_scale;
margin = 8;