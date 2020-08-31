///scr_spear_state
function scr_spear_state() {

	state_num = 1;
	state_rot = 0;
	scr_check_face();

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

	var face_mod;//rotates arms and spear back into place, after being rotated by dir
	var x_align = 0, y_align = 0;

	if face = 0 {
		face_mod = 0;
		y_align = -2;
	}
	if face = 1 {
		face_mod = 270;
		x_align = -1;
	}
	if face = 2 {
		face_mod = 180;
		y_align = -1;
	}
	if face = 3 {
		face_mod = 90;
		x_align = 1;
	}

	state_rot_arm = aim + face_mod

	var item_spd = .50;


	if alarm[0] = -1 {
		scr_stam_subtract(inv_equip[item_in_use, 4]);
		alarm[0] = global.game_speed*item_spd;

	}

	scr_move_code(aim);

	if spd > 0 {
		spd -= 0.2;
	} else {
		spd = 0;
	}

	var alarm_len = global.game_speed*item_spd;

	///frames of animation = [2] * number of frames of animation, image_number doesn't work du to object having no assigned sprite.
	image_speed = 2 / alarm_len;

	xdir = (lengthdir_x(15, aim) + x_align); //len is distance between center of player sprite and center of spear in attacking frame of animation
	ydir = (lengthdir_y(15, aim) + y_align);


	if image_index >= 1 {
		if hbox[1] = noone {
			spd = 2;
			scr_create_hbox(x + xdir, y + ydir, sprite_get_width(state_sprite_item), sprite_get_height(state_sprite_item), scr_hbox_hit, 1);
			hbox[1].image_angle = aim;
			hbox[1].owner = id;
			hbox[1].stat_0 = inv_equip[item_in_use, 3]
		} else {
			hbox[1].x = x + xdir;
			hbox[1].y  = y + ydir;
		}
	}

	if alarm[0] = 3 {
		if key_item_held {
			if character_sheet.stam > 0 {
				with(hbox[1]) {
					instance_destroy();
				}
				state_charge = 0;
				state = scr_spear_charged_state;
			}
		}
	}



}
