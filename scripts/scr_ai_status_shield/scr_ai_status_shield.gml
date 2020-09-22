///scr_ai_status_attack_melee
function scr_ai_status_shield() {

	if shield_slot = noone {
		if scr_ai_status_check_nearest_pickup(scr_shield_state) = true {
			if inv_equip[inv_equip_slots,0] = noone {
				ai_status = scr_ai_status_pickup
			} else {
				ai_status = scr_ai_status_roll_new;
			}
		} else {
			ai_status = scr_ai_status_roll_new;
		}
	}



	if alarm[2] = -1 {
		path_end();
		scr_ai_move_code(id, ai_target);
		var rand = irandom_range(-90, 90)
		alarm[2] = game_speed * 1.7;
	}

	if alarm[2] >= game_speed * 1.6 {
		scr_ai_move_code(id, ai_target);
	} else {
		if shield_slot = 0 {
			key_item_0 = 1;
			key_item_0_held = 1;
		} else if shield_slot = 1 {
			key_item_1 = 1;
			key_item_1_held = 1;
		} else if shield_slot = 2 {
			key_item_2 = 1;
			key_item_2_held = 1;
		}
		scr_ai_move_code(ai_target, id);
	}

	if alarm[2] = 0 or character_sheet.stam <= 0 {
		key_item_0_released = 1;
		key_item_1_released = 1;
		key_item_2_released = 1;
		ai_status = scr_ai_status_roll_new;
	}

	/*
	some = 4;
	val = variable_instance_get(self.id, "some"); // 4
	variable_instance_set(self.id, "some", val + 1);
	show_debug_message(some); // 5
	*/


}
