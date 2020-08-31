///player step
scr_check_depth();
//	BUTTON CHECK
script_execute(profile.input_profile);
//	CHECK FOR INPUT AXIS
//	haxis
//	vaxis

add_red = 0;
add_blue = 0;
add_green = 0;

//set inventory gui x and y,					ty qt ;p
inv_x = x;
inv_y = (y -12);

//CHECK DIR


hbox[0].x = x - 1;
hbox[0].y = y - 1;
//dirpoint_x
//dirpoint_y
//dir

//set shader flash for charge
if state_charge_max > 0 {
	if state_charge == state_charge_max + 10 {
		state_charge = state_charge_max;
	}
	var colour = 0;
	if state_charge < state_charge_max {
		colour = state_charge/state_charge_max
	} else if state_charge == state_charge_max {
		colour = 1;
	}
	add_red = colour;
	add_blue = colour;
	add_green = colour;
}
//CHECK AIM
///aim = point_direction(x, y, dirpoint_x, dirpoint_y) ;

//CHECK FACE
//face

//CHECK SPRITE
if keyboard_check_pressed(ord("Y")) {
	hurt_damage = 30;
	hurt_knock_back_vector = 0;
	is_hurt = true;
}

if draw_gui_inv == false {
	if text_box_item_name != noone {
		instance_destroy(text_box_item_name);
	}
}

//MAIN state switching machine
if is_hurt == false {
	script_execute(state);
} else {
	scr_hurt_state(hurt_damage);
}

scr_knockback();
//fix sub pixel movement