/// @param speed[]
var spd = argument0;
var h = 0; //horizontal
var v = 1; //vertical

if place_meeting(x + spd[h], y, obj_solid) {
	while !place_meeting(x + sign(spd[h]), y, obj_solid)
		x += sign(spd[h]);
	
	spd[@ h] = 0;
}

if place_meeting(x, y + spd[v], obj_solid) {
	while !place_meeting(x, y + sign(spd[v]), obj_solid)
		y += sign(spd[v]);
	
	spd[@ v] = 0;
}

x += spd[h];
y += spd[v];