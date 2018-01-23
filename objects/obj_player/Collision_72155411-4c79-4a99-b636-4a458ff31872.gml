/// @description Transition to New Room
if !instance_exists(obj_fade_io) && room_exists(other.new_room) {
	var obj = other;
	var instance = instance_create_layer(0, 0, "Collisions", obj_fade_io);
	
	with instance {
		new_room = obj.new_room;
		new_x = obj.new_x;
		new_y = obj.new_y;
	}
}