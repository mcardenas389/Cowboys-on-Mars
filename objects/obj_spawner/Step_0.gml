/// @description Spawn Object When Camera Comes within Range
var xx = camera_get_view_x(cam);
var yy = camera_get_view_y(cam);
var xw = camera_get_view_width(cam);
var yh = camera_get_view_height(cam);

// check when player approaches the object
if rectangle_in_circle(xx, yy, xx + xw, yy + yh, x, y, distance) > 0 {
	instance_create_layer(x, y, "Enemies", obj);
	instance_destroy();
}