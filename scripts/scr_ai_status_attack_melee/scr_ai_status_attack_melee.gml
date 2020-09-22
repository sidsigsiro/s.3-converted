///scr_ai_status_attack_melee
function scr_ai_status_attack_melee() {
	
	key_item_0 = 0;
	key_item_1 = 0;
	key_item_2 = 0;

	if ai_target != noone {
		scr_ai_move_code(id, ai_target)

		//if alarm[2] = -1 {
			//alarm[2] = game_speed * 5
		//}

		if melee_slot = noone {
			if scr_ai_status_check_nearest_pickup(scr_spear_state) = true {
				ai_status = scr_ai_status_pickup
			} else {
				ai_status = scr_ai_status_roll_new;
			}
		}

		if (point_distance(x, y, ai_target.x, ai_target.y) <= ai_melee_range) {
			if melee_slot = 0 {
				key_item_0 = 1;
			} else if melee_slot= 1 {
				key_item_1 = 1;
			} else if melee_slot = 2 {
				key_item_2 = 1;
			}
		}

		

		if key_item_0 = 1 or key_item_1 = 1 or key_item_2 = 1 {
			if state = scr_move_state {
					ai_status = scr_ai_status_roll_new;
			}
		}

		if alarm[2] = 0 {
			ai_status = scr_ai_status_roll_new;
		}

		/*
		some = 4;
		val = variable_instance_get(self.id, "some"); // 4
		variable_instance_set(self.id, "some", val + 1);
		show_debug_message(some); // 5
		*/
	} else {
		//flee_state when you make a flee state
	}

}
