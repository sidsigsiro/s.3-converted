///scr_inv_item_transfer
///@arg item_giver
///@arg item_receiver
function scr_inv_item_transfer(argument0, argument1) {

	var item_giver = argument0, item_receiver = argument1,
	var rec_inv_type = inv, give_inv_type = inv;
	var rec_slots_type = inv_slots;
	var temp_inv;
	
	if item_giver.inv_gui_select_menu = 0 {
		give_inv_type = inv;
	} else if item_giver.inv_gui_select_menu = 1 {
		give_inv_type = inv_equip;
	} else if item_giver.inv_gui_select_menu = 2 {
		give_inv_type = inv_clothes;
	}


	//outside of loop
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
	
	
		//check receive inv slot type
		if item_receiver = obj_Character {
		if temp_inv[2] == HAT 
		or temp_inv[2] == SHIRT 
		or temp_inv[2] == PANTS {
			rec_inv_type = inv_clothes;
			rec_slots_type = inv_clothes_slots;
		} else if temp_inv[2] == scr_spear_state
		or temp_inv[2] == scr_bow_state
		or temp_inv[2] == scr_shield_state
		or temp_inv[2] == scr_heal_state {
			rec_inv_type = inv_equip;
			rec_slots_type = inv_equip_slots;
		} else {
			rec_inv_type = inv;
			rec_slots_type = inv_slots;
		}
	}


	//check if there's a free slot
	var slot_free = false;
	for (var i = 0; i <= rec_slots_type; i++) {
		if rec_inv_type = inv_clothes {
			if item_receiver.inv_clothes[i, 0] = noone {
				slot_free = true;
			}
		} else if rec_inv_type = inv_equip {
			if item_receiver.inv_equip[i, 0] = noone {
				slot_free = true;
			}
		} else if rec_inv_type = inv {
			if item_receiver.inv[i, 0] = noone {
				slot_free = true;
			}
		}
	}
	
	if slot_free = true {
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

		if rec_inv_type = inv_clothes {
			var clothes_slot;
			if temp_inv[2] == HAT {
				clothes_slot = 0;
			} else if temp_inv[2] == SHIRT {
				clothes_slot = 1;
			} else if temp_inv[2] == PANTS {
				clothes_slot = 2;
			} else if temp_inv[2] == BAG {
				clothes_slot = 3;
			}
			if item_receiver.inv_clothes[clothes_slot, 0] == noone {
				for (var j = 0; j <= global.inv_properties; j++) {
					item_receiver.inv_clothes[clothes_slot, j] = temp_inv[j];
					break;
				}
			} else {
				for (var i = 0; i <= item_receiver.inv_slots; i++) {
					if item_receiver.inv[i, 0] == noone {
						for (var j = 0; j <= global.inv_properties; j++) {
							item_receiver.inv[i, j] = temp_inv[j];
							break;
						}
					} else  {
						if i == item_receiver.inv_slots {
							//print message too full
							break;
						}
					}
				}
			}
		}
		
		if rec_inv_type = inv_equip {
			for (var i = 0; i <= item_receiver.inv_equip_slots; i++) {
				if item_receiver.inv_equip[i, 0] == noone {
					for (var j = 0; j <= global.inv_properties; j++) {
						item_receiver.inv_equip[i, j] = temp_inv[j];
						break;
					}
				} else {
					if i == item_receiver.inv_equip_slots {
						for (var k = 0; k <= item_receiver.inv_slots; k++) {
							if item_receiver.inv[k, 0] == noone {
								for (var l = 0; l <= global.inv_properties; l++) {
									item_receiver.inv[k, l] = temp_inv[j];
									break;
								}
							} else {
								if k == item_receiver.inv_slots {
									//print message too full
									break;
								}
							}
						}
					}
				}
			}
		}


		if rec_inv_type = inv {
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
