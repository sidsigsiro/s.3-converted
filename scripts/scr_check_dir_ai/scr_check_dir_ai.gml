///scr_check_input_axis_ai
function scr_check_dir_ai() {

	if state = scr_move_state or state = scr_run_state {
		dirpoint_x = x + lengthdir_x(10, direction);
		dirpoint_y = y +  lengthdir_y(10, direction);
	} else if state = scr_bow_state {
		dirpoint_x = x + lengthdir_x(10, point_direction(x, y, ai_target.x, ai_target.y));
		dirpoint_y = y +  lengthdir_y(10, point_direction(x, y, ai_target.x, ai_target.y));
	} else {
		dirpoint_x = x + (haxis*10);
		dirpoint_y = y + (vaxis*10);
	}

	dir = point_direction(x, y, dirpoint_x, dirpoint_y);


}
