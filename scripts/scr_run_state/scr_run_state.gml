///scr_run_state
function scr_run_state() {
	state_num = 3
	state_rot = 0
	spd = 1.5
	scr_check_face();
	scr_check_aim();
	hbox[0].hbox_active = true;

	if (haxis != 0 or vaxis != 0) {
		scr_stam_subtract(0.3);
		image_speed = game_speed/320
		scr_move_code(dir);
	} else {
		state = state_default;
	}

	if key_run_released {
		state = state_default;
	}

	scr_interact();

	if character_sheet.stam <= 0 {
		state = state_default;
	}


}
