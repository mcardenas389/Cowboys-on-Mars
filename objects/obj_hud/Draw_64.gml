/// @description Hearts and Bullets
// clamp hp so it does not go below the minimum or above the maximum
hp = clamp(hp, 0, hp_max);

//check sprite index for heart
if hp < hp_max && heart_index[hp] == 0
	heart_index[hp]++;

//draw hearts
for(var i = 0; i < hp_max; i++) {
	var width = sprite_get_width(spr_heart); // width of the sprite
	var spacing = 1.35; //space between icons
	var x_offset = 7 //where to start drawing	
	draw_sprite(spr_heart, heart_index[i], width * i * spacing + x_offset, 32);
}

//draw bullets
for(var i = 0; i < bullet_count; i++) {
	var width = sprite_get_width(spr_bullet_icon);
	var x_offset = 7 
	var spacing = 1.20;
	draw_sprite(spr_bullet_icon, 0, width * i * spacing + x_offset, 80);
}