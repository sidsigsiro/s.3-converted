///player step

scr_check_depth();
//	BUTTON CHECK
script_execute(obj_profile_p2.input_profile);
//	CHECK FOR INPUT AXIS
//	haxis
//	vaxis

//set inventory gui x and y,					ty qt ;p
inv_x = x;
inv_y = (y -12);

//CHECK DIR


hbox[0].x = x - 1;
hbox[0].y = y - 1;
//dirpoint_x
//dirpoint_y
//dir

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

//MAIN state switching machine
if is_hurt == false {
	script_execute(state);
} else {
	scr_hurt_state(10);
}

scr_knockback();
//fix sub pixel movement


