//show_debug_message("check for player");
if(instance_exists(obj_player)) {
	var dis = point_distance(x, y, obj_player.x, obj_player.y);
	
	if(dis < sight) {
		state = scr_enemy_chase;
		target_x = obj_player.x;
		target_y = obj_player.y;
	} else {
		scr_enemy_choose_next_state();
	}
} else {
	scr_enemy_choose_next_state();
}