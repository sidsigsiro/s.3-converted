///scr_spear_state
function scr_eat_state() {
	state_num = 11;
	state_rot = 0;
	
	var sprite, fd_carbs, fd_proteins, fd_fats, fd_water;
	if item_from_inv = false {
		sprite = inv_equip[item_in_use, 1];
		fd_carbs = inv_equip[item_in_use, 3];
		fd_fats = inv_equip[item_in_use, 4];
		fd_proteins = inv_equip[item_in_use, 5];
		fd_water = inv_equip[item_in_use, 7];
	} else {
		sprite = inv[item_in_use, 1];
		fd_carbs = inv[item_in_use, 3];
		fd_fats = inv[item_in_use, 4];
		fd_proteins = inv[item_in_use, 5];
		fd_water = inv[item_in_use, 7];
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

	var item_spd = 1;

	var alarm_len = game_speed*item_spd;

	if alarm[0] = -1 {
		alarm[0] = alarm_len;
		if food_sprite == noone {
			food_sprite = instance_create_layer(x + 3, y - 4, "instance_layer", obj_food_eat_anim);
			food_sprite.sprite_index = sprite;
			food_sprite.depth = depth - 1;
		}
	}


	///frames of animation = [2] * number of frames of animation, image_number doesn't work du to object having no assigned sprite.
	image_speed = 3 / alarm_len;

	if alarm[0] == (alarm_len - alarm_len/3) {
		food_sprite.y = y - 16;
		food_sprite.rise = true;
	}

																//fd_carbs, fd_proteins, fd_fats, fd_water;

	if alarm[0] == alarm_len/3 {
		character_sheet.carbs += fd_carbs;
		if character_sheet.carbs > character_sheet.max_stam {
			character_sheet.carbs = character_sheet.max_stam;
		}
		character_sheet.fats += fd_fats;
		character_sheet.proteins += fd_proteins;
		character_sheet.water += fd_water;
		if character_sheet.water > 100 {
			character_sheet.water = 100
		}
	
		var item_to_delete = item_in_use;
		if item_from_inv = false {
			scr_item_equip_delete(item_to_delete);
		} else {
			scr_item_delete(item_to_delete);
		}
	}

	if alarm[0] == 0 {
		food_sprite = noone;
		state = state_default;
	}


}
