/// @description Swing Back and Forth as it Falls
if y < distance_to_fall {
	image_angle = clamp(image_angle + rotation, -max_angle, max_angle);
	
	if image_angle == -max_angle || image_angle == max_angle
		rotation *= -1;
	
	if place_meeting(x, bbox_bottom + 8, obj_solid)
		distance_to_fall = y;
	else	
		y += fall_rate;
}