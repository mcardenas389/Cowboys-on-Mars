//chases a random point or the player
//show_debug_message("chase");
//scr_check_for_player();
scr_enemy_attack();

var dir = point_direction(x, y, target_x, target_y);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

//prevent going past target
if x > target_x - hspd && x < target_x + hspd {
	target_x = x;
	hspd = 0;
}

if y > target_y - vspd && y < target_y + vspd {
	target_y = y;
	vspd = 0;
}

//if reached target or if blocked by wall, change state
if (x == target_x && y == target_y) || (x == xprevious && y == yprevious && alarm[1] <= 0)
	state = scr_enemy_idle;

scr_movement([hspd, vspd]);