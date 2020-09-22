/// @description Insert description here
// You can write your code in this editor

///check if stamina has changed within the last frame
prev_stam = stam;

if carbs > 0 {
	carbs -= (.002);
}
if fats > 0 {
	fats -= (.002);
}

if water <= 0 {
	water = 0;
}

if proteins <= 0 {
	proteins = 0;
}

if fats <= 0 {
	fats = 0;
}

if hp <= 0 {
	hp = 0;
	with(owner) {
		scr_inv_item_drop_all();
		scr_inv_item_equip_drop_all();
		scr_inv_item_clothes_drop_all();
	}
	instance_destroy(owner.vision_cone);
	instance_destroy(owner.hbox[0]);
	if owner.hbox[1] != noone {
		instance_destroy(owner.hbox[1]);
	}
	instance_destroy(owner);
	instance_destroy();
}