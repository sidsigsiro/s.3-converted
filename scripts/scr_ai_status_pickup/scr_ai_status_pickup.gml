///scr_ai_status_patrol
 ///if checked item is not found
function scr_ai_status_pickup() {

	//look for nearest obj_pickup of a certain type
	//set ai target to it
	//pick it up when close
	//reroll if the pickup that is targeted doesn't exist anymore

	if instance_exists(ai_target_interact) {
		scr_check_input_axis_ai();
		scr_ai_move_code(id, ai_target_interact);
		if point_distance(x, y, ai_target_interact.x, ai_target_interact.y) <= 10 {
			if alarm[2] == -1 {
				alarm[2] = global.game_speed;
			}
			key_interact_released = 1;
		}
	} else {
		ai_status = scr_ai_status_roll_new;
	}

	if alarm[2] == 0 {
		ai_status = scr_ai_status_roll_new;
	}
		


}
