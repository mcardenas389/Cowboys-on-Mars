if instance_exists(obj_player) {
	if alarm[0] <= 0 && collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true) == noone {
		var dir = point_direction(x, y, obj_player.x, obj_player.y);
		//var gun_x = x - 4 * scr_get_flipped();
		var x_offset = lengthdir_x(15, dir);
		var y_offset = lengthdir_y(15, dir);

		var bullet = instance_create_layer(x + x_offset, y + y_offset, "Gun", obj_enemy_bullet);
		bullet.direction = dir;
		bullet.image_angle = bullet.direction;
		alarm[0] = bullet_cooldown;
	}
}