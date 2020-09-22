///scr_hop_state
function scr_hop_state() {
	spd = 2.5
	image_speed = 0
	hop_time = game_speed*.20
	state_rot = 0
	state_rot_arm = 0
	//hbox[0].hbox_active = false; might be cheap and be straight up better than rolling


	if alarm[1] = -1 {
		scr_stam_subtract(15);
		alarm[1] = hop_time;
	}

	scr_move_code(aim);

	scr_interact();

	if key_run_pressed {
		if character_sheet.stam > 0 {
			scr_check_aim();
			scr_check_face();
			image_index = 0
			state = scr_dive_state
		}
	}

	if alarm[1] = 0 {
		if key_run_held {
			if character_sheet.stam > 0 {
				state = scr_run_state;
			}
		}
		if !key_run_held {
			state = state_default;
		}
		if character_sheet.stam <= 0 {
		state = state_default;
		}
	}


}
