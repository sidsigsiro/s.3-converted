///@function ai_move_code(vector_from, vector_to)
///@description controls the movement for ai based on ai_target
///@param {} vector_from
///@param {} vector_to
function scr_ai_move_code(argument0, argument1) {


	if argument1 != noone {
		if state = scr_move_state or state = scr_run_state {
			haxis = 1;
			vaxis = 1;
		
			mp_potential_path(my_path, argument1.x, argument1.y, 1, 4, false);
			path_start(my_path, 1, path_action_stop, true);
		} else {
			path_end();
			ai_target_vector = (point_direction(argument0.x, argument0.y, argument1.x, argument1.y));
		
			if ai_target_vector < 91 and ai_target_vector > 89 {
				ai_target_vector = 90;
			} else if ai_target_vector < 271 and ai_target_vector > 269 {
				ai_target_vector = 270;
			} else if (ai_target_vector < 360 and ai_target_vector > 359) or (ai_target_vector < 1 and ai_target_vector > 0) {
				ai_target_vector = 0;
			} else if ai_target_vector < 181 and ai_target_vector > 179 {
				ai_target_vector = 180;
			} else {
				ai_target_vector = round(ai_target_vector);
			}

			if (ai_target_vector < 90 and ai_target_vector >=  0) or (ai_target_vector <= 360 and ai_target_vector > 270) {
				key_right = 1;
				key_left = 0;
			} else if ai_target_vector > 90 and ai_target_vector < 270 {
				key_left = 1;
				key_right = 0;
			} 

			//check ai target vector up or down
			if ai_target_vector > 0 and ai_target_vector < 180 {
				key_up = 1;
				key_down = 0;
			} else if ai_target_vector > 180 and ai_target_vector < 360 {
				key_down = 1;
				key_up = 0;
			}

			if (ai_target_vector == 0 or ai_target_vector == 360) or (ai_target_vector = 180) {
				key_down = 0
				key_up = 0
			}

			if ai_target_vector = 90 or ai_target_vector = 270 {
				key_left = 0
				key_right = 0
			}
			scr_check_input_axis_ai();
		}
	}
	//make sure to delete path when it's not in use

	/*
	ai_target_vector = (point_direction(argument0.x, argument0.y, argument1.x, argument1.y));

	if ai_target_vector < 91 and ai_target_vector > 89 {
		ai_target_vector = 90;
	} else if ai_target_vector < 271 and ai_target_vector > 269 {
		ai_target_vector = 270;
	} else if (ai_target_vector < 360 and ai_target_vector > 359) or (ai_target_vector < 1 and ai_target_vector > 0) {
		ai_target_vector = 0;
	} else if ai_target_vector < 181 and ai_target_vector > 179 {
		ai_target_vector = 180;
	} else {
		ai_target_vector = round(ai_target_vector);
	}

	if (ai_target_vector < 90 and ai_target_vector >=  0) or (ai_target_vector <= 360 and ai_target_vector > 270) {
		key_right = 1;
		key_left = 0;
	} else if ai_target_vector > 90 and ai_target_vector < 270 {
		key_left = 1;
		key_right = 0;
	} 

	//check ai target vector up or down
	if ai_target_vector > 0 and ai_target_vector < 180 {
		key_up = 1;
		key_down = 0;
	} else if ai_target_vector > 180 and ai_target_vector < 360 {
		key_down = 1;
		key_up = 0;
	}

	if (ai_target_vector == 0 or ai_target_vector == 360) or (ai_target_vector = 180) {
		key_down = 0
		key_up = 0
	}

	if ai_target_vector = 90 or ai_target_vector = 270 {
		key_left = 0
		key_right = 0
	}

/* end scr_ai_move_code */
}
