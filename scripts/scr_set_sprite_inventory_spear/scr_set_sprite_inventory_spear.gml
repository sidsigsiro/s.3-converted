function scr_set_sprite_inventory_spear() {
	//reset all sprites
	sprite_item_top[0,1] = spr_blank_32x32_25f;
	sprite_item_top[3,1] = spr_blank_32x32_25f;
	sprite_item_top[2,1] = spr_blank_32x32_25f
	sprite_item_top[1,1] = spr_blank_32x32_25f;

	sprite_item_held[0,1] = spr_blank_32x32_25f;
	sprite_item_held[3,1] = spr_blank_32x32_25f;
	sprite_item_held[2,1] = spr_blank_32x32_25f
	sprite_item_held[1,1] = spr_blank_32x32_25f;

	sprite_item_bot[0,1] = spr_blank_32x32_25f;
	sprite_item_bot[3,1] = spr_blank_32x32_25f;
	sprite_item_bot[2,1] = spr_blank_32x32_25f
	sprite_item_bot[1,1] = spr_blank_32x32_25f;



	//set sprites
	sprite_item_held[0,1] = spr_exil_spear_right_spear_held;
	sprite_item_held[3,1] = spr_exil_spear_down_spear_held;
	sprite_item_held[2,1] = spr_exil_spear_left_spear_held
	sprite_item_held[1,1] = spr_blank_32x32_25f;

	sprite_item_mid[0,1] = spr_blank_32x32_25f;
	sprite_item_mid[3,1] = spr_blank_32x32_25f;
	sprite_item_mid[2,1] = spr_blank_32x32_25f;
	sprite_item_mid[1,1] = spr_exil_spear_up_spear_mid;

	//SPEAR CHARGED
	sprite_item_held[0,8] = spr_blank_32x32_25f;
	sprite_item_held[3,8] = spr_blank_32x32_25f;
	sprite_item_held[2,8] = spr_blank_32x32_25f
	sprite_item_held[1,8] = spr_blank_32x32_25f;

	sprite_item_mid[0,8] = spr_blank_32x32_25f;
	sprite_item_mid[3,8] = spr_blank_32x32_25f;
	sprite_item_mid[2,8] = spr_blank_32x32_25f;
	sprite_item_mid[1,8] = spr_blank_32x32_25f;

	sprite_item_held[0,9] = spr_blank_32x32_25f;
	sprite_item_held[3,9] = spr_blank_32x32_25f;
	sprite_item_held[2,9] = spr_blank_32x32_25f
	sprite_item_held[1,9] = spr_blank_32x32_25f;

	sprite_item_mid[0,9] = spr_blank_32x32_25f;
	sprite_item_mid[3,9] = spr_blank_32x32_25f;
	sprite_item_mid[2,9] = spr_blank_32x32_25f;
	sprite_item_mid[1,9] = spr_blank_32x32_25f;




}
