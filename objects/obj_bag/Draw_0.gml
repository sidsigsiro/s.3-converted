/// @description Insert description here
// You can write your code in this editor
draw_self();

if draw_gui_inv = true {
	var sprite_GUI = spr_inventory_GUI;
	
	draw_sprite(spr_inventory_GUI, 0, inv_x, inv_y);
	
	for(var i = 0; i < inv_slots + 1; i += 1) {
		var sprite_gui_slot_subimage = 0;
		if i = inv_gui_select {
			sprite_gui_slot_subimage = 2;
		}
		draw_sprite(spr_inventory_GUI_slot,sprite_gui_slot_subimage, (inv_x - sprite_get_width(sprite_GUI)/2) + 5*i, (inv_y - sprite_get_height(sprite_GUI)/2));
	}
	
	if inv[inv_gui_select, 1] != noone {
	draw_sprite(inv[inv_gui_select,1], 0, inv_x, inv_y);
	}
	
}


