///scr_set_sprite_inventory_bow
function scr_set_sprite_inventory_bow() {

	//set sprites to none

	sprite_item_held[0,6] = spr_blank_32x32_25f;
	sprite_item_held[3,6] = spr_blank_32x32_25f;
	sprite_item_held[2,6] = spr_blank_32x32_25f;
	sprite_item_held[1,6] = spr_blank_32x32_25f;

	sprite_item_bot[0,6] = spr_blank_32x32_25f;
	sprite_item_bot[3,6] = spr_blank_32x32_25f
	sprite_item_bot[2,6] = spr_blank_32x32_25f;
	sprite_item_bot[1,6] = spr_blank_32x32_25f;

	//set sprites

	sprite_item_held[0,6] = spr_exil_bow_right;
	sprite_item_held[3,6] = spr_exil_bow_down;
	sprite_item_held[2,6] = spr_exil_bow_left;
	sprite_item_held[1,6] = spr_blank_32x32_25f;


	sprite_item_bot[0,6] = spr_blank_32x32_25f;
	sprite_item_bot[3,6] = spr_blank_32x32_25f
	sprite_item_bot[2,6] = spr_blank_32x32_25f;
	sprite_item_bot[1,6] = spr_exil_bow_up;


}
