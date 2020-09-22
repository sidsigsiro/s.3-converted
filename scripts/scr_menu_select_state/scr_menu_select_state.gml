function scr_menu_select_state() {
	if my_text_box == noone {
		var string_y_buffer = 30
		my_text_box = instance_create_layer(x, y - string_y_buffer, "instance_layer", obj_text_box);
		my_text_box.owner = id;
		my_text_box.text = interact_target.response;
		my_text_box.page = 0;
	}
	
	var text_act = my_text_box;
		if key_left_pressed {
			with (text_act) {
				do {
					char_count = 0;
					if (page - 1 < 0) {
						page = array_length_1d(text) - 1;
					} else {
						page -= 1;
					}
				} until (my_text[page] != noone);
			}
		}
		if key_right_pressed {
			with (text_act) {
				do {
					char_count = 0;
					if (page + 1 < array_length_1d(text)) {
						page += 1
					} else {
						page = 0;
					}
				} until (text[page] != noone);
			}
		}
}