///scr_inv_slots_add
///@description
///@arg #_slots_to_add
function scr_inv_slots_add(argument0) {

	///create arrays for new slots
	for (var i = inv_slots + 1; i <= inv_slots + argument0; i++) {
	
		inv[i, 0] = noone;
		inv[i, 1] = noone;
		inv[i, 2] = noone;
		inv[i, 3] = noone;
		inv[i, 4] = noone;
		inv[i, 5] = noone;
		inv[i, 6] = noone;
		inv[i, 7] = noone;
		inv[i, 8] = noone;
		inv[i, 9] = noone;
		inv[i, 10] = noone;
	
	}

	//update amount of slots
	inv_slots += argument0;


}
