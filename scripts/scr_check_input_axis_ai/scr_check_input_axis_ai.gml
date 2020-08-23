///scr_check_input_axis_ai
function scr_check_input_axis_ai() {

	if state == scr_move_state or state == scr_run_state or state = scr_bow_state {
			haxis = 1;
			vaxis = 1;
	} else {
		haxis = key_right - key_left;
		vaxis = key_down - key_up;
	}


}
