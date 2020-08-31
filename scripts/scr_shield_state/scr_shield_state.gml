///scr_shield_state
function scr_shield_state() {

	state_num = 5;
	scr_check_face();
	spd = 0.5;
	character_sheet.stam_regen_active = false;

	//scr_check_key_item();
	var key_item, key_item_held, key_item_released;

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

	var face_mod, face_dir;//rotates arms and spear back into place, after being rotated by dir

	if face = 0 {
		face_mod = 0;
		face_dir = point_direction(x, y, x + 10, y);
	}
	if face = 1 {
		face_mod = 90;
		face_dir = point_direction(x, y, x, y - 10);
	}
	if face = 2 {
		face_mod = 0;
		face_dir = point_direction(x, y, x - 10, y);
	}
	if face = 3 {
		face_mod = 90;
		face_dir = point_direction(x, y, x, y+ 10);
	}

	xdir = (lengthdir_x(2, face_dir)); //len is distance between center of player sprite and center of spear in attacking frame of animation
	ydir = (lengthdir_y(2, face_dir));

	if (haxis != 0 or vaxis != 0) {
	
		image_speed = global.game_speed/720;
	
		scr_move_code(dir);

	} else {
		image_index = 0;
		image_speed = 0;
	}

	hbox[0].hbox_active = false;

	if hbox[2] = noone {
		scr_create_hbox(x + xdir, y + ydir, sprite_get_width(state_sprite_item), sprite_get_height(state_sprite_item), scr_hbox_shield_parry, 2);
		hbox[2].image_angle = face_mod;
		hbox[2].alarm[1] = 5;
	}

	hbox[2].x = x + xdir;
	hbox[2].y = y + ydir;

	if character_sheet.stam <= 0 {
		state = state_default;
	}

	if key_item_released {
		state = state_default;
	}




}
