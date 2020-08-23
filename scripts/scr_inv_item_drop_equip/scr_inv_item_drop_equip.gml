///scr_drop_clothes
function scr_inv_item_drop_equip(argument0) {
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


	var dropped_item = instance_create_layer(x, y, "instance_layer", obj_pickup);

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


	//empty item from equip slot
	inv_equip[argument0, 0] = noone;
	inv_equip[argument0, 1] = noone;
	inv_equip[argument0, 2] = noone;
	inv_equip[argument0, 3] = noone;
	inv_equip[argument0, 4] = noone;
	inv_equip[argument0, 5] = noone;
	inv_equip[argument0, 6] = noone;
	inv_equip[argument0, 7] = noone;
	inv_equip[argument0, 8] = noone;
	inv_equip[argument0, 9] = noone;
	inv_equip[argument0, 10] = noone;



}
