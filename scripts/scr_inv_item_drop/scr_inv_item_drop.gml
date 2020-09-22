///scr_drop_clothes
function scr_inv_item_drop(argument0) {
	//arg inv_slot

	var property_0,
		property_1,
		property_2,
		property_3,
		property_4,
		property_5,
		property_6,
		property_7,
		property_8,
		property_9,
		property_10,

	if inv_gui_select_menu = 0 {
		//drop item from inventory slot
		property_0 = inv[argument0, 0];
		property_1 = inv[argument0, 1];
		property_2 = inv[argument0, 2];
		property_3 = inv[argument0, 3];
		property_4 = inv[argument0, 4];
		property_5 = inv[argument0, 5];
		property_6 = inv[argument0, 6];
		property_7 = inv[argument0, 7];
		property_8 = inv[argument0, 8];
		property_9 = inv[argument0, 9];
		property_10 = inv[argument0, 10];
	}

	if inv_gui_select_menu = 1 {
		//drop item from inventory slot
		property_0 = inv_equip[argument0, 0];
		property_1 = inv_equip[argument0, 1];
		property_2 = inv_equip[argument0, 2];
		property_3 = inv_equip[argument0, 3];
		property_4 = inv_equip[argument0, 4];
		property_5 = inv_equip[argument0, 5];
		property_6 = inv_equip[argument0, 6];
		property_7 = inv_equip[argument0, 7];
		property_8 = inv_equip[argument0, 8];
		property_9 = inv_equip[argument0, 9];
		property_10 = inv_equip[argument0, 10];
	}
	
	if inv_gui_select_menu = 2 {
		property_0 = inv_clothes[argument0, 0];
		property_1 = inv_clothes[argument0, 1];
		property_2 = inv_clothes[argument0, 2];
		property_3 = inv_clothes[argument0, 3];
		property_4 = inv_clothes[argument0, 4];
		property_5 = inv_clothes[argument0, 5];
		property_6 = inv_clothes[argument0, 6];
		property_7 = inv_clothes[argument0, 7];
		property_8 = inv_clothes[argument0, 8];
		property_9 = inv_clothes[argument0, 9];
		property_10 = inv_clothes[argument0, 10];
	}


	var dropped_item = instance_create_layer(x, y, "instance_layer", obj_pickup);
	
	if property_2 == HAT or property_2 == SHIRT
	or property_2 == PANTS or property_2 == BAG {
		with(dropped_item) {
			//add to clothes slot if they are clothes
			scr_inv_clothes_add(property_0, 
									   property_1,
									   property_2,
									   property_3,
									   property_4,
									   property_5,
									   property_6,
									   property_7,
									   property_8,
									   property_9,
									   property_10,
									   noone)
		}
	} else {
		with(dropped_item) {
			scr_inv_item_add(property_0, 
											property_1,
											property_2,
											property_3,
											property_4,
											property_5,
											property_6,
											property_7,
											property_8,
											property_9,
											property_10,
											noone)
		}
	}


	if inv_gui_select_menu = 0 {
		//unequip arrow if it's equipped
		if inv[argument0, 2] == ARROW {
			for(var i = 0; i <= inv_equip_slots; i++) {
				if inv_equip[i, 5] = argument0 {
					inv_equip[i, 5] = noone;
				}
			}
		}
		//empty item from inventory slot
		for(var i = 0; i <= global.inv_properties; i++) {
			inv[argument0, i] = noone;
		}
	}

	if inv_gui_select_menu = 1 {
		//empty item from equip slot
		for(var i = 0; i <= global.inv_properties; i++) {
			inv_equip[argument0, i] = noone;
		}
	}
	
	if inv_gui_select_menu == 2 {
		//empty item from clothes slot
		for(var i = 0; i <= global.inv_properties; i++) {
			inv_clothes[argument0, i] = noone;
		}
	}


}
