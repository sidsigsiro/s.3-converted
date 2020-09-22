///scr_drop_clothes
function scr_inv_clothes_drop(argument0) {
	//arg inv_clothes_slot

	var property_0 = inv_clothes[argument0, 0], 
		property_1 = inv_clothes[argument0, 1],
		property_2 = inv_clothes[argument0, 2],
		property_3 = inv_clothes[argument0, 3],
		property_4 = inv_clothes[argument0, 4],
		property_5 = inv_clothes[argument0, 5],
		property_6 = inv_clothes[argument0, 6],
		property_7 = inv_clothes[argument0, 7],
		property_8 = inv_clothes[argument0, 8],
		property_9 = inv_clothes[argument0, 9],
		property_10 = inv_clothes[argument0, 10];

	var dropped_item = instance_create_layer(x, y, "instance_layer", obj_pickup);

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

	if argument0 = 1 {
		scr_set_sprite_shirtless();
	} else if argument0 = 2 {
		scr_set_sprite_pantless();
	} else if argument0 = 0 {
		scr_set_sprite_hatless();
	} else if argument0 = 3 {
		scr_set_sprite_bagless();
		scr_inv_slots_remove(property_4);
		
	}

	inv_clothes[argument0, 0] = noone;
	inv_clothes[argument0, 1] = noone;
	inv_clothes[argument0, 2] = 0; //armour
	inv_clothes[argument0, 3] = noone;
	inv_clothes[argument0, 4] = noone;
	inv_clothes[argument0, 5] = noone;
	inv_clothes[argument0, 6] = noone;
	inv_clothes[argument0, 7] = noone;
	inv_clothes[argument0, 8] = noone;
	inv_clothes[argument0, 9] = noone;
	inv_clothes[argument0, 10] = noone;


}
