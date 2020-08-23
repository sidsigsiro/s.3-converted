/// @description Insert description here
// You can write your code in this editor

if hbox_count > 1 {
	hbox_0_xmod = lengthdir_x(10, image_angle)
	hbox_0_ymod = lengthdir_y(10, image_angle)
	scr_create_hbox(x + hbox_0_xmod, y + hbox_0_ymod, 1, 1, scr_hbox_hit, 0);
	hbox[0].image_angle = image_angle;
	hbox_count -= 1;
	
	hbox_1_xmod = lengthdir_x(0, image_angle)
	hbox_1_ymod = lengthdir_y(0, image_angle)
	scr_create_hbox(x + hbox_1_xmod, y + hbox_1_ymod, 4, 1, scr_hbox_hit, 1);
	hbox[1].image_angle = image_angle
	hbox_count -= 1;
}

hbox[0].x = x + hbox_0_xmod
hbox[0].y = y + hbox_0_ymod

hbox[1].x = x + hbox_1_xmod
hbox[1].y = y + hbox_1_ymod

