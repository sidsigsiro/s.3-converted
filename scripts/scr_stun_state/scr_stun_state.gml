///scr_stun_state
function scr_stun_state() {
	state_num = 4;

	ai_status = scr_ai_status_stun;

	if alarm[0] = -1 {
		alarm[0] = game_speed * 2;
	}

	if alarm[0] = 100 {
		with(hbox[0]) {
			hbox_active = true;
		}
	}

	if hbox[1] != noone {
		with(hbox[1]) {
			instance_destroy();
		}
		hbox[1] = noone;
	}

	if hbox[2] != noone {
		with(hbox[2]) {
			instance_destroy();
		}
		hbox[2] = noone;
	}

	character_sheet.stam_regen_active = true;

		if face = 0 {
			dir = point_direction(x, y, x + 10, y)
			aim = dir
		}
		if face = 1 {
			dir = point_direction(x, y, x, y - 10)
			aim = dir
		}
		if face = 2 {
			dir = point_direction(x, y, x - 10, y)
			aim = dir
		}
		if face = 3 {
			dir = point_direction(x, y, x, y + 10)
			aim = dir
		}


}
