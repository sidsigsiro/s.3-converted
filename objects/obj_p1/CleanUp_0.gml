/// @description Insert description here
// You can write your code in this editor
if state != scr_inv_state {
	item_from_inv = false;
	draw_gui_inv = false;
	if text_box_item_name != noone {
		instance_destroy(text_box_item_name);
	}
	if text_box_menu_actions != noone {
		instance_destroy(text_box_menu_actions);
	}
	text_box_menu_actions = noone;
	inv_gui_actions = false;
	text_box_item_name = noone;
}