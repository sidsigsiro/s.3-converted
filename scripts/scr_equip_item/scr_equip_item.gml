///scr_equip_item
function scr_equip_item(argument0) {

	//@arg slot to equip

	var slot_to_equip = argument0;

	// set temp variables to currently equipped item
	var temp_0 = inv_equip[slot_to_equip, 0],
		temp_1 = inv_equip[slot_to_equip, 1],
		temp_2 = inv_equip[slot_to_equip, 2],
		temp_3 = inv_equip[slot_to_equip, 3],
		temp_4 = inv_equip[slot_to_equip, 4],
		temp_5 = inv_equip[slot_to_equip, 5],
		temp_6 = inv_equip[slot_to_equip, 6],
		temp_7 = inv_equip[slot_to_equip, 7],
		temp_8 = inv_equip[slot_to_equip, 8],
		temp_9 = inv_equip[slot_to_equip, 9],
		temp_10 = inv_equip[slot_to_equip, 10];

	if inv_gui_select_menu = 0 {
		//equip item to slot
		for(var i = 0; i <= global.inv_properties; i++) {
			inv_equip[slot_to_equip, i] = inv[inv_gui_select, i];
		}
		
		//switch currently equipped clothes to inventory slot
		inv[inv_gui_select, 0] = temp_0;
		inv[inv_gui_select, 1] = temp_1;
		inv[inv_gui_select, 2] = temp_2;
		inv[inv_gui_select, 3] = temp_3;
		inv[inv_gui_select, 4] = temp_4;
		inv[inv_gui_select, 5] = temp_5;
		inv[inv_gui_select, 6] = temp_6;
		inv[inv_gui_select, 7] = temp_7;
		inv[inv_gui_select, 8] = temp_8;
		inv[inv_gui_select, 9] = temp_9;
		inv[inv_gui_select, 10] = temp_10;
		
	} else if inv_gui_select_menu = 1 {
			//equip item to slot
		for (var i = 0; i <= global.inv_properties; i++) {
			inv_equip[slot_to_equip, i] = inv_equip[inv_gui_select, i];
		}
		
		//switch currently equipped clothes to inventory slot
		inv_equip[inv_gui_select, 0] = temp_0;
		inv_equip[inv_gui_select, 1] = temp_1;
		inv_equip[inv_gui_select, 2] = temp_2;
		inv_equip[inv_gui_select, 3] = temp_3;
		inv_equip[inv_gui_select, 4] = temp_4;
		inv_equip[inv_gui_select, 5] = temp_5;
		inv_equip[inv_gui_select, 6] = temp_6;
		inv_equip[inv_gui_select, 7] = temp_7;
		inv_equip[inv_gui_select, 8] = temp_8;
		inv_equip[inv_gui_select, 9] = temp_9;
		inv_equip[inv_gui_select, 10] = temp_10;
		
	}
	
}
