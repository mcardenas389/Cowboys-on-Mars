/// @description Trigger Enter
if instance_exists(obj_player)
	if place_meeting(x, y, obj_player) && !entered {
		layer_set_visible("Roofs", !layer_get_visible("Roofs"));
		entered = true;
	} else if entered && bbox_bottom < obj_player.bbox_top {
		layer_set_visible("Roofs", !layer_get_visible("Roofs"));
		entered = false;
	}