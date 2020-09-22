///scr_spear_state
function scr_drink_state() {
	state_num = 12;
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
		if item_in_use_sprite == noone {
			item_in_use_sprite = instance_create_layer(x + 4, y - 1, "instance_layer", obj_item_use_anim);
			item_in_use_sprite.sprite_index = sprite;
			item_in_use_sprite.depth = depth - 1;
		}
	}


	///frames of animation = [2] * number of frames of animation, image_number doesn't work du to object having no assigned sprite.
	image_speed = 0

	if alarm[0] == alarm_len * 0.75 {
		image_index = 1;
		item_in_use_sprite.image_index = 1;
		item_in_use_sprite.image_yscale = -1;
		item_in_use_sprite.x = x + 1;
		item_in_use_sprite.y = y - 10;
	}
	if alarm[0] == alarm_len * 0.5 {
		item_in_use_sprite.image_index = 2;
	}
	if alarm[0] == alarm_len * 0.25 {
		item_in_use_sprite.image_index = 3;
	}

																//fd_carbs, fd_proteins, fd_fats, fd_water;

	if alarm[0] == alarm_len/4 {
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
			scr_inv_item_add_bottle();
		} else {
			scr_item_delete(item_to_delete);
			scr_inv_item_add_bottle();
		}
	}

	if alarm[0] == 1 {
		instance_destroy(item_in_use_sprite);
		item_in_use_sprite = noone;
		state = state_default;
	}
}
