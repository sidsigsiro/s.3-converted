///scr_move_state
function scr_carry_state() {
	state_num = 0
	state_rot = 0
	state_rot_arm = 0
	spd = 1
	draw_item_aim = false;
	scr_check_face();
	scr_check_aim();
	search_target = noone;
	hbox[0].hbox_active = true;
	character_sheet.stam_regen_active = true;
	state_charge = 0;
	state_charge_max = 0;
	state_sprite_item_aim = noone;

	//update equipped item draw position

	if hbox[1] != noone {
		with(hbox[1]) {		//remove any trace of the item that was used in previous state
			instance_destroy();
		}
		hbox[1] = noone;
	}
	if hbox[2] != noone {
		with(hbox[2]) {
			instance_destroy();
		}
		hbox[2] = noone;
	}
	hbox_using = noone //reset item being currently used to noone, as no items can be used in the move state
	draw_gui_inv = false
	//	MAKE OBJECT MOVE AROUND THE ROOM BASED ON INPUT PROFILE

		//hspd = lengthdir_x(spd, dir);
		//vspd = lengthdir_y(spd, dir);

	if (haxis != 0 or vaxis != 0) {
	
		image_speed = global.game_speed/480
	
		scr_move_code(dir);

	} else {
		image_index = 0;
		image_speed = 0;
	}

	if key_interact_released {
		if carried_object != noone {
			carried_object.carrier = noone;
			carried_object = noone;
		}
		state = state_default;
	}


		//create timer to track how long mobility key is held 
		/*
		if key_mobility_held {
			var timer, sec_check ;
			timer += 1 ;
		}

		

/* end scr_carry_state */
}
