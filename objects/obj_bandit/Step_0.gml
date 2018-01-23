/// @description Handle Movement
event_inherited();

// determine sprite
if state != scr_enemy_chase
	sprite_index = spr_bandit_idle;
else
	sprite_index = spr_bandit_walking;

// determine direction to face
var dir = point_direction(x, y, target_x, target_y);

if sign(lengthdir_x(1, dir)) >= 0
	image_xscale = 1;
else
	image_xscale = -1;

// manipulate gun
with gun {
	x = other.x - 4 * other.image_xscale;
	image_xscale = other.image_xscale;
		
	if other.sprite_index == spr_bandit_idle {
		y = other.y + other.image_index / 5 + 0.5;		
	} else if other.state == scr_enemy_chase {
		y = other.y + 0.5;
		//image_angle = dir * other.x_scale;
	} else
		y = other.y + 0.5;
}