///scr_hurt_state
function scr_hurt_state(argument0) {

	draw_gui_inv = false;
	state_num = 4;
	
	//in case interrupted in inv state and clean up doesn't catch it
	if text_box_menu_actions != noone {
			instance_destroy(text_box_menu_actions);
		}
	
	item_from_inv = false;
	
	ai_status = ai_status_stun;

	var hp_dam, armour_dam, total_dam;
	total_dam = argument0;

	if hbox[0].hbox_active = true {
		state = state_default;
		if hbox[1] != noone {
			with(hbox[1]) {		//remove any trace of the item that was used in previous state before taking hit
				instance_destroy();
			}
			hbox[1] = noone;
		}
		if hbox[2] != noone {
			with(hbox[2]) {		//remove any trace of the item that was used in previous state before taking hit
				instance_destroy();
			}
			hbox[2] = noone;
		}


		armour_dam = total_dam / 2; //reduce armour damage by half
		hp_dam = total_dam - character_sheet.armour * 2; //reduce health damage base on armour * 2
		if hp_dam < 0 {
			hp_dam = 0; // negate adding health if armour is too good
		}
		var armour_split = 0; 
	

		for (var i = 0; i <= 2; i++) { //check how many armour pieces are equipped to split armour damage between
			if inv_clothes[i, 3] > 0 {
				armour_split++;
			}
		}
	
		if armour_split > 0 {
			armour_dam /= armour_split;
		}
		for (var j = 0; j <= 2;  j++) {
			inv_clothes[j, 3] -= armour_dam;
			if inv_clothes[j, 3] < 0 {
				inv_clothes[j, 3] = 0
			}
		}	
			character_sheet.hp -= hp_dam
	}

	hbox[0].hbox_active = false;

	if hbox[2] != noone {
		with(hbox[2]) {
			instance_destroy();
		}
		hbox[2] = noone;
	}

	if kc_spd < 0.1 {
		hbox[0].hbox_active = true;	
		is_hurt = false;
	
		if key_item_0_held {
		if inv_equip[0,2] != noone { //temporary, should add some unarmed actions for inv_equip[0,2] and inv_equip[1,2]when no item is equipped
			if inv_equip[0,4] > 0 {
				if character_sheet.stam > 0 {
					item_in_use = 0;
					image_index = 0;
					script_execute(inv_equip[0,6]); // set item sprite index
					state = inv_equip[0, 2];
					state_sprite = inv_equip[0, 1];
				}
			}
		}
	}

	if key_item_1_held {
		if  inv_equip[1,2] != noone {
			if inv_equip[1,4] > 0 {
				if character_sheet.stam > 0 {
					item_in_use = 1;
					image_index = 0;
					script_execute(inv_equip[1,6]); // set item sprite index
					state = inv_equip[1, 2];
					state_sprite = inv_equip[1, 1];
				}
			}
		}
	}

	if key_item_2_held {
		if  inv_equip[2,2] != noone {
			if inv_equip[2,4] > 0 {
				if character_sheet.stam > 0 {
					item_in_use = 2;
					image_index = 0;
					script_execute(inv_equip[2,6]); // set item sprite index
					state = inv_equip[2, 2];
					state_sprite = inv_equip[2, 1];
				}
			}
		}
	}
	}


}
