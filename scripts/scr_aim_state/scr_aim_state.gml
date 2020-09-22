///scr_aim_state
function scr_aim_state() {
	state_num = 2

	state_rot = 0;
	state_rot_arm = 0;
	scr_check_face();
	scr_check_aim();

	if face = 0 {
		face_mod_aim_x = -5;
		face_mod_aim_y = -5;
		face_mod_aim_rot = 0;
	}
	if face = 1 {
		face_mod_aim_x = 3;
		face_mod_aim_y = -4;
		face_mod_aim_rot = 90;
	}
	if face = 2 {
		face_mod_aim_x = 4;
		face_mod_aim_y = -5;
		face_mod_aim_rot = 180;
	}
	if face = 3 {
		face_mod_aim_x = -4;
		face_mod_aim_y = -2;
		face_mod_aim_rot = 270;
	}

	image_speed = 0;

	if alarm[1] == -1 {
		image_index = 0;
		draw_item_aim = true;
		item_thrown = noone;
		if inv_equip[0,2] == noone and inv_equip[1,2] == noone and inv_equip[2,2] == noone {
			state = state_default;
		}
	}


	if key_item_0 or key_item_1 or key_item_2 {
		var item_thrown_slot;
		switch (key_item_0 or key_item_1 or key_item_2) {
			case key_item_0:
				item_thrown_slot = 0;
				break;
			case key_item_1:
				item_thrown_slot = 1;
				break;
			case key_item_2:
				item_thrown_slot = 2;
				break;
		}
		if inv_equip[item_thrown_slot, 0] != noone {
			if alarm[1] == -1 {
				if character_sheet.stam > 0 {
					image_index = 1;
					draw_item_aim = false;
					var stam_cost = inv_equip[item_thrown_slot, 4] + (inv_equip[item_thrown_slot, 4] * 0.5)
					scr_stam_subtract(stam_cost);
					scr_inv_item_throw(item_thrown_slot);
					alarm[1] = game_speed*0.3;
				}
			}
		}
	}
	//if key_item_1 {
		//scr_inv_item_throw(1);
	//}
	/*if key_item_1 {
		if inv_equip[1, 0] != noone {
			if alarm[1] = -1 {
				alarm[1] = game_speed*0.3;
				image_index = 1;
				draw_item_aim = false;
				scr_inv_item_throw(item_thrown_slot);
			}
		}
	}*/




	if key_aim_released {
		draw_item_aim = true;
		item_thrown = noone;
		state = state_default;
	}


}
