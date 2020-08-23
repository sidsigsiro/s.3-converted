///scr_inv_state();
function scr_inv_state() {
	
	//inv_gui_select_menu  0 = inventory
	//									1 = equipped items
	//									2 = clothes

	draw_gui_inv = true;
	//toggle if item is used from inventory state, used in item state to change values
	item_from_inv = true;
	

	if text_box_item_name == noone {
		var string_y_buffer = (sprite_get_height(spr_inventory_GUI) / 2) + 13
		text_box_item_name = instance_create_layer(inv_x, inv_y - string_y_buffer, "instance_layer", obj_text_box);
		text_box_item_name.depth = depth - 1;
	}
	
	
	
	//INV_MENU
	if inv_gui_actions = false {
		scr_inv_controls_main()
	} else {
		//open up more actions if player isn't trying to currently move an item
		if inv_is_swapping = false {
			scr_inv_controls_gui_actions();
		}
	}
}
