///scr_ai_status_investigate
function scr_ai_status_investigate() {
	scr_ai_move_code(id, ai_target);

	if (point_distance(x, y, ai_target.x, ai_target.y) < sprite_width ) {
		ai_status = scr_ai_status_idle;
	}

	/*
	some = 4;
	val = variable_instance_get(self.id, "some"); // 4
	variable_instance_set(self.id, "some", val + 1);
	show_debug_message(some); // 5
	*/


}
