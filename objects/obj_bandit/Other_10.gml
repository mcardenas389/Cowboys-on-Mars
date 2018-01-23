/// @description Flash White
event_inherited();

// flash sprite white when damaged
if flash > 0 {
	flash--;
	shader_set(sh_white);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, image_blend, image_alpha);
	//draw_sprite_ext(gun.sprite_index, 0, gun.x, gun.y, x_scale, 1, 0, image_blend, image_alpha);
	shader_reset();
}