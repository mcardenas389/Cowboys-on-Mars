///@description Initialize Variables
// Variables
spd = 2;
hspd = 0;
vspd = 0;
//velocity = [0, 0];
//max_velocity = [5, 5];

//Tile Map ID
//var layer_id = layer_get_id("Collisions");
//collision_tile_map_id = layer_tilemap_get_id(layer_id);

// Map Keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// Alarm
bullet_cooldown = FRAME_SEC / 5;
alarm[0] = bullet_cooldown;

// Create Camera
if !instance_exists(obj_camera)
	instance_create_layer(x, y, "Player", obj_camera);

// Create Gun
if !instance_exists(obj_gun)
	instance_create_layer(x, y, "Gun", obj_gun);