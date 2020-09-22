///scr_dive_state
function scr_dive_state() {
	state_num = 4;
	var face_mod; //rotates arms and spear back into place, after being rotated by dir
	if face = 0 {
		face_mod = 270;
	}
	if face = 1 {
		face_mod = 0;
	}
	if face = 2 {
		face_mod = 90;
	}
	if face = 3 {
		face_mod = 0;
	}

	state_rot = (0 + face_mod);
	state_rot_arm = state_rot
	hbox[0].image_angle = face_mod;

	var hop_time = game_speed*0.75

	if alarm[0] = -1 {
		scr_stam_subtract(20);
		alarm[0] = hop_time;
	}

	if alarm[0] >= hop_time*0.5 {
		hbox[0].hbox_active = false;
		spd = 2.5;
		image_index = 0;
	} else {
		hbox[0].hbox_active = true
		spd = 0.35;
		if alarm[0] >= hop_time*0.3 {
			image_index = 1;
		} else {
			image_index = 2;
		}
	}

	scr_move_code(aim);

	scr_interact();


}
