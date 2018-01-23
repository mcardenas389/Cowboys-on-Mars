/// @description Activate Speaker
if keyboard_check_pressed(ord("E")) {
	with other {
		if !instance_exists(dialogue) {
			dialogue = instance_create_layer(x + x_offset, y + y_offset, "Dialogue", obj_dialogue);
			dialogue.text = text;
		} else {
			dialogue.text_page++;
			dialogue.text_count = 0;
			
			if dialogue.text_page > array_length_1d(dialogue.text) - 1
				with dialogue
					instance_destroy();
		}
	}
}