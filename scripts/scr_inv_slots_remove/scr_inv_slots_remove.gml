///scr_inv_slots_remove
function scr_inv_slots_remove(argument0) {



	for(var i = ((inv_slots + 1) - argument0); i <= inv_slots; i++) {
		if inv[i, 2] == ARROW {
			for(var j = 0; j <= inv_equip_slots; j++) {
				if inv_equip[j, 5] = i {
					inv_equip[j, 5] = noone;
					scr_set_sprite_arrowless();
				}
			}
		}
		if inv[i, 0] != noone {
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
			property_10;
			
			property_0 = inv[i, 0];
			property_1 = inv[i, 1];
			property_2 = inv[i, 2];
			property_3 = inv[i, 3];
			property_4 = inv[i, 4];
			property_5 = inv[i, 5];
			property_6 = inv[i, 6];
			property_7 = inv[i, 7];
			property_8 = inv[i, 8];
			property_9 = inv[i, 9];
			property_10 = inv[i, 10];
			
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
		}
		
		if inv[i, 2] == ARROW {
			for(var j = 0; j <= inv_equip_slots; j++) {
				if inv_equip[j, 5] = i {
					inv_equip[j, 5] = noone;
				}
			}
		}
		//empty item from inventory slot
		for(var j = 0; j <= global.inv_properties; j++) {
			inv[i, j] = noone;
		}
		
	}

	inv_slots -= argument0;


}
