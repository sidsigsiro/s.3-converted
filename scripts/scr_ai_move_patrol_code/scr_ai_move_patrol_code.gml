///@function ai_move_code(vector_from, vector_to)
///@description controls the movement for ai based on ai_target
///@param {} vector_from
///@param {} vector_to
function scr_ai_move_patrol_code() {
	ai_target = patrol_marker[pm];
	mp_potential_path(my_path, ai_target.x, ai_target.y, 1, 4, false);
	path_start(my_path, 1, path_action_stop, true);

	if  path_position == 1 {
		pm += 1;
		if pm == number_of_patrol_markers {
			pm = 0;
		}
		path_position = 0;
	}


}
