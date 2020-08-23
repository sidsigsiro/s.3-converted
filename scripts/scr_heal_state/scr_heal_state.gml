///scr_spear_state
function scr_heal_state() {
	
	state_num = 7;
	state_rot = 0;

	var key_item,
			key_item_held,
			key_item_released;

	if item_in_use = 0 {
		key_item = key_item_0;
		key_item_held = key_item_0_held;
		key_item_released = key_item_0_released;
	} else if item_in_use = 1 {
		key_item = key_item_1;
		key_item_held = key_item_1_held;
		key_item_released = key_item_1_released;
	} else if item_in_use = 2 {
		key_item = key_item_2;
		key_item_held = key_item_2_held;
		key_item_released = key_item_2_released;
	}

	var item_spd = 1, heal_amount = 25;

	var alarm_len = global.game_speed*item_spd;

	if alarm[0] = -1 {
		alarm[0] = alarm_len;
	}


	///frames of animation = [2] * number of frames of animation, image_number doesn't work du to object having no assigned sprite.
	image_speed = 2 / alarm_len;
	
	var heal_item_hp
	if item_from_inv = false {
		heal_item_hp = inv_equip[item_in_use, 3];
	} else {
		heal_item_hp = inv[item_in_use, 3];
	}
	if heal_item_hp < heal_amount {
		heal_amount = heal_item_hp;
	}

	if alarm[0] == alarm_len/2 {
		character_sheet.hp += heal_amount;
		if item_from_inv = false {
			inv_equip[item_in_use, 3] -= heal_amount;
		} else {
			inv[item_in_use, 3] -= heal_amount;
		}
	}

	if alarm[0] == 0 {
		state = state_default;
	}


}
