///@func scr_inv_add
function scr_inv_clothes_add(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) {

	///@arg inv[0, 0]
	///@arg inv[0, 1]
	///@arg inv[0, 2]
	///@arg inv[0, 3]
	///@arg inv[0, 4]
	///@arg inv[0, 5]
	///@arg inv[0, 6]
	///@arg inv[0, 7]
	///@arg inv[0, 8]
	///@arg inv[0, 9]
	///@arg inv[0, 10]
	///@arg inv[0, 11]
	///check inventory slots and adds one to empty slot



	var clothes_slot_empty = false;

	var property_0 = argument0,
		property_1 = argument1,
		property_2 = argument2,
		property_3 = argument3,
		property_4 = argument4,
		property_5 = argument5,
		property_6 = argument6,
		property_7 = argument7,
		property_8 = argument8,
		property_9 = argument9,
		property_10 = argument10,
		property_11 = argument11;
	
	
	

	//check if shirt is equipped and auto equip it
	if property_2 = HAT {
		if inv_clothes[0, 0] = noone {
			clothes_slot_empty = true;
			inv_clothes[0, 0] = property_0;
			inv_clothes[0, 1] = property_1;
			inv_clothes[0, 2] = property_2;
			inv_clothes[0, 3] = property_3;
			inv_clothes[0, 4] = property_4;
			inv_clothes[0, 5] = property_5;
			inv_clothes[0, 6] = property_6;
			inv_clothes[0, 7] = property_7;
			inv_clothes[0, 8] = property_8;
			inv_clothes[0, 9] = property_9;
			inv_clothes[0, 10] = property_10;
			script_execute(property_6);
			if property_11 != noone {
				with property_11 { //destroy pickup object if item is picked up
					instance_destroy();
				}
			}
		}
	} else if property_2 = SHIRT {
		if inv_clothes[1, 0] = noone {
			clothes_slot_empty = true;
			inv_clothes[1, 0] = property_0;
			inv_clothes[1, 1] = property_1;
			inv_clothes[1, 2] = property_2;
			inv_clothes[1, 3] = property_3;
			inv_clothes[1, 4] = property_4;
			inv_clothes[1, 5] = property_5;
			inv_clothes[1, 6] = property_6;
			inv_clothes[1, 7] = property_7;
			inv_clothes[1, 8] = property_8;
			inv_clothes[1, 9] = property_9;
			inv_clothes[1, 10] = property_10;
			script_execute(property_6);
			if property_11 != noone {
				with property_11 {
					instance_destroy();
				}
			}
		}
	} else if property_2 = PANTS {
			if inv_clothes[2, 0] = noone {
			clothes_slot_empty = true;
			inv_clothes[2, 0] = property_0;
			inv_clothes[2, 1] = property_1;
			inv_clothes[2, 2] = property_2;
			inv_clothes[2, 3] = property_3;
			inv_clothes[2, 4] = property_4;
			inv_clothes[2, 5] = property_5;
			inv_clothes[2, 6] = property_6;
			inv_clothes[2, 7] = property_7;
			inv_clothes[2, 8] = property_8;
			inv_clothes[2, 9] = property_9;
			inv_clothes[2, 10] = property_10;
			script_execute(property_6);
			if property_11 != noone {
				with property_11 {
					instance_destroy();
				}
			}
		}
	} else if property_2 = BAG {
			if inv_clothes[3, 0] = noone {
			clothes_slot_empty = true;
			inv_clothes[3, 0] = property_0;
			inv_clothes[3, 1] = property_1;
			inv_clothes[3, 2] = property_2;
			inv_clothes[3, 3] = property_3;
			inv_clothes[3, 4] = property_4;
			inv_clothes[3, 5] = property_5;
			inv_clothes[3, 6] = property_6;
			inv_clothes[3, 7] = property_7;
			inv_clothes[3, 8] = property_8;
			inv_clothes[3, 9] = property_9;
			inv_clothes[3, 10] = property_10;
			script_execute(property_6);
			scr_inv_slots_add(property_4)
			if property_11 != noone {
				with property_11 {
					instance_destroy();
				}
			}
		}
	}
	///check inventory slots and adds one to empty slot
	if clothes_slot_empty = false {
		for(var i = 0; i <= inv_slots; i += 1) {
			if inv[i, 0] = noone {
				inv[i, 0] = property_0;
				inv[i, 1] = property_1;
				inv[i, 2] = property_2;
				inv[i, 3] = property_3;
				inv[i, 4] = property_4;
				inv[i, 5] = property_5;
				inv[i,6] = property_6;
				inv[i,7] = property_7;
				inv[i,8] = property_8;
				inv[i,9] = property_9;
				inv[i,10] = property_10;
				if property_11 != noone {
					with property_11 {
						instance_destroy();
					} break;
				}
		
			} else {
				if i = inv_slots {
					//create text "Too Full!"
				}
			}
		}
	}



}
