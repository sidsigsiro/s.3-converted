///scr_inv_item_add_spear
function scr_inv_item_add_arrow() {

	//	inv LEGEND
	/*
	0,0 = item name
	0,1 = item icon sprite
	0, 2 = the script that will be used for the player state when the item is used
	0, 3 = script to run when player attempts to equip the item from their inventory
	*/

	///@arg inv[0, 4]
	///@arg inv[0, 5]
	///@arg inv[0, 6]

	var item_param_0 = "Arrow", //name
			item_param_1 = spr_arrow, //sprite
			item_param_2 = ARROW, //state/type
			item_param_3 = 20, //stat A (damage/ effectiveness)
			item_param_4 = noone, 
			item_param_5 = noone, // special quality (fire/ piercing/ whatever)
			item_param_6 = scr_set_sprite_inventory_arrow, //sprite set script
			item_param_7 = noone,
			item_param_8 = noone,
			item_param_9 = noone,
			item_param_10 = 3;//amount of arrows




	///check inventory slots and adds one to empty slot
	for(var i = 0; i <= inv_slots; i += 1) {
		if inv[i, 0] = noone {
			inv[i, 0] = item_param_0;
			inv[i, 1] = item_param_1;
			inv[i, 2] = item_param_2;
			inv[i, 3] = item_param_3;
			inv[i, 4] = item_param_4;
			inv[i, 5] = item_param_5;
			inv[i, 6] = item_param_6;
			inv[i, 7] = item_param_7;
			inv[i, 8] = item_param_8;
			inv[i, 9] = item_param_9;
			inv[i, 10] = item_param_10;
			break;
		} else if i = inv_slots {
			//create text "Too Full!"
		}
	}




	//
	/*
	///check inventory slots and adds one to empty slot
	for(var i = 0; i <= inv_slots; i += 1) {
		if inv[i, 0] = noone {
			inv[i, 0] = "spear"; //name
			inv[i, 1] = spr_spear; //sprite
			inv[i , 2] = scr_spear_state; //state
			inv[i, 3] = 30; ///stat A (damage/ effectiveness)
			inv[i, 4] = noone; ///stat B
			inv[i, 5] = noone; /// special quality (fire/ piercing/ whatever)
			inv[i, 6] = scr_set_sprite_inventory_spear break;
		} else {
			if i = inv_slots {
			//create text "Too Full!"
			}
		}
	}

/* end scr_inv_item_add_arrow */
}
