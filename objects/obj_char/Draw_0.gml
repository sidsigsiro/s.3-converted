/// @description Insert description here
// You can write your code in this editor



shader_set(shd_shade_rgba_blend);
shader_set_uniform_f(uni_add_red, add_red); //set uniform in shader
shader_set_uniform_f(uni_add_blue, add_blue);
shader_set_uniform_f(uni_add_green, add_green);
shader_set_uniform_f(uni_add_alpha, add_alpha);
//arm bot
draw_sprite_ext(sprite_arm_bot[face,state_num],image_index,x,y,1,1,state_rot_arm,c_white,1);
//CLOTHES arm bot
//bag bot
		
		
//item bot
draw_sprite_ext(sprite_item_bot[face,state_num],image_index,x,y,1,1,state_rot_arm,c_white,1);
//arrow bot
draw_sprite_ext(sprite_arrow_bot[face,state_num],image_index,x,y,1,1,state_rot_arm,c_white,1);
//bag bot
draw_sprite_ext(sprite_bag[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//leg bot
draw_sprite_ext(sprite_leg_bot[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//bag mid
draw_sprite_ext(sprite_bag[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//item mid
draw_sprite_ext(sprite_item_mid[face,state_num],image_index,x,y,1,1,state_rot_arm,c_white,1);
//head bot
draw_sprite_ext(sprite_head_bot[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//hair bot
draw_sprite_ext(sprite_hair[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//hat bot
draw_sprite_ext(sprite_hat[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//sprite pelvis
draw_sprite_ext(sprite_pelvis[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//leg top
draw_sprite_ext(sprite_leg_top[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//pants
draw_sprite_ext(sprite_pants[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//chest
draw_sprite_ext(sprite_chest[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
///shirt
draw_sprite_ext(sprite_shirt[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//item held
draw_sprite_ext(sprite_item_held[face,state_num],image_index,x,y,1,1,state_rot_arm,c_white,1);
//arrow held
draw_sprite_ext(sprite_arrow_held[face,state_num],image_index,x,y,1,1,state_rot_arm,c_white,1);
//arm top
draw_sprite_ext(sprite_arm_top[face,state_num],image_index,x,y,1,1,state_rot_arm,c_white,1);
///shirt_arm_front
draw_sprite_ext(sprite_shirt_arm_top[face,state_num],image_index,x,y,1,1,state_rot_arm,c_white,1);
//head top
draw_sprite_ext(sprite_head_top[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//eyes
draw_sprite_ext(sprite_eyes[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//hair top
draw_sprite_ext(sprite_hair[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//hat top
draw_sprite_ext(sprite_hat[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);

//draw shirt arms on top in special cases
if state_num = 4 {
	if face = 0 or face = 2 {
		draw_sprite_ext(sprite_shirt_arm_top[face,state_num],image_index,x,y,1,1,state_rot_arm,c_white,1);
	}
}
//bag top
draw_sprite_ext(sprite_bag[face,state_num],image_index,x,y,1,1,state_rot,c_white,1);
//item equipped top (draw arms on top in special occasions
draw_sprite_ext(sprite_item_top[face,state_num], image_index, x, y, 1, 1, state_rot_arm, c_white,1);
//item aim
if draw_item_aim = true {
	if state = scr_aim_state {
		var sprite_item_aim = spr_blank_32x32_25f;
		if inv_equip[0, 0] != noone {
			sprite_item_aim = inv_equip[0, 1];
		} else if inv_equip[1, 0] != noone {
			sprite_item_aim = inv_equip[1, 1];
		} else if inv_equip[2, 0] != noone {
			sprite_item_aim = inv_equip[2, 1];
		}
	} else {
		if state_sprite_item_aim != noone {
			sprite_item_aim = state_sprite_item_aim;
		} else {
			sprite_item_aim = spr_blank32x32;
		}
	}
	draw_sprite_ext(sprite_item_aim,image_index, x + face_mod_aim_x, y + face_mod_aim_y, 1, 1, face_mod_aim_rot, c_white, 1);
}
shader_reset();

/*
if state_charge_max > 0 {
	if state_charge = state_charge_max {
		shader_set(shader0)
	} else {
		shader_reset();
	}
}*/


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
			if inv_equip[j, 2] = scr_bow_state and inv_equip[j, 5] = i {
				sprite_gui_slot_subimage = 5;
			}
		}
	
		if inv_gui_select_menu = 0 {
			if i = inv_gui_select {
				if inv_is_swapping = false {
					sprite_gui_slot_subimage = 0;
				} else {
					sprite_gui_slot_subimage = 7;
				}
			}
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
		if inv_gui_select_menu = 1 {
			if i = inv_gui_select {
				if inv_is_swapping = false {
					sprite_gui_slot_subimage = 0;
				} else {
					sprite_gui_slot_subimage = 7;
				}
			}
		}
		draw_sprite(spr_inventory_GUI_slot, sprite_gui_slot_subimage, (inv_x - sprite_get_width(sprite_GUI)/2), inv_y + 5*i);
	}

	///Draw Clothes Slots
	for(var i = 0; i < inv_clothes_slots + 1; i += 1) {
		var sprite_gui_slot_subimage = 2;
		if inv_clothes[i,0] != noone {
			sprite_gui_slot_subimage = 1;
		}
		if inv_gui_select_menu= 2 {
			if i = inv_gui_select {
				if inv_is_swapping = false {
					sprite_gui_slot_subimage = 0;
				} else {
					sprite_gui_slot_subimage = 7;
				}
			}
		}
		draw_sprite(spr_inventory_GUI_slot, sprite_gui_slot_subimage, (inv_x - sprite_get_width(sprite_GUI)/2) + 5*i, (inv_y + sprite_get_height(sprite_GUI)/2));
	}
	
	
	//draw item sprite icon
	var sprite_gui_item_icon;
	var item_name;
	if inv_gui_select_menu = 0 {
		item_name = inv[inv_gui_select, 0];
		sprite_gui_item_icon = inv[inv_gui_select, 1];
	}
	if inv_gui_select_menu = 1 {
		item_name = inv_equip[inv_gui_select, 0];
		sprite_gui_item_icon = inv_equip[inv_gui_select, 1];
	}
	if inv_gui_select_menu = 2 {
		item_name = inv_clothes[inv_gui_select, 0];
		sprite_gui_item_icon = inv_clothes[inv_gui_select, 1];
	}
	if sprite_gui_item_icon != noone {
		draw_sprite(sprite_gui_item_icon, 0, inv_x, inv_y);
	}
	if text_box_item_name != noone {
		if item_name = noone {
			text_box_item_name.my_text[0] = "";
		} else {
			text_box_item_name.my_text[0] = item_name;
		}
	}
	if text_box_menu_actions != noone {
		//draw selection arrow buttons when selecting a menu action
		var r_arrow, l_arrow
		r_arrow = draw_sprite_ext(spr_inventory_GUI_arrow, 0, inv_x + 19, inv_y, 1, 1, 0, c_white, 1);
		l_arrow = draw_sprite_ext(spr_inventory_GUI_arrow, 0, inv_x - 22, inv_y, - 1, 1, 0, c_white, 1);
		
	}
			
}
	///WHEN ANIMATING
	//set sprite number of each state of character
	//set state of character
	//set facing direction of character
	
