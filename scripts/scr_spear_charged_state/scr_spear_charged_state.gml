///scr_spear_state
function scr_spear_charged_state() {
	state_rot = 0;
	character_sheet.stam_regen_active = false;
	spd = 0.5


	var key_item,
			key_item_held,
			key_item_released,
			item_thrown_slot;

	if item_in_use = 0 {
		key_item = key_item_0;
		key_item_held = key_item_0_held;
		key_item_released = key_item_0_released;
		item_thrown_slot = 0;
	} else if item_in_use = 1 {
		key_item = key_item_1;
		key_item_held = key_item_1_held;
		key_item_released = key_item_1_released;
		item_thrown_slot = 1;
	} else if item_in_use = 2 {
		key_item = key_item_2;
		key_item_held = key_item_2_held;
		key_item_released = key_item_2_released;
		item_thrown_slot = 2;
	}



	var face_mod;//rotates arms and spear back into place, after being rotated by dir
	var x_align = 0, y_align = 0;

	if face = 0 {
		face_mod_aim_x = -5;
		face_mod_aim_y = -5;
		face_mod_aim_rot = 0;
		face_mod = 0;
		y_align = -2;
	}
	if face = 1 {
		face_mod_aim_x = 3;
		face_mod_aim_y = -4;
		face_mod_aim_rot = 90;
		face_mod = 270;
		x_align = -1;
	}
	if face = 2 {
		face_mod_aim_x = 4;
		face_mod_aim_y = -5;
		face_mod_aim_rot = 180;
		face_mod = 180;
		y_align = -1;
	}
	if face = 3 {
		face_mod_aim_x = -4;
		face_mod_aim_y = -2;
		face_mod_aim_rot = 270;
		face_mod = 90;
		x_align = 1;
	}

	state_rot_arm = aim + face_mod;

	face_mod_aim_rot = aim;


	state_charge_max = game_speed*0.8;


	xdir = (lengthdir_x(15, aim) + x_align); //len is distance between center of player sprite and center of spear in attacking frame of animation
	ydir = (lengthdir_y(15, aim) + y_align);

	if key_item_held {
		state_sprite_item_aim = inv_equip[item_in_use, 1]
		alarm[1] = game_speed*0.3;
		alarm[0] = game_speed
		state_num = 8;
		draw_item_aim = true;
		state_charge += 1;
		if haxis != 0 or vaxis != 0 {
			image_speed = game_speed/720
			scr_move_code(dir);
		} else {
			image_speed = 0;
			image_index = 0;
		}
		if key_run_pressed {
			state_charge = 0;
			alarm[1] = -1
			alarm[0] = -1
			state = state_default;
		}
	}

	if key_item_released {
		if state_charge < state_charge_max {
			state_charge = 0;
			alarm[1] = -1
			alarm[0] = -1
			state = state_default;
		} else {
			if character_sheet.stam > 0 {
				state_num = 9;
				image_speed = 0;
				image_index = 1;
				draw_item_aim = false;
				var stam_cost = inv_equip[item_thrown_slot, 4] + (inv_equip[item_thrown_slot, 4] * 0.5);
				scr_stam_subtract(stam_cost);
				scr_inv_item_throw(item_thrown_slot);
				with (item_thrown) {
					dam_multiplier = 2;
				}
			}
		}
		state_charge = 0;
	}

	if alarm[1] == 2 {
		with(item_thrown) {
			phy_speed_x = 0.1;
			phy_speed_y = 0.1;
			speed = 0.1;
		}
		item_thrown = noone;
		alarm[1] = -1
		alarm[0] = -1
		state = state_default;
	}



}
