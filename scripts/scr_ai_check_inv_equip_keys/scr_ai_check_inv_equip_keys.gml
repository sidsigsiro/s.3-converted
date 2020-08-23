///scr_ai_check_inv_equip_keys
function scr_ai_check_inv_equip_keys() {

	//key will overwrite if equip slot is higher. possibly make a check for that if you have multiple melee weapons or something.


	//ai keys
	melee_slot = noone;

	ranged_slot = noone;

	heal_slot = noone;

	shield_slot = noone;

	throw_slot = noone;


	for (var i = 0; i <= inv_equip_slots; i++) {
	
		var e_slot = inv_equip[i, 2];
	
		if e_slot  == scr_spear_state {
				melee_slot = i;
				var melee_range = sprite_get_width(inv_equip[i,1])
				melee_range *= 1.25
				ai_melee_range = melee_range;
			} else if e_slot == scr_bow_state {
				ranged_slot = i;
			} else if e_slot == scr_heal_state {
				heal_slot = i;
			} else if e_slot == scr_shield_state {
				shield_slot = i;
			}
	}



}
