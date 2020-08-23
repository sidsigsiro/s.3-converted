///scr_inv_equip_create
///@arg inv_slots
function scr_inv_equip_create() {

	inv_equip_slots = 2;

	for (var i = inv_equip_slots; i > -1; i -= 1) {

		inv_equip[i,0] = noone;		//item_name

		inv_equip[i,1] = noone;	//item_icon_sprite

		inv_equip[i,2] = noone;	//item_state
	
		inv_equip[i,3] = noone; //item_type (tool, hat, clothes, backpack, etc...)
	
		inv_equip[i,4] = noone; //used for clothes
	
		inv_equip[i,5] = noone;	//used for clothes
	
		inv_equip[i,6] = noone;	//used for clothes
		
		inv_equip[i,7] = noone;
		
		inv_equip[i,8] = noone;
		
		inv_equip[i,9] = noone;
		
		inv_equip[i,10] = noone;
	
	}


}
