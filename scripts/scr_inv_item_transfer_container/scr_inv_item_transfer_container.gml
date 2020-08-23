///scr_inv_item_transfer
///@arg item_giver
///@arg item_receiver
function scr_inv_item_transfer_container(argument0, argument1) {

	var item_giver = argument0, item_receiver = argument1,
	var give_inv_type = inv;
	var temp_inv;
	
	if item_giver.inv_gui_select_menu = 0 {
		give_inv_type = inv;
	} else if item_giver.inv_gui_select_menu = 1 {
		give_inv_type = inv_equip;
	} else if item_giver.inv_gui_select_menu = 2 {
		give_inv_type = inv_clothes;
	}


	//check if there's a free slot
	var slot_free = false;
	for (var i = 0; i <= item_receiver.inv_slots; i++) {
		if item_receiver.inv[i, 0] = noone {
			slot_free = true;
		}
	}
	
	if slot_free = true {
		
			//unequip clothes sprite
	if give_inv_type = inv_clothes {
		if inv_clothes[item_giver.inv_gui_select, 2] == SHIRT {
			with(item_giver) {
				scr_set_sprite_shirtless();
			}
		} else if inv_clothes[item_giver.inv_gui_select, 2] == PANTS {
			with(item_giver) {
				scr_set_sprite_pantless();
			}
		} else if inv_clothes[item_giver.inv_gui_select, 2] == HAT {
			with(item_giver) {
				scr_set_sprite_hatless();
			}
		} else if inv_clothes[item_giver.inv_gui_select, 2] == BAG {
			scr_inv_slots_remove(inv_clothes[3, 4]);
			with(item_giver) {
				scr_set_sprite_bagless();
			}
		}
	}
		
		for (var i = 0; i <= global.inv_properties; i++) {
	
			if give_inv_type = inv {
		
				temp_inv[i] = item_giver.inv[item_giver.inv_gui_select, i];
				item_giver.inv[item_giver.inv_gui_select, i] = noone
		
			} else if give_inv_type = inv_equip {
		
				temp_inv[i] = item_giver.inv_equip[item_giver.inv_gui_select, i];
				item_giver.inv_equip[item_giver.inv_gui_select, i] = noone;
		
			} else if give_inv_type = inv_clothes {
				temp_inv[i] = item_giver.inv_clothes[item_giver.inv_gui_select, i];
				item_giver.inv_clothes[item_giver.inv_gui_select, i] = noone;
			}
		
		}
		
		//set receiver inv
		for (var i = 0; i <= item_receiver.inv_slots; i++) {
			if item_receiver.inv[i, 0] == noone {
				for (var j = 0; j <= global.inv_properties; j++) {
					item_receiver.inv[i, j] = temp_inv[j];
				}
				break;
			} else {
				if i == item_receiver.inv_slots {
					//print message too full
					break;
				}
			}
		}
	}
	
	
		/* old code feelin cute might delet later
									//name
			if item_receiver.inv[i, 0] = noone {

										//name
				if item_giver.inv[item_giver.inv_gui_select,0] != noone {
			
					item_receiver.inv[i, 0] = item_giver.inv[item_giver.inv_gui_select,0];
					item_giver.inv[item_giver.inv_gui_select,0] = noone;
												//sprite
					item_receiver.inv[i, 1] = item_giver.inv[item_giver.inv_gui_select,1];
					item_giver.inv[item_giver.inv_gui_select,1] = noone;
												//item_state
					item_receiver.inv[i, 2] = item_giver.inv[item_giver.inv_gui_select,2];
					item_giver.inv[item_giver.inv_gui_select,2] = noone;
												//item_equip_script
					item_receiver.inv[i, 3] = item_giver.inv[item_giver.inv_gui_select,3];
					item_giver.inv[item_giver.inv_gui_select,3] = noone;
			
				}
			}
		}

		

/* end scr_inv_item_transfer */
}
