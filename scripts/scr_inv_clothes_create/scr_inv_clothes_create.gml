function scr_inv_clothes_create() {
	//inv_clothes_slots

	///scr_inv_create
	//@description create clothes inventory slots
	///@arg inv_clothes_slots

	/*
	inv_clothes[0, x] = hat

	inv_clothes[1, x] = shirt

	inv_clothes[2, x] = pants

	inv_clothes[3, x] = bag

	inv_clothes[4, x] = accessory_1

	inv_clothes[5, x] = accessory_2

	inv_clothes[6, x] = accessory_3
	*/

	inv_clothes_slots = (7 - 1);

	for (var i = inv_clothes_slots; i > -1; i -= 1) {
		inv_clothes[i,0] = noone;		//item_name

		inv_clothes[i,1] = noone;	//item_icon_sprite

		inv_clothes[i,2] = noone;	//item_type (hat, clothes, backpack, etc...)
	
		inv_clothes[i,3] = 0; //armour_points
	
		inv_clothes[i,4] = noone; //bonus inv_slots
	
		inv_clothes[i,5] = noone; //item_description
	
		inv_clothes[i, 6] = noone; //set sprite index script
		
		inv_clothes[i, 7] = noone;
		
		inv_clothes[i, 8] = noone;
		
		inv_clothes[i, 9] = noone;
		
		inv_clothes[i, 10] = noone;
	}


}
