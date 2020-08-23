/// @description Insert description here
// You can write your code in this editor
draw_self();

if draw_gui_inv = true {
	var sprite_GUI = spr_inventory_GUI;
	
	draw_sprite(spr_inventory_GUI, 0, inv_x, inv_y);
	
	//draw_inv_slots
	for(var i = 0; i < inv_slots + 1; i += 1) {
		var sprite_gui_slot_subimage = 2;
			
		if inv[i,0] != noone {
			sprite_gui_slot_subimage = 1;
		}
		
		for (var j = 0; j <= inv_equip_slots; j ++) {
			if inv_equip[j, 5] = i {
				sprite_gui_slot_subimage = 5;
			}
		}
	
			if i = inv_gui_select {
				sprite_gui_slot_subimage = 0;
			}
	draw_sprite(spr_inventory_GUI_slot, sprite_gui_slot_subimage, (inv_x - sprite_get_width(sprite_GUI)/2) + 5*i, (inv_y - sprite_get_height(sprite_GUI)/2));
	//draw_sprite(spr_inventory_GUI_slot, sprite_gui_
	}
	
	//draw equip slots
	for(var i = 0; i < inv_equip_slots + 1; i += 1) {
		var sprite_gui_slot_subimage = 2;
		if inv_equip[i, 0] != noone {
			sprite_gui_slot_subimage = 1;
		}
		draw_sprite(spr_inventory_GUI_slot, sprite_gui_slot_subimage, (inv_x - sprite_get_width(sprite_GUI)/2), inv_y + 5*i);
	}

	///Draw Clothes Slots
	for(var i = 0; i < inv_clothes_slots + 1; i += 1) {
		var sprite_gui_slot_subimage = 2;
		if inv_clothes[i,0] != noone {
			sprite_gui_slot_subimage = 1;
		}
		draw_sprite(spr_inventory_GUI_slot, sprite_gui_slot_subimage, (inv_x - sprite_get_width(sprite_GUI)/2) + 5*i, (inv_y + sprite_get_height(sprite_GUI)/2));
	}
	
	//draw item sprite icon
	var sprite_gui_item_icon;
		sprite_gui_item_icon = inv[inv_gui_select, 1];
	if sprite_gui_item_icon != noone {
		draw_sprite(sprite_gui_item_icon, 0, inv_x, inv_y);
	}
}


