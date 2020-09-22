///scr_drop_clothes
function scr_inv_item_drop_all() {
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
			property_10;
		
			var dropped_item, drop_dir;

	for (var i = 0; i <= inv_equip_slots; i++) {
		if inv_equip[i, 0] != noone {
			//drop item from inventory slot
			property_0 = inv_equip[i, 0];
			property_1 = inv_equip[i, 1];
			property_2 = inv_equip[i, 2];
			property_3 = inv_equip[i, 3];
			property_4 = inv_equip[i, 4];
			property_5 = inv_equip[i, 5];
			property_6 = inv_equip[i, 6];
			property_7 = inv_equip[i, 7];
			property_8 = inv_equip[i, 8];
			property_9 = inv_equip[i, 9];
			property_10 = inv_equip[i, 10];
		
			drop_dir = (90 * i)
		
			dropped_item = instance_create_layer(x + lengthdir_x(20, drop_dir),
										y + lengthdir_y(20, drop_dir),
										"instance_layer",
										obj_pickup);

			if property_2 != HAT
			and property_2 != SHIRT
			and property_2 != PANTS
			and property_2 != BAG {
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
			} else {
				with(dropped_item) {
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
			}
			
			//empty item from inventory slot
			for (var j = 0; j <= global.inv_properties; j++) {
				inv_equip[i, j] = noone;
			}
		}
	}


}
