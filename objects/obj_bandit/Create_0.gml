/// @description Initialize Variables
event_inherited();

target_x = irandom(room_width);
gun = instance_create_layer(x, y, "Gun", obj_enemy_gun);