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
			scr_inv_item_drop(i);
		}
	}

	inv_slots -= argument0;


}
