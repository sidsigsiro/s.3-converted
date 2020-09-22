// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inv_controls_gui_actions() {
	if text_box_menu_actions == noone {
		text_box_menu_actions = instance_create_layer(inv_x - 1, inv_y + 2, "instance_layer", obj_text_box);
		text_box_menu_actions.box_width = sprite_get_width(spr_inventory_GUI) - 2;
		text_box_menu_actions.depth = depth - 1;
			
		var text_act = text_box_menu_actions;
			
		text_act.my_text[0] = noone;
		text_act.my_text[1] = noone;
		text_act.my_text[2] = noone;
		text_act.my_text[3] = noone;
		text_act.my_text[4] = noone;
		text_act.my_text[5] = noone;
			
		//check what type of item was selected and apply the proper text prompts
		if inv_gui_select_menu = 0 {
			var item;
			item = inv[inv_gui_select, 2];
			if item = scr_eat_state or item = scr_heal_state or item = scr_drink_state {
			text_act.my_text[0] = "Use"
			}
		}/* might not be necessary if you can just use "Move" tp move it to an equip slot
		if inv_gui_select_menu = 0 {
			text_act.my_text[1] = "Equip";
		} else {
			text_act.my_text[2] = "Unequip";
		}
		*/
		text_act.my_text[3] = "Move";
		text_act.my_text[4] = "Drop";
		var _list = ds_list_create();
		var search_target = collision_circle_list(x, y, 25, obj_Container, false, true, _list, true)
		if search_target > 0 {
			text_act.my_text[5] = "Put";
			ds_list_destroy(_list);
		}
		text_act.page = 0;
		while(text_act.my_text[text_act.page] = noone) {
			text_act.page += 1
		}
	} else {
		var text_act = text_box_menu_actions;
		if key_left_pressed {
			with (text_act) {
				do {
					char_count = 0;
					if (page - 1 < 0) {
						page = array_length_1d(text) - 1;
					} else {
						page -= 1;
					}
				} until (my_text[page] != noone);
			}
		}
		if key_right_pressed {
			with (text_act) {
				do {
					char_count = 0;
					if (page + 1 < array_length_1d(text)) {
						page += 1
					} else {
						page = 0;
					}
				} until (my_text[page] != noone);
			}
		}
		if key_interact {
			if text_act.my_text[text_act.page] = "Use" {
				///clean up inv values
				instance_destroy(text_box_menu_actions);
				text_box_menu_actions = noone;
				inv_gui_actions = false;
				instance_destroy(text_box_item_name);
				text_box_item_name = noone;
				draw_gui_inv = false;
					
				//prep for item state
				item_from_inv = true;
				item_in_use = inv_gui_select;
				image_index = 0;
				script_execute(inv[item_in_use,6]); // set item sprite index
				state = inv[item_in_use, 2];
				state_sprite_item = inv[item_in_use, 1];
			} else if text_act.my_text[text_act.page] = "Equip" {
					
			} else if text_act.my_text[text_act.page] = "Unequip" {
					
			} else if text_act.my_text[text_act.page] = "Move" {
				//prep to swap selected item with next time that will be selected
				inv_is_swapping = true;
				inv_item_to_swap = inv_gui_select;
				inv_item_to_swap_menu = inv_gui_select_menu;
				//close actions text box
				instance_destroy(text_box_menu_actions);
				text_box_menu_actions = noone;
				inv_gui_actions = false
			} else if text_act.my_text[text_act.page] = "Drop" {
				if inv_gui_select_menu != 2 {
					scr_inv_item_drop(inv_gui_select)
				} else {
					scr_inv_clothes_drop(inv_gui_select);
				}
				//close actions text box
				instance_destroy(text_box_menu_actions);
				text_box_menu_actions = noone;
				inv_gui_actions = false
			} else if text_act.my_text[text_act.page] = "Put" {
				var _list = ds_list_create();
				var search_target = collision_circle_list(x, y, 25, obj_Container, false, true, _list, true)
				if search_target > 0 {
					for(var i = 0; i <= search_target; i++) {
						scr_inv_item_transfer_container(id, _list[| i]);
						break;
					}
					ds_list_destroy(_list);
				}
				//close actions text box
				instance_destroy(text_box_menu_actions);
				text_box_menu_actions = noone;
				inv_gui_actions = false
			}
		}
		if key_inv_pressed {
			instance_destroy(text_box_menu_actions);
			text_box_menu_actions = noone;
			inv_gui_actions = false
		}
	}
}