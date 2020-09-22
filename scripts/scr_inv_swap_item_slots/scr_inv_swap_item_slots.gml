// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inv_swap_item_slots() {
	//will store the inv properties of the item from the old slot
	var temp0, temp1, temp2, temp3, temp4, temp5,
		temp6, temp7, temp8, temp9, temp10;
		
		var can_swap = true;
		
		//to add and subtract bag slots once during for loop
		var bag_slots_handled = false
				
				
	if inv_item_to_swap_menu = 0 {
		//set temp variable to old slot
		temp0 = inv[inv_item_to_swap, 0];	temp1 = inv[inv_item_to_swap, 1];	temp2 = inv[inv_item_to_swap, 2];
		temp3 = inv[inv_item_to_swap, 3];	temp4 = inv[inv_item_to_swap, 4];	temp5 = inv[inv_item_to_swap, 5];
		temp6 = inv[inv_item_to_swap, 6];	temp7 = inv[inv_item_to_swap, 7];	temp8 = inv[inv_item_to_swap, 8];
		temp9 = inv[inv_item_to_swap, 9];	temp10 = inv[inv_item_to_swap, 10];
					
		//set old slot variables to new slot variables
		for (var i = 0; i <= global.inv_properties; i++) {
			if inv_gui_select_menu == 0 {
				inv[inv_item_to_swap, i] = inv[inv_gui_select, i];
				
			} else if inv_gui_select_menu == 1 {
				//check if item swapping from is clothes, clothes can't be equipped as items
				if temp2 = HAT 
				or temp2 = SHIRT
				or temp2 = PANTS
				or temp2 = BAG
				or temp2 = ARROW {
					can_swap = false;
				}
				if can_swap = true {
					inv[inv_item_to_swap, i] = inv_equip[inv_gui_select, i];
				}
				
			} else if inv_gui_select_menu == 2 {
				//check if item swapping from is clothes, clothes can't be changed to a different slot the what they are supposed to be in
				if temp2 != HAT 
				and temp2 != SHIRT
				and temp2 != PANTS
				and temp2 != BAG {
					can_swap = false;
				}
				if can_swap = true {
					if inv[inv_item_to_swap, 2] == HAT {
						if inv_gui_select = 0 {
							inv[inv_item_to_swap, i] = inv_clothes[inv_gui_select, i];
						} else {
							can_swap = false;
						}
					} else if inv[inv_item_to_swap, 2] == SHIRT {
						if inv_gui_select = 1 {
							inv[inv_item_to_swap, i] = inv_clothes[inv_gui_select, i];
						} else {
							can_swap = false;
						}
					} else if inv[inv_item_to_swap, 2] == PANTS {
						if inv_gui_select = 2 {
							inv[inv_item_to_swap, i] = inv_clothes[inv_gui_select, i];
						} else {
							can_swap = false;
						}
					} else if inv[inv_item_to_swap, 2] == BAG {
						if inv_gui_select = 3 {
							var equip_script = inv[inv_item_to_swap, 6];
							script_execute(equip_script);
							if bag_slots_handled = false {
								scr_inv_slots_add(inv[inv_item_to_swap, 4])
								bag_slots_handled = true;
							}
							inv[inv_item_to_swap, i] = inv_clothes[inv_gui_select, i];
						} else {
							can_swap = false;
						}
					}
				}
			}
		}
					
	} else if inv_item_to_swap_menu = 1 {
		temp0 = inv_equip[inv_item_to_swap, 0];	temp1 = inv_equip[inv_item_to_swap, 1];	temp2 = inv_equip[inv_item_to_swap, 2];
		temp3 = inv_equip[inv_item_to_swap, 3];	temp4 = inv_equip[inv_item_to_swap, 4];	temp5 = inv_equip[inv_item_to_swap, 5];
		temp6 = inv_equip[inv_item_to_swap, 6];	temp7 = inv_equip[inv_item_to_swap, 7];	temp8 = inv_equip[inv_item_to_swap, 8];
		temp9 = inv_equip[inv_item_to_swap, 9];	temp10 = inv_equip[inv_item_to_swap, 10];
					
		//set old slot variables to new slot variables
		for (var i = 0; i <= global.inv_properties; i++) {
			if inv_gui_select_menu == 0 {
				inv_equip[inv_item_to_swap, i] = inv[inv_gui_select, i];
			} else if inv_gui_select_menu == 1 {
				inv_equip[inv_item_to_swap, i] = inv_equip[inv_gui_select, i];
			} else if inv_gui_select_menu == 2 {
				if inv_equip[inv_item_to_swap, 2] == inv_clothes[inv_gui_select, 2] {
					inv_equip[inv_item_to_swap, i] = inv_clothes[inv_gui_select, i];
				} else {
					can_swap = false;
				}
			}
		}
					
	} else if inv_item_to_swap_menu = 2 {
		temp0 = inv_clothes[inv_item_to_swap, 0];	temp1 = inv_clothes[inv_item_to_swap, 1];	temp2 = inv_clothes[inv_item_to_swap, 2];
		temp3 = inv_clothes[inv_item_to_swap, 3];	temp4 = inv_clothes[inv_item_to_swap, 4];	temp5 = inv_clothes[inv_item_to_swap, 5];
		temp6 = inv_clothes[inv_item_to_swap, 6];	temp7 = inv_clothes[inv_item_to_swap, 7];	temp8 = inv_clothes[inv_item_to_swap, 8];
		temp9 = inv_clothes[inv_item_to_swap, 9];	temp10 = inv_clothes[inv_item_to_swap, 10];
					
		//set old slot variables to new slot variables
		for (var i = 0; i <= global.inv_properties; i++) {
			if inv_gui_select_menu == 0 {
				if inv[inv_gui_select, 0] == noone {
					if inv_clothes[inv_item_to_swap, 2] == HAT {
						scr_set_sprite_hatless();
					} else if inv_clothes[inv_item_to_swap, 2] == SHIRT {
						scr_set_sprite_shirtless();
					} else if inv_clothes[inv_item_to_swap, 2] == PANTS {
						scr_set_sprite_pantless();
					} else if inv_clothes[inv_item_to_swap, 2] == BAG {
						if bag_slots_handled = false {
							var bag_slots = (inv_clothes[inv_item_to_swap, 4])
							if inv_gui_select <= (inv_slots) - bag_slots { 
								scr_inv_slots_remove(bag_slots);
								scr_set_sprite_bagless();
							} else {
								can_swap = false;
							}
							bag_slots_handled = true;
						}
					}
					if can_swap = true {
						inv_clothes[inv_item_to_swap, i] = inv[inv_gui_select, i];
						inv_clothes[inv_item_to_swap, 3] = 0;
					}
				} else {
					can_swap = false;
				}
			} else if inv_gui_select_menu == 1 {
								//check if item swapping from is clothes, clothes can't be equipped as items
				if temp2 = HAT 
				or temp2 = SHIRT
				or temp2 = PANTS
				or temp2 = BAG {
					can_swap = false;
				}
				if inv_equip[inv_gui_select, 0] == noone {
					if can_swap = true {
						inv_clothes[inv_item_to_swap, i] = inv_equip[inv_gui_select, i];
					}
				} else {
					can_swap = false;
				}
			} else if inv_gui_select_menu == 2 {
				can_swap = false;
			}
		}
	}
				
	//switch new slot to temp variables
	if can_swap = true {
		if inv_gui_select_menu == 0 {
			inv[inv_gui_select, 0] = temp0;	inv[inv_gui_select, 1] = temp1;	inv[inv_gui_select, 2] = temp2;
			inv[inv_gui_select, 3] = temp3;	inv[inv_gui_select, 4] = temp4;	inv[inv_gui_select, 5] = temp5;
			inv[inv_gui_select, 6] = temp6;	inv[inv_gui_select, 7] = temp7;	inv[inv_gui_select, 8] = temp8;
			inv[inv_gui_select, 9] = temp9;	inv[inv_gui_select, 10] = temp10;
					
		} else if inv_gui_select_menu == 1 {
			inv_equip[inv_gui_select, 0] = temp0;	inv_equip[inv_gui_select, 1] = temp1;	inv_equip[inv_gui_select, 2] = temp2;
			inv_equip[inv_gui_select, 3] = temp3;	inv_equip[inv_gui_select, 4] = temp4;	inv_equip[inv_gui_select, 5] = temp5;
			inv_equip[inv_gui_select, 6] = temp6;	inv_equip[inv_gui_select, 7] = temp7;	inv_equip[inv_gui_select, 8] = temp8;
			inv_equip[inv_gui_select, 9] = temp9;	inv_equip[inv_gui_select, 10] = temp10;
					
		} else if inv_gui_select_menu == 2 {
			inv_clothes[inv_gui_select, 0] = temp0;	inv_clothes[inv_gui_select, 1] = temp1;	inv_clothes[inv_gui_select, 2] = temp2;
			inv_clothes[inv_gui_select, 3] = temp3;	inv_clothes[inv_gui_select, 4] = temp4;	inv_clothes[inv_gui_select, 5] = temp5;
			inv_clothes[inv_gui_select, 6] = temp6;	inv_clothes[inv_gui_select, 7] = temp7;	inv_clothes[inv_gui_select, 8] = temp8;
			inv_clothes[inv_gui_select, 9] = temp9;	inv_clothes[inv_gui_select, 10] = temp10;
			
			script_execute(temp6);
			
		}
	}
	inv_item_to_swap = noone;
	inv_item_to_swap_menu = 0;
	inv_is_swapping = false;
}
