///scr_spear_state
function scr_bow_state() {

	state_num = 6;
	state_rot = 0;
	scr_check_aim();
	scr_check_face();

	//check if arrow equipped has changed slots
	if inv_equip[item_in_use, 5] != noone {
		if inv[inv_equip[item_in_use, 5], 2] != ARROW {
			inv_equip[item_in_use, 5] = noone;
		}
	}

	//check if arrow is equipped
	if inv_equip[item_in_use, 5] == noone {
		var equip_script;
		for(var i = 0; i <= inv_slots; i++) {
			if inv[i, 2] == ARROW {
				inv_equip[item_in_use, 5] = i;
				equip_script = inv[i, 6];
				script_execute(equip_script);
				break;
			}
		}
	}

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

	state_rot_arm = aim;

	var item_spd = .60;

	var alarm_len = global.game_speed*item_spd;

	if alarm[0] = -1 {
		alarm[0] = alarm_len;
	}

	scr_stam_subtract(inv_equip[item_in_use, 4]);


	///frames of animation = [2] * number of frames of animation, image_number doesn't work du to object having no assigned sprite.
	image_speed = 4 / alarm_len;

	if key_run_pressed {
		alarm[0] = -1
		state = state_default;
	}

	if alarm[0] > alarm_len * 0.75 {
		if key_item_released {
			alarm[0] = -1;
			state = state_default;
		}
	}
	if alarm[0] > alarm_len * 0.5 and alarm[0] < alarm_len * 0.75 {
		if key_item_held and character_sheet.stam > 0  {
			alarm[0] = alarm_len * 0.75;
			image_index = 1;
		} else {
			alarm[0] = alarm_len * 0.5;
			image_index = 2;
			if inv_equip[item_in_use, 5] != noone {
			scr_shoot_arrow();
			}
		}
	}


	if alarm[0] = 1 {
			if key_item_held {
				if character_sheet.stam > 0 {
					alarm[0] = alarm_len;
				}
		}
	}


		




}
