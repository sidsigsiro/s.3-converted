///scr_inv_equip_create
///@arg inv_slots
function scr_inv_equip_create_full() {
	//FILLS EQUIP SLOTS TO FORCE INV SLOT USE INSTEAD
	inv_equip_slots = 2;

	for (var i = inv_equip_slots; i > -1; i -= 1) {

		inv_equip[i,0] = 0;		//item_name

		inv_equip[i,1] = 0;	//item_icon_sprite

		inv_equip[i,2] = 0;	//item_state
	
		inv_equip[i,3] = 0; //item_type (tool, hat, clothes, backpack, etc...)
	
		inv_equip[i,4] = 0; //used for clothes
	
		inv_equip[i,5] = 0;	//used for clothes
	
		inv_equip[i,6] = 0;	//used for clothes
		
		inv_equip[i,7] = 0;
		
		inv_equip[i,8] = 0;
		
		inv_equip[i,9] = 0;
		
		inv_equip[i,10] = 0;
	
	}


}
