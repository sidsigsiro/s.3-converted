///scr_equip_shirt
///scr_equip_shirt
function scr_equip_hat() {
	// set temp variables to currently equipped item
	var temp_0 = inv_clothes[0, 0],
		temp_1 = inv_clothes[0, 1],
		temp_2 = inv_clothes[0, 2],
		temp_3 = inv_clothes[0, 3],
		temp_4 = inv_clothes[0, 4],
		temp_5 = inv_clothes[0, 5],
		temp_6 = inv_clothes[0, 6],
		temp_7 = inv_clothes[0, 7],
		temp_8 = inv_clothes[0, 8],
		temp_9 = inv_clothes[0, 9],
		temp_10 = inv_clothes[0, 10];

	//equip clothes to slot
	for(var i =0; i <= global.inv_properties; i++) {
		inv_clothes[0, i] = inv[inv_gui_select, i];
	}

	//switch currently equipped clothes to temp slots
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


}
