/// @description Soft Collide
var dir = point_direction(other.x, other.y, x, y);
hspd = lengthdir_x(1.3, dir);
vspd = lengthdir_y(1.3, dir);

scr_movement([hspd, vspd]);
