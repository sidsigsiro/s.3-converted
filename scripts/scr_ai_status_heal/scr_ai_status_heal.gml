///scr_ai_status_attack_melee
function scr_ai_status_heal() {
	//scr_ai_move_code(id, ai_target);
	///scr_ai_status_attack_melee
	scr_ai_move_code(id, ai_target);

	if heal_slot = 0 {
		key_item_0 = 1;
	} else if heal_slot= 1 {
		key_item_1 = 1;
	} else if heal_slot = 2 {
		key_item_2 = 1;
	}

	ai_status = scr_ai_status_roll_new;


	//}

	/*
	some = 4;
	val = variable_instance_get(self.id, "some"); // 4
	variable_instance_set(self.id, "some", val + 1);
	show_debug_message(some); // 5
	*/


}
