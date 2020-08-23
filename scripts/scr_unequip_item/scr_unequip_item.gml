///scr_unequip_clothes
function scr_unequip_item(argument0) {
	//@arg slot_to_unequip

	var slot_to_unequip = argument0;

	for(var i =0; i <= inv_slots; i++) {
		if inv[i, 0] = noone {
			//put clothes in inventory if there is space
			inv[i, 0] = inv_equip[inv_gui_select, 0];
		
			inv[i, 1] = inv_equip[inv_gui_select, 1];
		
			inv[i, 2] = inv_equip[inv_gui_select, 2];
		
			inv[i, 3] = inv_equip[inv_gui_select, 3];
		
			inv[i, 4] = inv_equip[inv_gui_select, 4];
		
			inv[i, 5] = inv_equip[inv_gui_select, 5];
		
			inv[i, 6] = inv_equip[inv_gui_select, 6];
			
			inv[i, 7] = inv_equip[inv_gui_select, 7];
			
			inv[i, 8] = inv_equip[inv_gui_select, 8];
			
			inv[i, 9] = inv_equip[inv_gui_select, 9];
			
			inv[i, 10] = inv_equip[inv_gui_select, 10];
		
			//set sprite index to no clothes
			//unequip clothes
			inv_equip[slot_to_unequip, 0] = noone;
		
			inv_equip[slot_to_unequip, 1] = noone;
		
			inv_equip[slot_to_unequip, 2] = noone;
		
			inv_equip[slot_to_unequip, 3] = noone;
		
			inv_equip[slot_to_unequip, 4] = noone;
		
			inv_equip[slot_to_unequip, 5] = noone;
		
			inv_equip[slot_to_unequip, 6] = noone;
			
			inv_equip[slot_to_unequip, 7] = noone; 
			
			inv_equip[slot_to_unequip, 8] = noone; 
			
			inv_equip[slot_to_unequip, 9] = noone; 
			
			inv_equip[slot_to_unequip, 10] = noone break;
		
		} else {
			///drop clothes if there is no space
			if i = inv_slots {
				scr_inv_item_drop(slot_to_unequip);
			}
		}
	}


}
