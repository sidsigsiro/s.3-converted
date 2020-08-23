///scr_inv_create
function scr_inv_create(argument0) {
	//@description create an inventory
	///@arg inv_slots


	inv_gui_select_menu = 0;
	inv_slots = (argument0 - 1);
	inv_gui_actions = false;
	text_box_menu_actions = noone;
	draw_gui_inv = false;
	text_box_item_name = noone;
	inv_is_swapping = false;
	inv_item_to_swap = noone;
	inv_item_to_swap_menu = 0;

	for (var i = inv_slots; i > -1; i -= 1) {

		inv[i,0] = noone;		//item_name

		inv[i,1] = noone;	//item_icon_sprite

		inv[i,2] = noone;	//item_state
	
		inv[i,3] = noone; //item_type (tool, hat, clothes, backpack, etc...)
	
		inv[i,4] = noone; //used for clothes
	
		inv[i,5] = noone;	//used for clothes
	
		inv[i,6] = noone;	//used for clothes
		
		inv[i,7] = noone;
		
		inv[i,8] = noone;
		
		inv[i,9] = noone;
		
		inv[i,10] = noone;
	
	}

	inv_gui_select = 0;

	inv_x_default = x;
	inv_ydefault = y -12;

	inv_x = inv_x_default;
	inv_y = inv_ydefault;


}
