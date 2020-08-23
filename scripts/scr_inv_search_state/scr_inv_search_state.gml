///scr_inv_search_state
function scr_inv_search_state() {

	search_target.searcher = id;

	draw_gui_inv = true;



	with (search_target) {
		draw_gui_inv = true;
		inv_x = searcher.inv_x;
		inv_y = searcher.inv_y - 38;
	}

	if key_inv_pressed {
		with(search_target) {
			draw_gui_inv = false;
		}
		state = state_default;
	}

	if key_left_pressed {
		if search_target.inv_gui_select > 0 {
			search_target.inv_gui_select -= 1;
		} else {
			search_target.inv_gui_select = search_target.inv_slots;
		}
	}

	if key_interact {
		if search_target.inv[search_target.inv_gui_select, 0] != noone {
			scr_inv_item_transfer(search_target,id);
		}
	}
	

	if key_right_pressed {
		if search_target.inv_gui_select < search_target.inv_slots {
			search_target.inv_gui_select += 1;
		} else {
			search_target.inv_gui_select = 0;
		}
	}

	if key_down_pressed {
		state = scr_inv_state;
	}


}
