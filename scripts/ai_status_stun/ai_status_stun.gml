///ai_status_stun
function ai_status_stun() {
	path_end();



	my_path = path_add();
	if state != scr_stun_state and state != scr_hurt_state {
		ai_status = scr_ai_status_roll_new;
	}


}
