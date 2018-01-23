///@description Controls
// Death
if obj_hud.hp <= 0
	instance_destroy();

// Reload
if keyboard_check(ord("R")) && obj_hud.bullet_count < obj_hud.max_bullets {
	alarm[1] = FRAME_SEC;
	obj_hud.bullet_count = obj_hud.max_bullets;
}

// Input
hspd = spd * (keyboard_check(vk_right) - keyboard_check(vk_left));
vspd = spd * (keyboard_check(vk_down) - keyboard_check(vk_up));

// Facing
image_xscale = scr_get_flipped();

// reverse animation if moving in the opposite direction from the direction the player is facing
if (image_xscale > 0 && hspd < 0) || (image_xscale < 0 && hspd > 0)
	image_speed = -1;
else
	image_speed = 1;

// Movement
scr_movement([hspd, vspd]);

/*
//Tile Collision
var x_input = spd * (keyboard_check(vk_right) - keyboard_check(vk_left));
var y_input = spd * (keyboard_check(vk_down) - keyboard_check(vk_up));

//Vector Variables
var vector2_x = 0;
var vector2_y = 1;

//Horizontal Movement
velocity[vector2_x] = clamp(velocity[vector2_x] + x_input, -max_velocity[vector2_x], max_velocity[vector2_x]);

//Vertical Movement
velocity[vector2_y] = clamp(velocity[vector2_y] + y_input, -max_velocity[vector2_y], max_velocity[vector2_y]);

//Friction
if x_input == 0
	velocity[vector2_x] = lerp(velocity[vector2_x], 0, .2);

if y_input == 0
	velocity[vector2_y] = lerp(velocity[vector2_y], 0, .2);

scr_move_and_contact_tiles(collision_tile_map_id, 32, velocity);
*/