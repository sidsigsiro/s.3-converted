///ai_status_talk
function scr_ai_status_talk() {
	state = scr_standby_state;
	haxis = 0;
	vaxis = 0;
	image_index = 0;
	image_speed = 0;
	path_end();
	
	//ai_target_vector = 
	
	var tar_dist =  point_distance(x, y, ai_target.x, ai_target.y);
	
	face = round(point_direction(x, y , ai_target.x, ai_target.y - 6) / 80);

	if face > 3 {
		face = 3;
	}
	
	if tar_dist > 85 {
		instance_destroy(my_text_box);
		my_text_box = noone;
	}

	if my_text_box == noone {
		ai_status = ai_status_default;
		state = state_default;
	}
	
}
