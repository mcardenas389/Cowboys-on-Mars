/// @description Create Bullet
if alarm[0] <= 0 && alarm[1] <= 0 && obj_hud.bullet_count > 0 {
	var dir = point_direction(x, y, mouse_x, mouse_y);
	var gun_x = x - 4 * scr_get_flipped();
	var x_offset = lengthdir_x(15, dir);
	var y_offset = lengthdir_y(15, dir);

	var bullet = instance_create_layer(gun_x + x_offset, y + y_offset, "Gun", obj_bullet);
	bullet.direction = dir;
	alarm[0] = bullet_cooldown;
	
	obj_hud.bullet_count--;
}