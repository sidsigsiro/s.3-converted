///scr_ai_status_patrol
function scr_ai_status_dodge() {


	 haxis = random_range(-1, 1);
	 vaxis = random_range(-1, 1);


	if is_hurt = false {
		scr_ai_move_code(id, temp_marker);
	}

	if state != scr_dive_state {
		key_run_pressed = 1
	}

	if state = scr_dive_state or character_sheet.stam <= 0 {
		alarm[3] = global.game_speed * 5;
		ai_status = scr_ai_status_roll_new;
	}



}
