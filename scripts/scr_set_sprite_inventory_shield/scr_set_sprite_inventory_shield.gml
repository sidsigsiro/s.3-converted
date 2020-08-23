function scr_set_sprite_inventory_shield() {
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
	sprite_item_top[0,1] = spr_blank_32x32_25f;
	sprite_item_top[3,1] = spr_wood_shield_down;
	sprite_item_top[2,1] = spr_blank_32x32_25f
	sprite_item_top[1,1] = spr_blank_32x32_25f;

	sprite_item_held[0,1] = spr_wood_shield_right;
	sprite_item_held[3,1] = spr_blank_32x32_25f;
	sprite_item_held[2,1] = spr_wood_shield_left
	sprite_item_held[1,1] = spr_blank_32x32_25f;

	sprite_item_bot[0,1] = spr_blank_32x32_25f;
	sprite_item_bot[3,1] = spr_blank_32x32_25f;
	sprite_item_bot[2,1] = spr_blank_32x32_25f
	sprite_item_bot[1,1] = spr_wood_shield_up;

	//PARRY
	sprite_item_top[0,10] = spr_exil_parry_right_wood_shield;
	sprite_item_top[3,10] = spr_blank_32x32_25f;
	sprite_item_top[2,10]= spr_exil_parry_left_wood_shield;
	sprite_item_top[1,10] = spr_blank_32x32_25f;

	sprite_item_held[0,10] = spr_blank_32x32_25f;
	sprite_item_held[3,10] = spr_exil_parry_up_wood_shield;
	sprite_item_held[2,10] = spr_blank_32x32_25f;
	sprite_item_held[1,10] = spr_exil_parry_down_wood_shield;

	sprite_item_bot[0,10] = spr_blank_32x32_25f;
	sprite_item_bot[3,10] = spr_blank_32x32_25f;
	sprite_item_bot[2,10] = spr_blank_32x32_25f
	sprite_item_bot[1,10] = spr_blank_32x32_25f;


}
