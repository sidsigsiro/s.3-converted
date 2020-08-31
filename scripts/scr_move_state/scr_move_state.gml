///scr_move_state
function scr_move_state() {
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
	state_sprite_item = noone;
	state_sprite_item_aim = noone;
	food_sprite = noone;

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
	//used to check if item is being used directly from the inventory
	item_from_inv = false;
	//	MAKE OBJECT MOVE AROUND THE ROOM BASED ON INPUT PROFILE

		//hspd = lengthdir_x(spd, dir);
		//vspd = lengthdir_y(spd, dir);

	if (haxis != 0 or vaxis != 0) {
	
		image_speed = global.game_speed/480
	
		scr_move_code(dir);

	} else {
		image_index = 0
		image_speed = 0
	}

	if key_item_0 {
		if inv_equip[0,2] != noone { //temporary, should add some unarmed actions for inv_equip[0,2] and inv_equip[1,2]when no item is equipped
			if character_sheet.stam > 0 {
				item_in_use = 0;
				image_index = 0;
				script_execute(inv_equip[0,6]); // set item sprite index
				state = inv_equip[0, 2];
				state_sprite_item = inv_equip[0, 1];
			}
		}
	}

	if key_item_1 {
		if  inv_equip[1,2] != noone {
				if character_sheet.stam > 0 {
					item_in_use = 1;
					image_index = 0;
					script_execute(inv_equip[1,6]); // set item sprite index
					state = inv_equip[1, 2];
					state_sprite_item = inv_equip[1, 1];
				}
		}
	}

	if key_item_2 {
		if  inv_equip[2,2] != noone {
				if character_sheet.stam > 0 {
					item_in_use = 2;
					image_index = 0;
					script_execute(inv_equip[2,6]); // set item sprite index
					state = inv_equip[2, 2];
					state_sprite_item = inv_equip[2, 1];
				}
		}
	}

	if key_aim {
		if inv_equip[0,2] != noone or inv_equip[1,2] != noone or inv_equip[2,2] != noone {
			image_index = 0
			state = scr_aim_state;
		}
	}

	if key_run_pressed {
		if character_sheet.stam > 0 {
			image_index = 1;
			state = scr_hop_state;
		}
	}

	scr_interact();

	if key_inv_pressed {
		if collision_circle(x, y, 25, obj_Container, false,true) {
			interact_target = collision_circle(x, y, 25, obj_Container, false,true);
			search_target = interact_target
		}
		state = scr_inv_state;
	}
		//create timer to track how long mobility key is held 
		/*
		if key_mobility_held {
			var timer, sec_check ;
			timer += 1 ;
		}

		

/* end scr_move_state */
}
