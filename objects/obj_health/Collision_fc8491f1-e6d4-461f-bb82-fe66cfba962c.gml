/// @description Heal Player
if obj_hud.hp < obj_hud.hp_max {
	audio_play_sound(snd_heal, 5, false);
	obj_hud.heart_index[obj_hud.hp++] = 0;
	instance_destroy();
}