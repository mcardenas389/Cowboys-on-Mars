//show_debug_message("choose");
if alarm[1] <= 0 {
	state = choose(scr_enemy_chase, scr_enemy_idle);
	alarm[1] = FRAME_SEC * irandom_range(2, 4);
	
	//find a point that's not in a wall
	do {
		target_x = random(room_width);
		target_y = random(room_height);
	} until collision_line(x, y, target_x, target_y, obj_solid, false, true) == noone;
}