///scr_unequip_clothes
function scr_unequip_clothes() {

	if inv_gui_select_menu = 2 {
		if inv_gui_select = 3 {
			scr_inv_slots_remove(inv_clothes[3, 4]);
		}
	}

	for(var i =0; i <= inv_slots; i++) {
		if inv[i, 0] = noone {
			//put clothes in inventory if there is space
			inv[i, 0] = inv_clothes[inv_gui_select, 0];
		
			inv[i, 1] = inv_clothes[inv_gui_select, 1];
		
			inv[i, 2] = inv_clothes[inv_gui_select, 2];
		
			inv[i, 3] = inv_clothes[inv_gui_select, 3];
		
			inv[i, 4] = inv_clothes[inv_gui_select, 4];
		
			inv[i, 5] = inv_clothes[inv_gui_select, 5];
		
			inv[i, 6] = inv_clothes[inv_gui_select, 6];
			
			inv[i, 7] = inv_clothes[inv_gui_select, 7];
			
			inv[i, 8] = inv_clothes[inv_gui_select, 8];
			
			inv[i, 9] = inv_clothes[inv_gui_select, 9];
			
			inv[i, 10] = inv_clothes[inv_gui_select, 10];
		
			//set sprite index to no clothes
			if inv_clothes[inv_gui_select, 2] == SHIRT {
				scr_set_sprite_shirtless();
			} else if inv_clothes[inv_gui_select, 2] == PANTS {
				scr_set_sprite_pantless();
			} else if inv_clothes[inv_gui_select, 2] == HAT {
				scr_set_sprite_hatless();
			} else if inv_clothes[inv_gui_select, 2] == BAG {
				scr_set_sprite_bagless();
			}
			//unequip clothes
			inv_clothes[inv_gui_select, 0] = noone;
		
			inv_clothes[inv_gui_select, 1] = noone;
		
			inv_clothes[inv_gui_select, 2] = noone;
		
			inv_clothes[inv_gui_select, 3] = noone;
		
			inv_clothes[inv_gui_select, 4] = noone;
		
			inv_clothes[inv_gui_select, 5] = noone;
		
			inv_clothes[inv_gui_select, 6] = noone;
			
			inv_clothes[inv_gui_select, 7] = noone;
			
			inv_clothes[inv_gui_select, 8] = noone;
			
			inv_clothes[inv_gui_select, 9] = noone;
			
			inv_clothes[inv_gui_select, 10] = noone break;
		
		} else {
			///drop clothes if there is no space
			if i = inv_slots {
				scr_inv_clothes_drop(inv_gui_select);
			}
		}
	}


}
